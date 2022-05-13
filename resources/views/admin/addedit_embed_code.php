<?php 
include("includes/top.php");
include("common/security.php");
if($edit_id!="")
{
    $edit_id = base64_decode($edit_id);
	$row = $db->get_row("select embed_code_id, embed_cat_id, embed_code, embed_code_title from tbl_product_embed_code where embed_code_id='".$edit_id."'  ",ARRAY_A);
	$embed_code_id     = $row['embed_code_id'];
	$embed_cat_id      = $row['embed_cat_id'];
	$embed_code        = stripslashes(html_entity_decode($row['embed_code']));
	$embed_code_title  = stripslashes(html_entity_decode($row['embed_code_title']));
}
if($db_cat_id!="")
{

	$addedit = 'Edit';
}
else
{
	$addedit = 'Add';
}
?>

<html>

<head>

<title><?php echo $addedit;?> Prdoduct Embed Code</title>



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

            <td style="background:#1F3C5C; background-repeat:repeat-x; height:60px;" height="60">

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

										<td class="heading1"><?php echo $addedit;?> Prdoduct Embed Code</td>

									  </tr>

										

									  <tr>

										<td class="body">

											<table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">

											  <tbody>

												<tr>

												  <td align="left">

												  <a href="<?php echo SERVER_ADMIN_PATH;?>index.php">Home</a>

													&raquo; <a href="<?php echo SERVER_ADMIN_PATH;?>embed_code_list.php">Prdoduct Embed Code Listing</a>

													<?php

													if($edit_id != '')

													{

													?>

													&raquo; <a>Edit Prdoduct Embed Code</a>

													<?php

													}

													?>

												  

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

													  <form name="product_form" id="product_form" action="" method="post" enctype="multipart/form-data"> 

														  <table class="Panel">

															<tbody>

                                                              

															  <tr>

																<td width="12%" nowrap="nowrap" class="SmallFieldLabel2">Title:</td>

																<td width="88%">

																<input type="text" name="embed_code_title" id="embed_code_title" value="<?php echo $embed_code_title;?>" class="fields" />

																<span class="Required" /> *</span>																

																</td>

															  </tr>

                                                              <tr>

																<td width="12%" nowrap="nowrap" class="SmallFieldLabel2">Review Topic:</td>

																<td width="88%">

																<select name="embed_cat_id" id="embed_cat_id" class="Field300" style="width:580px;">

                                                                  <option value=""> ---------------- Please Select Review Topic ---------------- </option>

                                                                  <?php

                                                                    $sql_qry="Select cat_id,cat_name,parent_id from tbl_categories where status='1' and level='5'";

                                                                    $sql_arr = $db->get_results($sql_qry,ARRAY_A);

                                                                    if($sql_arr)

                                                                    {

                                                                        foreach($sql_arr as $val)

                                                                        {

																			$cat_id = $val['cat_id'];
																			$parent_id = $val['parent_id'];

																			$cat_name = stripcslashes(html_entity_decode($val['cat_name']));														
																			include("cat_hierarchy.php");

																			if($embed_cat_id==$cat_id)

																			{

																				$selected= "selected='selected'";

																			}

																			else

																			{

																				$selected= "";

																			}
																			

																	?>

                                                                  <option value="<?php echo $cat_id;?>" <?php echo $selected;?>><?php echo $level1_name;?> -> <?php echo $level2_name;?> -> <?php echo $level3_name;?> -> <?php echo $level4_name;?> -> <?php echo $cat_name;?></option>

                                                                  <?php

																	  }

																  }

																?>

                                                                </select>

															    <span class="Required"> *</span>																</td>

															  </tr>

                                                              

															  

															  <tr>

																<td width="12%" nowrap="nowrap" class="SmallFieldLabel2">Embed Code:</td>

																<td width="88%">

																<textarea  name="embed_code" id="embed_code" style="width:582px;height:289px;"><?php echo $embed_code;?></textarea>
																
															<span class="Required" style="vertical-align:top;"> *</span>
															<br />
                                                            <span class="Required"><strong> width: 630px</strong></span>
                                                            </td>

															  </tr>
                                                              <tr>

																<td>&nbsp;</td>

																<td>

																<?php

																if(isset($edit_id) && $edit_id != '')

																{

																?>

																<input type="hidden" name="update_id" id="update_id" value="<?php echo $edit_id;?>"/>

																<input name="save" id="save" value="Update" class="FormButton" type="submit" onClick="validate_product_embed_code();"/>

																<?php

																}

																else

																{

																?>

																<input name="add" id="add" value="Add" class="FormButton" type="submit" onClick="validate_product_embed_code();" />

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