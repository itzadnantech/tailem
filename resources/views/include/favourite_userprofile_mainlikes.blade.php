<?php  
    

	if($user_id=="")
	{
		echo "Please sign in first";
		exit;
	}

	if($prod_id==$user_id)
	{
		echo "aa";
		//echo "You cannot like your own profile";
		exit;
	}
	
	// $prod_id = $_REQUEST['prod_id'];
	// $sr_no	= $_REQUEST['sr_no'];
	// $db_user_name	= urlencode($_REQUEST['db_user_name']);
	

	$qry = "select id from tbl_likes where like_type = 'profile' AND like_id = '$prod_id'";
	$counter_main = array();
	$counter_main = \App\Models\Songs::GetRawData($qry);
	if ($counter_main) {
	$counter_main = count($counter_main);
	} else {
	$counter_main = 0;
	}
	 
	$qry =  "select id from tbl_likes where like_from_user_id = '".$user_id."' AND like_type = 'profile' AND like_id = '$prod_id'";
	$counter = array();
	$counter = \App\Models\Songs::GetRawData($qry);
	if ($counter) {
	$counter = count($counter);
	} else {
	$counter = 0;
	}
	if($counter==0)
	{
		$date = date("Y-m-d");
		$user_id  =  $user_id;
	 	$sql = "INSERT INTO tbl_likes (like_id, like_type, date, like_from_user_id,like_receive_user) VALUES ($prod_id, 'profile', '$date', $user_id,$prod_id)";
	 	$rsd = \App\Models\Songs::GetRawData($sql);		
		?><a href="javascript:;" onClick="add_in_favourite_user_profile_mainlist_new('<?php echo $prod_id;?>','<?php echo $sr_no;?>','<?php echo $db_user_name;?>')" class="like link-disable" ><i class="fa fa-heart" style="font-size:20px; color:#d73b3b; "></i></a><a href="<?php echo SERVER_ROOTPATH;?>detail_profile.php?user=<?php echo $db_user_name;?>&critaria=1" data-toggle="modal" data-target="#profile_modal" data-title="" class="like link-disable" style="color:#fff;"> <?php echo $counter_main + 1;?></a>		
		<?php
	}
else
{
	\App\Models\Songs::GetRawData("Delete from tbl_likes where like_from_user_id = '".$user_id."' AND like_id = $prod_id AND like_type = 'profile'" );
	?><a href="javascript:;" onClick="add_in_favourite_user_profile_mainlist_new('<?php echo $prod_id;?>','<?php echo $sr_no;?>','<?php echo $db_user_name;?>')" class="like link-disable" ><i class="fa fa-heart-o" style="font-size:20px; color:#d73b3b; "></i></a><a href="<?php echo SERVER_ROOTPATH;?>detail_profile.php?user=<?php echo $db_user_name;?>&critaria=1" data-toggle="modal" data-target="#profile_modal" data-title="" class="like link-disable" style="color:#fff;"> <?php echo $counter_main - 1;?></a>   
    <?php
}
	
?>
