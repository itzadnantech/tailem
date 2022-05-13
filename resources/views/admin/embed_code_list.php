<?php 
include("includes/top.php");
include("common/security.php"); 
/*================== Search Filter Start Here=================*/
if(isset($_POST['filter']))

{

	$sess_where = "";

	if($_REQUEST['embed_code_title']!="")

	{

		 $sess_where .= " and embed_code_title like \"%".trim($_REQUEST['embed_code_title'])."%\" ";

		 $_SESSION['embed_code_title_sess'] = trim($_REQUEST['embed_code_title']);

	}

	else

	{

		unset($_SESSION['embed_code_title_sess']);

	}

	if($_REQUEST['embed_cat_id']!="")

	{

		 $sess_where .= " and embed_cat_id = '".$_REQUEST['embed_cat_id']."' ";

		 $_SESSION['embed_cat_id_session'] = trim($_REQUEST['embed_cat_id']);

	}

	else

	{

		unset($_SESSION['embed_cat_id_session']);

	}

		

	if($_REQUEST['embed_cat_status'] != "")

	{

		$sess_where .= " and status = '".$_REQUEST['embed_cat_status']."'";

		$_SESSION['embed_cat_status_sess'] = $_REQUEST['embed_cat_status'];

	}

	else

	{

		unset($_SESSION['embed_cat_status_sess']);

	}

	$_SESSION['embed_code_sess'] = $sess_where;

}

 $session_where = $_SESSION['embed_code_sess'];

if(isset($_POST['Reset']))

{

	unset($_SESSION['embed_code_title_sess']);

	$_SESSION['embed_code_title_sess']="";

	

	unset($_SESSION['embed_cat_id_session']);

	$_SESSION['embed_cat_id_session']="";

	

	unset($_SESSION['embed_cat_status_sess']);

	$_SESSION['embed_cat_status_sess']="";



	unset($_SESSION['embed_code_sess']);

	$_SESSION['embed_code_sess']="";

	

	header("Location:embed_code_list.php");

}

/*================== Search Filter End Here=================*/

//---------- Ordering ----------//

switch($sortby)
{
	case "title_desc":
		$orderby	= " ORDER BY embed_code_title desc";
	break;
	case "title_asc":
		$orderby	= " ORDER BY embed_code_title asc";
	break;

	case "review_topic_desc":
		$orderby	= " ORDER BY embed_cat_id desc";
	break;
	case "review_topic_asc":
		$orderby	= " ORDER BY embed_cat_id asc";
	break;
	case "statusdesc":
		$orderby	= " ORDER BY status desc";
	break;
	case "statusasc":
		$orderby	= " ORDER BY status asc";
	break;		
	default:
		$orderby = "ORDER BY embed_code_id asc";
	break;
}

if(isset($status) && !empty($status))
{
	$status		=	base64_decode($status);
	$status_id	=	base64_decode($status_id);
	if($status == 1)
	{
		$sqlquery	=	"update tbl_product_embed_code set status='$status' where embed_code_id='$status_id'";
	}
	else
	{
		$sqlquery	=	"update tbl_product_embed_code set status='$status' where embed_code_id='$status_id'";
	}
	$db->query($sqlquery);

	header("Location:embed_code_list.php?msg=$update_ok_msg&case=1");
	exit;
}

?>

<html>

<head>

<title>Prdoduct Embed Code Listing</title>

<?php include("common/header.php");?>

<script language="javascript" type="text/javascript">

function toggleChecked(status)

{

	$(".check-all").each( function() {

		$(this).attr("checked",status);

	})

}



function multiple_action(frm_id) // for changing multiple status or multiple delete 

{

	var conBox = confirm("Are you sure,you want to Perform this Action?");

	if(conBox)

	{

		document.forms[frm_id].submit();

	}

	else

	{

		return false;

	}		  

}

</script>

</head>

<body>



