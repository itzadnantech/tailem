<?php
include("../includes/top.php");
include(dirname(dirname(__FILE__))."/common/thumbnail.class.php");

if(isset($_POST)) 
{
	$path= '../../site_upload/category_images/';
	$errorstr="";
	$case = 1;
	$cat_name  	  		 = trim($_REQUEST['cat_name']);
	$parent_id    		 = trim($_REQUEST['parent_id']);
	$search_label 		 = trim($_REQUEST['search_label']);
	$search_name  		 = trim($_REQUEST['search_name']);
	$image_name   		 = $_FILES["image_name"]['name'];
	$description  		 = trim($_REQUEST['description']);
	$category_video_code = trim($_REQUEST['category_video_code']);
	$category_embed_code = trim($_REQUEST['category_embed_code']);
	$first_image    = $_FILES["first_image"]['name'];
	$second_image    = $_FILES["second_image"]['name'];
	$third_image    = $_FILES["third_image"]['name'];
	$more_info_data = trim($_REQUEST['more_info_data']);
	$mobile_embed_code = trim($_REQUEST['mobile_embed_code']);
	
	$level2_cat_id = trim($_REQUEST['level2_cat_id']);
	$level3_cat_id = trim($_REQUEST['level3_cat_id']);
	$level4_cat_id = trim($_REQUEST['level4_cat_id']);
	if($cat_name == "")
	{
		$errorstr .="Please Enter Category Name\n";
		$case = 0;
	}
	else
	{
		$chk_name_qry ='select cat_name as chk_name from tbl_categories where cat_name  = \''.$cat_name.'\' and 
		parent_id="'.$parent_id.'" ';
		$chk_name_arr = $db->get_row($chk_name_qry, ARRAY_A);
		$chk_name     = $chk_name_arr['chk_name'];	
		if($chk_name!="")
		{
			$errorstr .="This Category Name already Exsist\n";
			$case = 0;
		}
	}
	if($parent_id == "")
	{
		$errorstr .="Please Select Main Category\n";
		$case = 0;
	}
	else
	{
	 	$chk_parent_qry='select cat_id as chk_parent_id from tbl_categories where (cat_id="'.$parent_id.'") and 
		level="1"';
		$chk_parent_arr = $db->get_row($chk_parent_qry, ARRAY_A);
		$chk_parent_id  = $chk_parent_arr['chk_parent_id'];	
		if($chk_parent_id=="")
		{
			$errorstr .="Invalid Main Category is selected\n";
			$case = 0;
		}
		
		/*if($level2_cat_id == "" && $chk_parent_id!="")
		{
			$errorstr .="Please Select Level2 Category\n";
			$case = 0;
		}
		else*/if($chk_parent_id!="")
		{
			$chk_level2_cat_qry ='select cat_id as chk_level2_cat from tbl_categories where (cat_id="'.$level2_cat_id.'"  and parent_id="'.$parent_id.'") and level="2" ';
			$chk_level2_cat_arr = $db->get_row($chk_level2_cat_qry, ARRAY_A);
			$chk_level2_cat  = $chk_level2_cat_arr['chk_level2_cat'];	
			if($chk_level2_cat=="" && $level2_cat_id != "")
			{
				$errorstr .="Invalid Level2 Category is selected\n";
				$case = 0;
			}
			
			/*if($level3_cat_id == "" && $chk_level2_cat!="")
			{
				$errorstr .="Please Select Level3 Category\n";
				$case = 0;
			}
			else*/if($chk_level2_cat!="" && $level3_cat_id != "")
			{
				 $chk_level3_cat_qry ='select cat_id as chk_level3_cat from tbl_categories where (cat_id="'.$level3_cat_id.'"  and parent_id="'.$chk_level2_cat.'") and level="3" ';
				$chk_level3_cat_arr = $db->get_row($chk_level3_cat_qry, ARRAY_A);
				$chk_level3_cat  = $chk_level3_cat_arr['chk_level3_cat'];	
				if($chk_level3_cat=="")
				{
					$errorstr .="Invalid Level3 Category is selected\n";
					$case = 0;
				}
				
				/*if($level4_cat_id == "" && $chk_level3_cat!="")
				{
					$errorstr .="Please Select Level4 Category\n";
					$case = 0;
				}
				else*/if($chk_level3_cat!="" && $level4_cat_id != "")
				{
					 $chk_level4_cat_qry ='select cat_id as chk_level4_cat from tbl_categories where (cat_id="'.$level4_cat_id.'"  and parent_id="'.$chk_level3_cat.'") and level="4" ';
					$chk_level4_cat_arr = $db->get_row($chk_level4_cat_qry, ARRAY_A);
					$chk_level4_cat  = $chk_level4_cat_arr['chk_level4_cat'];	
					if($chk_level4_cat=="")
					{
						$errorstr .="Invalid Level4 Category is selected\n";
						$case = 0;
					}
					
				}
			}
		}
	}
	/*if($description == "")
	{
		$errorstr .="Please Enter Description\n";
		$case = 0;
	}
	if($_FILES["image_name"]['name']=="" && $update_id=="")
	{
		$errorstr .= "Please Upload Image\n";
		$case = 0;
	}
	else*/
	if($_FILES["image_name"]['name']!="")
	{
		$filename = $_FILES["image_name"]['name'];
		$TmpExt   = strtolower(substr($filename, strrpos($filename, '.')+1));
		$ext = array('jpg', 'png', 'gif','JPEG','jpeg');
		if(!in_array($TmpExt,$ext))
		{
			$errorstr .= "Invalid Image Format\n";
			$case = 0;
		}
	}
	if($_FILES["cat_img_name1"]['name']!="")
	{
		$filename = $_FILES["cat_img_name1"]['name'];
		$TmpExt   = strtolower(substr($filename, strrpos($filename, '.')+1));
		$ext = array('jpg', 'png', 'gif','JPEG','jpeg');
		if(!in_array($TmpExt,$ext))
		{
			$errorstr .= "Invalid small Image1 Format\n";
			$case = 0;
		}
	}
	
	if($_FILES["cat_img_name2"]['name']!="")
	{
		$filename = $_FILES["cat_img_name2"]['name'];
		$TmpExt   = strtolower(substr($filename, strrpos($filename, '.')+1));
		$ext = array('jpg', 'png', 'gif','JPEG','jpeg');
		if(!in_array($TmpExt,$ext))
		{
			$errorstr .= "Invalid small Image2 Format\n";
			$case = 0;
		}
	}
	
	if($_FILES["cat_img_name3"]['name']!="")
	{
		$filename = $_FILES["cat_img_name3"]['name'];
		$TmpExt   = strtolower(substr($filename, strrpos($filename, '.')+1));
		$ext = array('jpg', 'png', 'gif','JPEG','jpeg');
		if(!in_array($TmpExt,$ext))
		{
			$errorstr .= "Invalid small Image3 Format\n";
			$case = 0;
		}
	}
	if($case==1)
	{
		$cat_seo_name = clean_url_seo($cat_name);
		$root_parent_id = $parent_id;
		
		if($level4_cat_id != "")
		{
			$level = 5;
			$level_entry = " ,parent_id='".mysqli_escape_string($db->dbh, stripslashes($level4_cat_id))."',plevel2='".mysqli_escape_string($db->dbh, stripslashes($level2_cat_id))."',plevel3='".mysqli_escape_string($db->dbh, stripslashes($level3_cat_id))."' ";
		}
		elseif($level3_cat_id != "")
		{
			$level = 4;
			$level_entry = " ,parent_id='".mysqli_escape_string($db->dbh, stripslashes($level3_cat_id))."',plevel2='".mysqli_escape_string($db->dbh, stripslashes($level2_cat_id))."',plevel3='".mysqli_escape_string($db->dbh, stripslashes($level3_cat_id))."' ";
		}
		elseif($level2_cat_id != "")
		{
			$level = 3;
			$level_entry = " ,parent_id='".mysqli_escape_string($db->dbh, stripslashes($level2_cat_id))."',plevel2='".mysqli_escape_string($db->dbh, stripslashes($level2_cat_id))."' ";
		}
		elseif($parent_id != "")
		{
			$level = 2;
			$level_entry = " ,parent_id='".mysqli_escape_string($db->dbh, stripslashes($parent_id))."'";
		}
		  $insert_qry="INSERT INTO tbl_categories SET cat_name='".mysqli_escape_string($db->dbh, stripslashes($cat_name))."',status='1',level='".$level."', cat_seo_name='".mysqli_escape_string($db->dbh, stripslashes($cat_seo_name))."',root_parent_id='".$root_parent_id."',description='".mysqli_escape_string($db->dbh, stripslashes($description))."' ,category_embed_code= \"".mysqli_escape_string($db->dbh, stripslashes($category_embed_code))."\",category_video_code='".mysqli_escape_string($db->dbh, stripslashes($category_video_code))."',mobile_embed_code='".mysqli_escape_string($db->dbh, stripslashes($mobile_embed_code))."',more_info_data='".mysqli_escape_string($db->dbh, stripslashes($more_info_data))."' ".$level_entry." "; 
		$db->query($insert_qry);
		$last_record = mysqli_insert_id($db->dbh);
		
		if($_FILES["image_name"]['name']!="")
		{
			$select_img ="select image_name from tbl_categories where cat_id='".$last_record."' ";
			$result = $db->get_row($select_img, ARRAY_A);
			$old_image  = $result['image_name'];
			$imgfile =$path.$old_image;
			$thumbfile =$path.'thumb_'.$old_image;
			$thumbfile_small =$path.'small_thumb_'.$old_image;
			@unlink($imgfile);
			@unlink($thumbfile);
			@unlink($thumbfile_small);
			
			$icon_array = $_FILES["image_name"]['name'];
			$img_formats = array("jpeg", "gif", "png", "jpg","JPEG", "GIF", "PNG", "JPG");
			$allowed_size = 2; // Allowed Photo Size in MB			
			$file_temp = $_FILES["image_name"]['tmp_name'];
			$h_image_size = filesize($_FILES["image_name"]['tmp_name']);
			$h_image_size = ($h_image_size/1024)/1024;
			$h_file_name_array 	= $_FILES["user_image"];
			$h_file_ext = ltrim(strtolower(strrchr($_FILES["image_name"]['name'],'.')),'.'); 
			
			$icon_orgname = rand()."_".$_FILES["image_name"]['name'];
			$h_newthumb_name = 'thumb_'.$icon_orgname;	
			$h_small_thumb_name = 'small_thumb_'.$icon_orgname;			
			$h_photo_path = $path.$icon_orgname;
			$h_photothumb_path = $path.$h_newthumb_name;
			$h_dir = $path;
			
			if($h_image_size < $allowed_size)
			{
				copy($file_temp,$h_photo_path);	
				$a = new Thumbnail($_FILES["image_name"]['tmp_name'],241,'238',$h_dir.$h_newthumb_name);
				// creating thumbnail
				$a->create();
				
				$b = new Thumbnail($_FILES["image_name"]['tmp_name'],97,'97',$h_dir.$h_small_thumb_name);
				// creating thumbnail
				$b->create();
				
				$img_qry="UPDATE tbl_categories SET image_name='".$icon_orgname."' where cat_id='".$last_record."' ";
				$db->query($img_qry);
			}
		}

		if($_FILES["first_image"]['name']!="")
		{
			$select_img ="select cat_small_image1 from tbl_categories where cat_id='".$last_record."' ";
			$result = $db->get_row($select_img, ARRAY_A);
			$old_image  = $result['first_image'];
			$imgfile =$path.$old_image;
			$thumbfile =$path.'thumb_'.$old_image;
			$thumbfile_small =$path.'small_thumb_'.$old_image;
			@unlink($imgfile);
			@unlink($thumbfile);
			@unlink($thumbfile_small);
			
			$icon_array = $_FILES["first_image"]['name'];
			$img_formats = array("jpeg", "gif", "png", "jpg","JPEG", "GIF", "PNG", "JPG");
			$allowed_size = 2; // Allowed Photo Size in MB			
			$file_temp = $_FILES["first_image"]['tmp_name'];
			$h_image_size = filesize($_FILES["first_image"]['tmp_name']);
			$h_image_size = ($h_image_size/1024)/1024;
			$h_file_name_array 	= $_FILES["user_image"];
			$h_file_ext = ltrim(strtolower(strrchr($_FILES["first_image"]['name'],'.')),'.'); 
			
			$icon_orgname = rand()."_".$_FILES["first_image"]['name'];
			$h_newthumb_name = 'thumb_'.$icon_orgname;	
			$h_small_thumb_name = 'small_thumb_'.$icon_orgname;			
			$h_photo_path = $path.$icon_orgname;
			$h_photothumb_path = $path.$h_newthumb_name;
			$h_dir = $path;
			
			if($h_image_size < $allowed_size)
			{
				copy($file_temp,$h_photo_path);	
				$a = new Thumbnail($_FILES["first_image"]['tmp_name'],241,'238',$h_dir.$h_newthumb_name);
				// creating thumbnail
				$a->create();
				
				$b = new Thumbnail($_FILES["first_image"]['tmp_name'],97,'97',$h_dir.$h_small_thumb_name);
				// creating thumbnail
				$b->create();
				
				$img_qry="UPDATE tbl_categories SET cat_small_image1='".$icon_orgname."' where cat_id='".$last_record."' ";
				$db->query($img_qry);
			}
		}
		if($_FILES["second_image"]['name']!="")
		{
			$select_img ="select cat_small_image2 from tbl_categories where cat_id='".$last_record."' ";
			$result = $db->get_row($select_img, ARRAY_A);
			$old_image  = $result['second_image'];
			$imgfile =$path.$old_image;
			$thumbfile =$path.'thumb_'.$old_image;
			$thumbfile_small =$path.'small_thumb_'.$old_image;
			@unlink($imgfile);
			@unlink($thumbfile);
			@unlink($thumbfile_small);
			
			$icon_array = $_FILES["second_image"]['name'];
			$img_formats = array("jpeg", "gif", "png", "jpg","JPEG", "GIF", "PNG", "JPG");
			$allowed_size = 2; // Allowed Photo Size in MB			
			$file_temp = $_FILES["second_image"]['tmp_name'];
			$h_image_size = filesize($_FILES["second_image"]['tmp_name']);
			$h_image_size = ($h_image_size/1024)/1024;
			$h_file_name_array 	= $_FILES["user_image"];
			$h_file_ext = ltrim(strtolower(strrchr($_FILES["second_image"]['name'],'.')),'.'); 
			
			$icon_orgname = rand()."_".$_FILES["second_image"]['name'];
			$h_newthumb_name = 'thumb_'.$icon_orgname;	
			$h_small_thumb_name = 'small_thumb_'.$icon_orgname;			
			$h_photo_path = $path.$icon_orgname;
			$h_photothumb_path = $path.$h_newthumb_name;
			$h_dir = $path;
			
			if($h_image_size < $allowed_size)
			{
				copy($file_temp,$h_photo_path);	
				$a = new Thumbnail($_FILES["second_image"]['tmp_name'],241,'238',$h_dir.$h_newthumb_name);
				// creating thumbnail
				$a->create();
				
				$b = new Thumbnail($_FILES["second_image"]['tmp_name'],97,'97',$h_dir.$h_small_thumb_name);
				// creating thumbnail
				$b->create();
				
				$img_qry="UPDATE tbl_categories SET cat_small_image2='".$icon_orgname."' where cat_id='".$last_record."' ";
				$db->query($img_qry);
			}
		}
		if($_FILES["third_image"]['name']!="")
		{
			$select_img ="select cat_small_image3 from tbl_categories where cat_id='".$last_record."' ";
			$result = $db->get_row($select_img, ARRAY_A);
			$old_image  = $result['third_image'];
			$imgfile =$path.$old_image;
			$thumbfile =$path.'thumb_'.$old_image;
			$thumbfile_small =$path.'small_thumb_'.$old_image;
			@unlink($imgfile);
			@unlink($thumbfile);
			@unlink($thumbfile_small);
			
			$icon_array = $_FILES["third_image"]['name'];
			$img_formats = array("jpeg", "gif", "png", "jpg","JPEG", "GIF", "PNG", "JPG");
			$allowed_size = 2; // Allowed Photo Size in MB			
			$file_temp = $_FILES["third_image"]['tmp_name'];
			$h_image_size = filesize($_FILES["third_image"]['tmp_name']);
			$h_image_size = ($h_image_size/1024)/1024;
			$h_file_name_array 	= $_FILES["user_image"];
			$h_file_ext = ltrim(strtolower(strrchr($_FILES["third_image"]['name'],'.')),'.'); 
			
			$icon_orgname = rand()."_".$_FILES["third_image"]['name'];
			$h_newthumb_name = 'thumb_'.$icon_orgname;	
			$h_small_thumb_name = 'small_thumb_'.$icon_orgname;			
			$h_photo_path = $path.$icon_orgname;
			$h_photothumb_path = $path.$h_newthumb_name;
			$h_dir = $path;
			
			if($h_image_size < $allowed_size)
			{
				copy($file_temp,$h_photo_path);	
				$a = new Thumbnail($_FILES["third_image"]['tmp_name'],241,'238',$h_dir.$h_newthumb_name);
				// creating thumbnail
				$a->create();
				
				$b = new Thumbnail($_FILES["third_image"]['tmp_name'],97,'97',$h_dir.$h_small_thumb_name);
				// creating thumbnail
				$b->create();
				
				$img_qry="UPDATE tbl_categories SET cat_small_image3='".$icon_orgname."' where cat_id='".$last_record."' ";
				$db->query($img_qry);
			}
		}
		if($level==5)
		{
			echo 'done-SEPARATOR-sub';
		}
		else
		{
			echo 'done-SEPARATOR-all';
		}
	}
	else
	{
		echo $errorstr;
	}
}
