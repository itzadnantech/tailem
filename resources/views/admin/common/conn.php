<?php
	include("database.php");
	
	// ==================================================================
	//	The Main Class

	class db {

		var $debug_called;
		var $vardump_called;
		var $show_errors = true;
		private static $_instance; 
		private $_connection;
		public $dbh;
		// ==================================================================
		//	DB Constructor - connects to the server and selects a database

		public static function getInstance() {
		
			if(!self::$_instance) { // If no instance then make one
				self::$_instance = new self();
			}
			
		
			return self::$_instance;
		}
		
		
		private function __construct() {
			
			$this->_connection = new mysqli(ACSQL_DB_HOST,ACSQL_DB_USER, 
				ACSQL_DB_PASSWORD,ACSQL_DB_NAME);
			$this->dbh =	$this->_connection ;
		
			// Error handling
			if(mysqli_connect_error()) {
				trigger_error("Failed to conencto to MySQL: " . mysql_connect_error(),
					 E_USER_ERROR);
			}
		}
		
		
		public function getConnection() {
			
				return $this->_connection;
		}
		
		
		// ==================================================================
		//	Select a DB (if another one needs to be selected)

		function select($db)
		{
			if ( !@mysqli_select_db($this->dbh, $db))
			{
				$this->print_error("<ol><b>Error selecting database <u>$db</u>!</b><li>Are you sure it exists?<li>Are you sure there is a valid database connection?</ol>");
			}
		}

		// ====================================================================
		//	Format a string correctly for safe insert under all PHP conditions

		function escape($str)
		{
			return mysqli_escape_string($this->dbh, stripslashes($str));
		}

		// ==================================================================
		//	Print SQL/DB error.

		function print_error($str = "")
		{
			
			// All erros go to the global error array $ACSQL_ERROR..
			global $ACSQL_ERROR;

			// If no special error string then use mysql default..
			if ( !$str ) $str = mysqli_error($this->dbh);

			// Log this error to the global array..
			$ACSQL_ERROR[] = array
							(
								"query" => $this->last_query,
								"error_str"  => $str
							);

			// Is error output turned on or not..
			if ( $this->show_errors )
			{
				// If there is an error then take note of it
				print "<blockquote><font face=arial size=2 color=ff0000>";
				print "<b>SQL/DB Error --</b> ";
				print "[<font color=000077>$str</font>]";
				print "</font></blockquote>";
				return true;
			}
			else
			{
				return false;
			}

		}

		// ==================================================================
		//	Turn error handling on or off..

		function show_errors()
		{
			$this->show_errors = true;
		}

		function hide_errors()
		{
			$this->show_errors = false;
		}

		// ==================================================================
		//	Kill cached query results

		function flush()
		{

			// Get rid of these
			$this->last_result = null;
			$this->col_info = null;
			$this->last_query = null;

		}

		// ==================================================================
		//	Basic Query	- see docs for more detail

		function query($query)
		{

			// Flush cached values..
			$this->flush();

			// Log how the function was called
			$this->func_call = "\$db->query(\"$query\")";

			// Keep track of the last query for debug..
			$this->last_query = $query;

			// Perform the query via std mysql_query function..
			$this->result = mysqli_query($this->dbh, $query);

			// If there was an insert, delete or update see how many rows were affected
			// (Also, If there was an insert take note of the insert_id
			$query_type = array("insert","delete","update");

			// loop through the above array
			foreach ( $query_type as $word )
			{
				// This is true if the query starts with insert, delete or update
				if ( preg_match("/$word /i",$query) )
				{
					$this->rows_affected = mysqli_affected_rows($this->dbh);

					// This gets the insert ID
					if ( $word == "insert" )
					{
						$this->insert_id = mysqli_insert_id($this->dbh);
					}

					$this->result = false;
				}

			}

			if ( mysqli_error($this->dbh) )
			{

				// If there is an error then take note of it..
				$this->print_error();

			}
			else
			{

				// In other words if this was a select statement..
				if ( $this->result )
				{

					// =======================================================
					// Take note of column info

					$i=0;
					while ($i < @mysqli_num_fields($this->result))
					{
						$this->col_info[$i] = @mysqli_fetch_field($this->result);
						$i++;
					}

					// =======================================================
					// Store Query Results

					$i=0;
					while ( $row = @mysqli_fetch_object($this->result) )
					{

						// Store relults as an objects within main array
						$this->last_result[$i] = $row;

						$i++;
					}

					// Log number of rows the query returned
					$this->num_rows = $i;

					@mysqli_free_result($this->result);


					// If there were results then return true for $db->query
					if ( $i )
					{
						return true;
					}
					else
					{
						return false;
					}

				}
				else
				{
					// Update insert etc. was good..
					return true;
				}
			}

			return false;
		}

		// ==================================================================
		//	Get one variable from the DB - see docs for more detail

		function get_var($query=null,$x=0,$y=0)
		{

			// Log how the function was called
			$this->func_call = "\$db->get_var(\"$query\",$x,$y)";

			// If there is a query then perform it if not then use cached results..
			if ( $query )
			{
				$this->query($query);
			}

			// Extract var out of cached results based x,y vals
			if ( $this->last_result[$y] )
			{
				$values = array_values(get_object_vars($this->last_result[$y]));
			}

			// If there is a value return it else return null
			return (isset($values[$x]) && $values[$x]!=='')?$values[$x]:null;
		}

		// ==================================================================
		//	Get one row from the DB - see docs for more detail

		function get_row($query=null,$output=OBJECT,$y=0)
		{

			// Log how the function was called
			$this->func_call = "\$db->get_row(\"$query\",$output,$y)";

			// If there is a query then perform it if not then use cached results..
			if ( $query )
			{
				$this->query($query);
			}

			// If the output is an object then return object using the row offset..
			if ( $output == OBJECT )
			{
				return $this->last_result[$y]?$this->last_result[$y]:null;
			}
			// If the output is an associative array then return row as such..
			elseif ( $output == ARRAY_A )
			{
				return $this->last_result[$y]?get_object_vars($this->last_result[$y]):null;
			}
			// If the output is an numerical array then return row as such..
			elseif ( $output == ARRAY_N )
			{
				return $this->last_result[$y]?array_values(get_object_vars($this->last_result[$y])):null;
			}
			// If invalid output type was specified..
			else
			{
				$this->print_error(" \$db->get_row(string query, output type, int offset) -- Output type must be one of: OBJECT, ARRAY_A, ARRAY_N");
			}

			return null;
		}

		// ==================================================================
		//	Function to get 1 column from the cached result set based in X index
		// se docs for usage and info

		function get_col($query=null,$x=0)
		{

			// If there is a query then perform it if not then use cached results..
			if ( $query )
			{
				$this->query($query);
			}

			$new_array = [];

			// Extract the column values
			for ( $i=0; $i < count($this->last_result); $i++ )
			{
				$new_array[$i] = $this->get_var(null,$x,$i);
			}

			return $new_array;
		}

		// ==================================================================
		// Return the the query as a result set - see docs for more details

		function get_results($query=null, $output = OBJECT)
		{

			// Log how the function was called
			$this->func_call = "\$db->get_results(\"$query\", $output)";

			// If there is a query then perform it if not then use cached results..
			if ( $query )
			{
				$this->query($query);
			}

			// Send back array of objects. Each row is an object
			if ( $output == OBJECT )
			{
				return $this->last_result;
			}
			elseif ( $output == ARRAY_A || $output == ARRAY_N )
			{
				if ( $this->last_result )
				{
					$i=0;
					$new_array = [];

					foreach( $this->last_result as $row )
					{

						$new_array[$i] = get_object_vars($row);

						if ( $output == ARRAY_N )
						{
							$new_array[$i] = array_values($new_array[$i]);
						}

						$i++;
					}

					return $new_array;
				}
				else
				{
					return null;
				}
			}

			return null;
		}


		// ==================================================================
		// Function to get column meta data info pertaining to the last query
		// see docs for more info and usage

		function get_col_info($info_type="name",$col_offset=-1)
		{

			if ( $this->col_info )
			{
				if ( $col_offset == -1 )
				{
					$i=0;
					$new_array = [];

					foreach($this->col_info as $col )
					{
						$new_array[$i] = $col->{$info_type};
						$i++;
					}
					return $new_array;
				}
				else
				{
					return $this->col_info[$col_offset]->{$info_type};
				}

			}

			return [];
		}


		// ==================================================================
		// Dumps the contents of any input variable to screen in a nicely
		// formatted and easy to understand way - any type: Object, Var or Array

		function vardump($mixed)
		{

			echo "<blockquote><font color=000090>";
			echo "<pre><font face=arial>";

			if ( ! $this->vardump_called )
			{
				echo "<font color=800080><b>ACSQL</b> (v".ACSQL_VERSION.") <b>Variable Dump..</b></font>\n\n";
			}

			$var_type = gettype ($mixed);
			print_r(($mixed?$mixed:"<font color=red>No Value / False</font>"));
			echo "\n\n<b>Type:</b> " . ucfirst($var_type) . "\n";
			echo "<b>Last Query:</b> ".($this->last_query?$this->last_query:"NULL")."\n";
			echo "<b>Last Function Call:</b> " . ($this->func_call?$this->func_call:"None")."\n";
			echo "<b>Last Rows Returned:</b> ".count($this->last_result)."\n";
			echo "</font></pre></font></blockquote><font size=1 face=arial color=aaaaaa>www.armeniansingles.com</font>";
			echo "\n<hr size=1 noshade color=dddddd>";

			$this->vardump_called = true;

		}

		// Alias for the above function
		function dumpvar($mixed)
		{
			$this->vardump($mixed);
		}

		// ==================================================================
		// Displays the last query string that was sent to the database & a
		// table listing results (if there were any).
		// (abstracted into a seperate file to save server overhead).

		function debug()
		{

			echo "<blockquote>";

			// Only show ACSQL credits once..
			if ( ! $this->debug_called )
			{
				echo "<font color=800080 face=arial size=2><b>ACSQL</b> (v".ACSQL_VERSION.") <b>Debug..</b></font><p>\n";
			}
			echo "<font face=arial size=2 color=000099><b>Query --</b> ";
			echo "[<font color=000000><b>$this->last_query</b></font>]</font><p>";

				echo "<font face=arial size=2 color=000099><b>Query Result..</b></font>";
				echo "<blockquote>";

			if ( $this->col_info )
			{

				// =====================================================
				// Results top rows

				echo "<table cellpadding=5 cellspacing=1 bgcolor=555555>";
				echo "<tr bgcolor=eeeeee><td nowrap valign=bottom><font color=555599 face=arial size=2><b>(row)</b></font></td>";


				for ( $i=0; $i < count($this->col_info); $i++ )
				{
					echo "<td nowrap align=left valign=top><font size=1 color=555599 face=arial>{$this->col_info[$i]->type} {$this->col_info[$i]->max_length}</font><br><font size=2><b>{$this->col_info[$i]->name}</b></font></td>";
				}

				echo "</tr>";

				// ======================================================
				// print main results

			if ( $this->last_result )
			{

				$i=0;
				foreach ( $this->get_results(null,ARRAY_N) as $one_row )
				{
					$i++;
					echo "<tr bgcolor=ffffff><td bgcolor=eeeeee nowrap align=middle><font size=2 color=555599 face=arial>$i</font></td>";

					foreach ( $one_row as $item )
					{
						echo "<td nowrap><font face=arial size=2>$item</font></td>";
					}

					echo "</tr>";
				}

			} // if last result
			else
			{
				echo "<tr bgcolor=ffffff><td colspan=".(count($this->col_info)+1)."><font face=arial size=2>No Results</font></td></tr>";
			}

			echo "</table>";

			} // if col_info
			else
			{
				echo "<font face=arial size=2>No Results</font>";
			}

			echo "</blockquote></blockquote><font size=1 face=arial color=aaaaaa>www.ratetome.com</font><hr noshade color=dddddd size=1>";


			$this->debug_called = true;
		}
}

$db = db::getInstance();
$db->getConnection();

$db->query("SET time_zone = '-8:00'");
?>