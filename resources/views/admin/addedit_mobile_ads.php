<?php 
include("includes/top.php");
include("common/security.php");
if($edit_id!=""){
	
	$edit_id = base64_decode($edit_id);
	$row=$db->get_row("select ads_id,ads_place,ads_script from tbl_mobile_advertisement where ads_id='".$edit_id."'",ARRAY_A);
	$ads_id 	     = $row['ads_id'];
	$ads_place 	 = stripslashes(html_entity_decode($row['ads_place']));
	$ads_script   = stripslashes(html_entity_decode($row['ads_script']));
	$addedit = 'Edit';
}else{
	
	$addedit = 'Add';
}
?>
<html>
<head>
<title><?php echo $addedit;?> Mobile Advertisement</title>
<script language="javascript" type="text/javascript">

function toggleChecked(status)
{
	$(".check-all").each( function() {
		$(this).attr("checked",status);
	})
}
</script>
<style>
 .pie{
	 behavior:url(PIE.htc);
 }
 
</style>

<?php include("common/header.php");?>
</head>
<body>

<table style="border-collapse: collapse;" border="0" cellpadding="0" width="100%" height="100%">
	<tbody>
		<tr>
			<td style="background-image:URL('images/topbg.png');background-repeat:repeat;height:50px;" height="50">
				<?php include("common/top_right_menu.php"); ?>
			</td>
		</tr>
	
		<tr>
			<td valign="top">
				<table border="0" width="100%">
					<tbody>
						<tr>
							<td width="10">&nbsp;</td>
							<td>
								<div class="BodyContainer">
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
									  <tbody>
									  <tr>
										<td class="heading1"><?php echo $addedit;?>Mobile Advertisement</td>
									  </tr>
										
									  <tr>
										<td class="body">
											<table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">
											  <tbody>
												<tr>
												  <td align="left">
												  <a href="<?php echo SERVER_ADMIN_PATH;?>/index.php">Home</a>
												  &raquo; <a href="<?php echo SERVER_ADMIN_PATH;?>ads_mobile_list.php">Mobile Advertisement Listing</a>
												  &raquo; <a><?php echo $addedit;?> Mobile Advertisement</a>
													
												  </td>
												</tr>
												
												<?php if(isset($errorstr) && $errorstr!=""){ ?>
												<tr>
												  <td colspan="8">
													<table border="0" cellpadding="0" cellspacing="0" class="Message">
														<tbody>
															<tr>
																<td width="20" valign="top">
																<?php if($case==1){ ?>
																<img src="images/success_icon.png" vspace="5" width="18" height="18" hspace="10">
																<?php } ?>
																<?php if($case==2){ ?>
																<img src="images/warning_icon.png" vspace="5" width="18" height="18" hspace="10">
																<?php } ?>
																<?php if($case==0){ ?>
																<img src="images/error_icon.png" vspace="5" width="18" height="18" hspace="10">
																<?php } ?>											</td>
																<td width="100%"><?php echo $errorstr; ?></td>
															</tr>
														</tbody>
													</table>
												  </td>
												</tr>
												<?php } ?>
																								
    <tr>
      <td>
          <form name="ads_mobile_form" id="ads_mobile_form" action="" method="post" enctype="multipart/form-data"> 
              <table class="Panel">
                <tbody>
                  <tr>
                    <td width="12%" nowrap="nowrap" class="SmallFieldLabel2">Google Adsense Code:</td>
                    <td width="88%" valign="top">
                    <textarea name="ads_script" id="ads_script" style="width:559px;height:276px;"><?php echo $ads_script;?></textarea>	
                    <span class="Required">*</span>
                    </td>
                  </tr>
                  <!--<tr>
                    <td width="12%" nowrap="nowrap" class="SmallFieldLabel2">Ads Place:</td>
                    <td width="88%">
                    <select name="ads_place" id="ads_place" class="Field300" style="width:251px;">
                    	<option value=""> --- Please Select Ads Place --- </option>
                    	<option value="Top" <?php if($ads_place=="Top"){ echo "selected='selected'";}?>>Top</option>
                        <option value="Bottom" <?php if($ads_place=="Bottom"){ echo "selected='selected'";}?>> Bottom</option>
                    </select>	
                    <span class="Required">*</span>
                    </td>
                  </tr>-->
                  <tr>
                    <td class="SmallFieldLabel2">&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>
                    <?php
                    if(isset($edit_id) && $edit_id != '')
                    {
                    ?>
                        <input type="hidden" name="update_id" id="update_id" value="<?php echo $edit_id;?>"/>
                        <input name="update_ads" id="update_ads" value="Update" class="FormButton" type="submit" onClick="validate_mobile_ads();"/>
                    <?php
                    }
                    else
                    {
                    ?>
                    	<input name="add" id="add" value="Add" class="FormButton" type="submit" onClick="validate_mobile_ads();"/>
                    <?php
                    }
                    ?>
                    </td>
                  </tr>
                </tbody>
              </table>						  
          </form>
      </td>
    </tr>
	<tr>
												  <td>&nbsp;</td>
												</tr>											
											  </tbody>
											</table>
										</td>
									  </tr>
									  </tbody>
									</table>
								</div>
							</td>
							<td width="10">&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr><td height="20"><?php include("common/footer.php");?></td></tr>
	</tbody>
</table>
<!-- End pagefooter -->
</body>

</html>