<table style="border-collapse: collapse;" border="0" cellpadding="0" width="100%" height="100%">

  

    <tr>

        <td style="background:#1F3C5C; background-repeat:repeat-x; height:60px;" height="60">

            <?php include("common/top_right_menu.php"); ?>

        </td>

    </tr>

    <tr>

      <td valign="top"><table border="0" width="100%">

            <tr>

              <td width="10">&nbsp;</td>

              <td><!-- End page header -->

                <!-- End pageheader -->

                <!-- Start home -->

                <div class="BodyContainer">

                  <table border="0" cellpadding="0" cellspacing="0" width="100%">

                      <tr>

                        <td class="heading1">Prdoduct Embed Code Listing</td>

                      </tr>

                      <tr>

                        <td class="body"><table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">

                              <tr>

                                <td><a href="<?php echo SERVER_ADMIN_PATH;?>index.php">Home</a> &raquo; <a>Prdoduct Embed Code Listing</a></td>

                              </tr>

                              <tr>

                                <td>

                                	<form name="search_form" id="search_form" method="post" action="">

                                    <table border="0" cellpadding="0" cellspacing="0" align="center" width="500" 

                                    style="border:1px solid #000000; padding:10px;">

                                        <tbody>

                                            <tr>

                                                <td class="SmallFieldLabelnew font_bold" align="center" colspan="2">

                                                    Search Prdoduct Embed Code

                                                </td>

                                            </tr>

                                            <tr height="30">

                                                <td class="SmallFieldLabelnew font_bold" align="left" width="150">

                                                Title

                                                </td>

                                                <td align="center">

                                                    <input name="embed_code_title" id="embed_code_title" type="text" class="Field300" 

                                                    value="<?php echo $_SESSION['embed_code_title_sess']; ?>" />

                                                </td>

                                            </tr>

                                            <tr height="30">

                                                <td class="SmallFieldLabelnew font_bold" align="left" width="150">

                                                Review Topic

                                                </td>

                                                <td align="center">

                                                    <select name="embed_cat_id" id="embed_cat_id" class="Field300">

                                                    <option value="">--Please Select Review Topic--</option>	

                                                    <?php															

													$sql_qry="Select cat_id,cat_name,parent_id from tbl_categories where level='5'";

													$sql_arr = $db->get_results($sql_qry,ARRAY_A);

													if($sql_arr)

													{

														foreach($sql_arr as $val)

														{

															$cat_id    = $val['cat_id'];
															$parent_id = $val['parent_id'];

															$cat_name = stripcslashes(html_entity_decode($val['cat_name']));		
															//include("cat_hierarchy.php");

																if($_SESSION['embed_cat_id_session']==$cat_id)

																{

																	$selected= "selected='selected'";

																}

																else

																{

																	$selected= "";

																}

														?>

<option value="<?php echo $cat_id;?>" <?php echo $selected;?>> <?php echo $cat_name;?></option>
															<?php

															}

														}

                                                        ?>

                                                 </select>

                                                </td>

                                            </tr>

                                            <tr height="30">

                                                <td class="SmallFieldLabelnew font_bold" align="left"  width="150"> 

                                                	Status

                                                </td>

                                                <td align="center">

                                                <select name="embed_cat_status" id="embed_cat_status" class="Field300">

                                                    <option value=""> ------- Please Select Status ------- </option>

                                                    <option value="1" <?php if($_SESSION['embed_cat_status_sess'] == '1'){ echo 'selected="selected"';}?>>Active</option>

                                                    <option value="0" <?php if($_SESSION['embed_cat_status_sess'] == '0'){ echo 'selected="selected"';}?>>Block</option>	

                                                 </select>

                                                 </td>

                                            </tr>

                                            

                                            <tr height="30">

                                                <td class="SmallFieldLabelnew font_bold" align="left"  width="150">&nbsp;</td>

                                                <td align="center">

                                                    <input type="submit" id="filter" name="filter" value="Search">

                                                    <input type="submit" id="Reset" name="Reset" value="Reset">

                                                </td>

                                            </tr>

                                        </tbody>

                                    </table>

                                    </form>

                                </td>

                              </tr>

                              <tr>

                                <td>

                                <table cellpadding="0" cellspacing="0" class="Panel">

                                    <tbody>

                                      <?php if(isset($msg) && $msg!=""){ ?>

                                      <tr>

                                        <td colspan="5">

                                            <table border="0" cellpadding="0" cellspacing="0" class="Message">

                                              <tbody>

											

                                                <tr>

                                                  <td width="20"><?php if($case==1){ ?>

                                                    <img src="images/success_icon.png" vspace="5" width="18" height="18" hspace="10">

                                                    <?php } ?>

                                                    <?php if($case==2){ ?>

                                                    <img src="images/warning_icon.png" vspace="5" width="18" height="18" hspace="10">

                                                    <?php } ?>

                                                    <?php if($case==3){ ?>

                                                    <img src="images/error_icon.png" vspace="5" width="18" height="18" hspace="10">

                                                    <?php } ?>                                                  </td>

                                                  <td width="100%"><?php echo base64_decode($msg); ?></td>

                                                </tr>

                                              </tbody>

                                            </table>

										</td>

                                      </tr>

                                      <?php } ?>

                                      

									  <tr>

										  <td colspan="5" width="105" align="right" valign="middle" id="addsymbol" >

											<a href="<?php echo SERVER_ADMIN_PATH; ?>addedit_embed_code.php"><img src="images/add.png" border="0" title="Add New Product"></a>

                                          </td>

									  </tr>

									  

									  <tr><td colspan="5">&nbsp;</td></tr>

                                      <tr>

                                        <td width="30" id="Heading_list">Sr #</td>

                                        <td width="225" id="Heading_list">

                                        <?php if($sortby == 'title_desc'){?>

                                        <a href="embed_code_list.php?sortby=title_asc&page=<?php echo $page;?>" class="link_class">Title</a>

                                        <?php }else{?>

											<a href="embed_code_list.php?sortby=title_desc&page=<?php echo $page;?>" class="link_class">Title</a>

                                        <?php }?>

                                        </td>

										<td width="225" id="Heading_list">

                                        <?php if($sortby == 'review_topic_desc'){?>

                                        <a href="embed_code_list.php?sortby=review_topic_asc&page=<?php echo $page;?>" class="link_class">Review Topic</a>

                                        <?php }else{?>

											<a href="embed_code_list.php?sortby=review_topic_desc&page=<?php echo $page;?>" class="link_class">Review Topic</a>

                                        <?php }?>

                                        </td>

                                        <td width="70" id="Heading_list">

                                        <?php if($sortby == 'statusdesc'){?>

                                        <a href="embed_code_list.php?sortby=statusasc&page=<?php echo $page;?>" class="link_class">Status</a>

                                        <?php }else{?>

                                        <a href="embed_code_list.php?sortby=statusdesc&page=<?php echo $page;?>" class="link_class">Status</a>

                                        <?php }?>

                                        </td>

                                        <td width="97" id="Heading_list" class="righttd_border">&nbsp;&nbsp;&nbsp;<input class="check-all" type="checkbox" onClick="toggleChecked(this.checked);" /> Action</td>

                                      </tr>

                                      

									  <form action="<?php echo SERVER_ADMIN_PATH;?>process/embed_code_action.php" method="post" id="video_form">

									  <?php

											

											//============================================================

											//PAGGING CODE STARTS HERE

											$qry_count_mypro = "SELECT embed_code_id FROM tbl_product_embed_code where 1=1 $session_where  $orderby";

											$res_count_mypro = mysqli_query($db->dbh, $qry_count_mypro);

												

											$targetpage = "embed_code_list.php"; //your file name  (the name of this file)

											

											$total_pages = mysqli_num_rows($res_count_mypro);

											

											$limit = 20; 					//how many items to show per page

											$page = $_GET['page'];

											if($page) 

												$start = ($page - 1) * $limit;//first item to display on this page

											else

												$start = 0;					//if no page var is given, set start to 0

											//PAGGING CODE ENDS HERE	

											//============================================================

											

											if(isset($page) && $page!="")

											{

												$sr_no = ($page*$limit)-$limit;

											}

											else

											{

												$sr_no = 0;

											}

											

											$c=1;



										$cat_list="select * from tbl_product_embed_code where 1=1  $session_where $orderby LIMIT $start, $limit";	

										$cat_list_arr	=	$db->get_results($cat_list,ARRAY_A);

										

										if(isset($cat_list_arr))

										{

											foreach($cat_list_arr as $val)

											{
												$embed_code_id	    = $val['embed_code_id'];	
												$embed_cat_id = $val['embed_cat_id'];	
												$embed_code  = stripslashes(html_entity_decode($val['embed_code']));
												$embed_code_title   = stripslashes(html_entity_decode($val['embed_code_title']));
												$status         = $val['status'];
												$embed_code  = wordwrap($embed_code,100," ",true);
												$embed_code_title   = wordwrap($embed_code_title,100," ",true);
												if($c%2==0)
												{
													$bgcolor = "#FEFEE4";
												}
												else
												{
													$bgcolor = "#FFFFFF";	
												}
												$subcat_qry  = "select cat_name as review_topic from tbl_categories where cat_id='".$embed_cat_id."' ";	
												$catval	 = $db->get_row($subcat_qry,ARRAY_A);
												$review_topic = stripslashes(html_entity_decode($catval['review_topic']));
												$review_topic = wordwrap($review_topic,100," ",true);
												$c++;
												$sr_no++;
										?>
									  <tr bgcolor="<?php echo $bgcolor; ?>" onMouseOver="changebackcolor_hover('row<?php echo $embed_code_id;?>')" onMouseOut="changebackcolor_blur('row<?php echo $embed_code_id;?>')" id="row<?php echo $embed_code_id;?>">
                                       <td nowrap="nowrap" class="SmallFieldLabel" width="30"><?php echo $sr_no;?></td>
                                       <td nowrap="nowrap" class="SmallFieldLabel" width="225"><?php echo $embed_code_title;?></td>
                                       <td nowrap="nowrap" class="SmallFieldLabel" width="225"><?php echo $review_topic;?></td>
                                        <td nowrap="nowrap" class="SmallFieldLabel" width="70">

										<?php 

										if($status==0)

										{

											echo "Blocked"; 

										}

										if($status==1)

										{

											echo "Active"; 

										}?>

										  &nbsp;&nbsp;&nbsp;

										  <?php

											if($status==0)

											{

												echo '<a href="embed_code_list.php?status='.base64_encode(1).'&status_id='.base64_encode($embed_code_id).'"><img src="images/disable.gif" border="0" class="Action" title="Activate"></a>'; 

											}

											if($status==1)

											{

												echo '<a href="embed_code_list.php?status='.base64_encode(0).'&status_id='.base64_encode($embed_code_id).'"><img src="images/enable.gif" border="0" class="Action" title="Blocked"></a>'; 

											}

										  ?>

										  </td>

                                        <td nowrap="nowrap" class="SmallFieldLabel righttd_border" width="97"> 

    &nbsp;&nbsp; <input type="checkbox" class="check-all" name="embed_code_ids[]" id="embed_code_ids[]" value="<?php echo base64_encode($embed_code_id);?>" style="margin-top:-5px;" />

										&nbsp;&nbsp;

                                        <?php

										if($top_categories_module_add=='Yes')

										{

										?>	

                                        <a href="addedit_embed_code.php?edit_id=<?php echo base64_encode($embed_code_id);?>"><img src="images/edit.gif" border="0" title="Edit" class="Action"></a>

                                        <?php

										}

										?>

										<?php

										if($top_categories_module_delete=='Yes')

										{

										?>

                                        &nbsp; &nbsp;

                                        <a href="javascript:;" onClick="delete_product_embed_code('<?php echo $embed_code_id;?>')"><img src="images/delet.gif" border="0" title="Delete User" class="Action" ></a>

                                        <?php

										}

										?>

                                        </td>

                                      </tr>

                                      <?php

											}

										}

										else

										{

									?>

                                      

									  <tr>

                                        <td colspan="5" align="center" nowrap="nowrap" class="SmallFieldLabel righttd_border" style="font-weight:bold; color:#FF0000;"> NO RECORD FOUND!</td>

                                      </tr>

                                      <?php	

										}

									  ?>

                                      <?php

									  if($total_pages > 0)

									  {

									  ?>

									  <tr>

                                        <td colspan="5" nowrap="nowrap" class="SmallFieldLabel righttd_border">

                                        <span style="float:right; padding-bottom:10px; margin-right:8px;">

                                            <select name="dropdown" onChange="multiple_action('video_form');">

                                                <option value="">Choose an action...</option>

                                                <option value="Active">Active</option>

                                                <option value="Inactive">Inactive</option>

                                                <?php

												if($top_categories_module_delete=='Yes')

												{

												?>

                                                	<option value="Delete">Delete</option>

                                                <?php

												}

												?>

                                            </select>

                                        </span>

                                        </td>

                                      </tr>

                                      <?php

									  }

									  ?>

									  <tr>

                                        <td colspan="5" align="center" valign="middle"><?php include("common/paging-playlist.php"); ?></td>

                                      </tr>

									  </form>

                                    

                                </table>

                                

                                </td>

                              </tr>

                              <tr>

                                <td>&nbsp;</td>

                              </tr>

                              <tr>

                                <td>&nbsp;</td>

                              </tr>

                          </table></td>

                      </tr>

                  </table>

                </div>

                <!-- End home -->

                <!-- Start pagefooter -->

              </td>

              <td width="10">&nbsp;</td>

            </tr>

          </tbody>

        </table></td>

    </tr>

	

    <tr>

      <td height="20"><?php include("common/footer.php");?></td>

    </tr>

  </tbody>

</table>

<!-- End pagefooter -->

</body>

</html>

