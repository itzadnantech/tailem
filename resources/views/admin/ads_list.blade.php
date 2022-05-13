@include("admin.includes.top")
@include("admin.common.security")
<?php

use Illuminate\Support\Arr;


/*================== Search Filter Start Here=================*/

if (isset($_POST['filter'])) {
	$sess_where = "";
	if ($_REQUEST['ad_place'] != "") {
		$sess_where .= " and ad_place  = '" . trim($_REQUEST['ad_place']) . "' ";
		session()->put('ad_place_sess', trim($_REQUEST['ad_place']));
	} else {
		session()->put('ad_place_sess', null);
	}

	if (isset($_REQUEST['ads_status'])) {
		$sess_where .= " and status = '" . $_REQUEST['ads_status'] . "'";
		session()->put('ads_status_sess', $_REQUEST['ads_status']);
	} else {
		session()->put('ads_status_sess', null);
	}
	session()->put('ads_sess', $sess_where);
}
$session_where = session()->get('ads_sess');
if (isset($_POST['Reset'])) {
	session()->put('ad_place_sess', null);
	session()->put('ads_status_sess', null);
	session()->put('ads_sess', null);
	echo '<script>window.location = "ads_list";</script>';
}
/*================== Search Filter End Here=================*/
//---------- Ordering ----------//
switch ($sortby) {
	case "ad_place_desc":
		$orderby	= " ORDER BY ad_place desc";
		break;

	case "ad_place_asc":
		$orderby	= " ORDER BY ad_place asc";
		break;

	case "statusdesc":
		$orderby	= " ORDER BY status desc";
		break;

	case "statusasc":
		$orderby	= " ORDER BY status asc";
		break;

	default:
		$orderby = "ORDER BY ad_id desc";
		break;
}


if (isset($status) && !empty($status)) {
	$status		=	base64_decode($status);

	$status_id	=	base64_decode($status_id);

	if ($status == 1) {
		$sqlquery	=	"update tbl_advertisement set status='$status' where ad_id='$status_id'";
	} else {
		$sqlquery	=	"update tbl_advertisement set status='$status' where ad_id='$status_id'";
	}


	\App\Models\Songs::GetRawData($sqlquery);
	$update_ok_msg = base64_encode("Status has been changed Successfully!");
	$url = "ads_list?msg=$update_ok_msg&case=1";
	echo '<script>window.location = "' . $url . '";</script>';
	exit;
}
?>
<html>

<head>
	<title>Advertisement Listing</title>
	@include("admin.common.header")
	<script language="javascript" type="text/javascript">
		// check boxess submit code
		function toggleChecked(status) {
			$(".check-all").each(function() {
				$(this).attr("checked", status);
			})
		}

		function multiple_action(frm_id) // for changing multiple status or multiple delete 
		{
			var conBox = confirm("Are you sure,you want to Perform this Action?");
			if (conBox) {
				document.forms[frm_id].submit();
			} else {
				return false;
			}
		}

		function show_detail(id) {
			$("#before_details_div_" + id).toggle();
			$("#after_details_div_" + id).toggle();
		}
	</script>
</head>

<body>

	<table style="border-collapse: collapse;" border="0" cellpadding="0" width="100%" height="100%">

		<tr>
			<td style="background:#1F3C5C; background-repeat:repeat-x; height:60px;" height="60">
				@include("admin.common.top_right_menu")
			</td>
		</tr>
		<tr>
			<td valign="top">
				<table border="0" width="100%">
					<tr>
						<td width="10">&nbsp;</td>
						<td>
							<!-- End page header -->
							<!-- End pageheader -->
							<!-- Start home -->
							<div class="BodyContainer">
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr>
										<td class="heading1">Advertisement Listing</td>
									</tr>
									<tr>
										<td class="body">
											<table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">
												<tr>
													<td><a href="<?php echo SERVER_ADMIN_PATH; ?>index">Home</a> &raquo; <a>Advertisement Listing</a></td>
												</tr>
												<tr>
													<td>
														<form name="search_form" id="search_form" method="post" action="">
															@csrf
															<table border="0" cellpadding="0" cellspacing="0" align="center" width="500" style="border:1px solid #000000; padding:10px;">
																<tbody>
																	<tr>
																		<td class="SmallFieldLabelnew font_bold" align="center" colspan="2">
																			Search Advertisement
																		</td>
																	</tr>
																	<tr height="30">
																		<td class="SmallFieldLabelnew font_bold" align="left" width="150">
																			Place
																		</td>
																		<td align="center">
																			<select name="ad_place" id="ad_place" class="Field300">
																				<option value=""> --- Please Select Ads Place --- </option>
																				<option value="Top" <?php if (session()->get('ad_place_sess') == "Top") {
																										echo "selected='selected'";
																									} ?>>Top</option>
																				<option value="Right" <?php if (session()->get('ad_place_sess') == "Right") {
																											echo "selected='selected'";
																										} ?>> Right</option>
																				<option value="Bottom" <?php if (session()->get('ad_place_sess') == "Bottom") {
																											echo "selected='selected'";
																										} ?>> Bottom</option>
																			</select>
																		</td>
																	</tr>
																	<tr height="30">
																		<td class="SmallFieldLabelnew font_bold" align="left" width="150">
																			Status
																		</td>
																		<td align="center">
																			<select name="ads_status" id="ads_status" class="Field300">
																				<option value=""> ------- Please Select Status ------- </option>
																				<option value="1" <?php if (session()->get('ads_status_sess') == '1') {
																										echo 'selected="selected"';
																									} ?>>Active</option>
																				<option value="0" <?php if (session()->get('ads_status_sess') == '0') {
																										echo 'selected="selected"';
																									} ?>>Block</option>
																			</select>
																		</td>
																	</tr>

																	<tr height="30">
																		<td class="SmallFieldLabelnew font_bold" align="left" width="150">&nbsp;</td>
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
																<?php if (isset($msg) && $msg != "") { ?>
																	<tr>
																		<td colspan="5">
																			<table border="0" cellpadding="0" cellspacing="0" class="Message">
																				<tbody>

																					<tr>
																						<td width="20"><?php if ($case == 1) { ?>
																								<img src="images/success_icon.png" vspace="5" width="18" height="18" hspace="10">
																							<?php } ?>
																							<?php if ($case == 2) { ?>
																								<img src="images/warning_icon.png" vspace="5" width="18" height="18" hspace="10">
																							<?php } ?>
																							<?php if ($case == 3) { ?>
																								<img src="images/error_icon.png" vspace="5" width="18" height="18" hspace="10">
																							<?php } ?>
																						</td>
																						<td width="100%"><?php echo base64_decode($msg); ?></td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																	</tr>
																<?php } ?>

																<tr>
																	<td colspan="5" width="105" align="right" valign="middle" id="addsymbol">
																		<a href="<?php echo SERVER_ADMIN_PATH; ?>addedit_ads"><img src="images/add.png" border="0" title="Add New Subject"></a>
																	</td>
																</tr>

																<tr>
																	<td colspan="5">&nbsp;</td>
																</tr>
																<tr>
																	<td width="25" id="Heading_list">Sr #</td>

																	<td width="100" id="Heading_list">
																		<?php if ($sortby == 'ad_place_desc') { ?>
																			<a href="ads_list?sortby=ad_place_asc&page=<?php echo $page; ?>" class="link_class">Ads Place</a>
																		<?php } else { ?>
																			<a href="ads_list?sortby=ad_place_desc&page=<?php echo $page; ?>" class="link_class">Ads Place</a>
																		<?php } ?>
																	</td>
																	<td width="420" id="Heading_list">Google Adsense Code</td>
																	<td width="90" id="Heading_list">
																		<?php if ($sortby == 'statusdesc') { ?>
																			<a href="ads_list?sortby=statusasc&page=<?php echo $page; ?>" class="link_class">Status</a>
																		<?php } else { ?>
																			<a href="ads_list?sortby=statusdesc&page=<?php echo $page; ?>" class="link_class">Status</a>
																		<?php } ?>
																	</td>
																	<td width="100" id="Heading_list" class="righttd_border">&nbsp;&nbsp;&nbsp;<input class="check-all" type="checkbox" onClick="toggleChecked(this.checked);" /> Action</td>
																</tr>

																<form action="<?php echo SERVER_ADMIN_PATH; ?>process/ads_actions" method="post" id="ads_form">
																	@csrf
																	<?php
																	//============================================================
																	//PAGGING CODE STARTS HERE
																	$qry_count_mypro = "SELECT ad_id FROM tbl_advertisement where 1=1
											$session_where  $orderby";

																	$res_count_mypro = \App\Models\Songs::GetRawData($qry_count_mypro);
																	if ($res_count_mypro) {
																		$total_pages = count($res_count_mypro);
																	} else {
																		$total_pages = 0;
																	}
																	$targetpage = "ads_list"; //your file name  (the name of this file)


																	$limit = 15; 					//how many items to show per page
																	if ($page)
																		$start = ($page - 1) * $limit; //first item to display on this page
																	else
																		$start = 0;					//if no page var is given, set start to 0
																	//PAGGING CODE ENDS HERE	
																	//============================================================


																	if (isset($page) && $page != "") {
																		$sr_no = ($page * $limit) - $limit;
																	} else {
																		$sr_no = 0;
																	}

																	$c = 1;

																	$ads_list = "select * from tbl_advertisement where 1=1 $session_where $orderby 
										LIMIT $start, $limit";

																	$ads_list_arr	=	\App\Models\Songs::GetRawData($ads_list);

																	if (isset($ads_list_arr)) {
																		foreach ($ads_list_arr as $val) {
																			$val = (array)$val;
																			$ad_id		  = $val['ad_id'];
																			$ad_place     = $val['ad_place'];
																			$ad_script    = stripslashes(html_entity_decode($val['ad_script']));
																			$status       = $val['status'];
																			if ($c % 2 == 0) {
																				$bgcolor = "#FEFEE4";
																			} else {
																				$bgcolor = "#FFFFFF";
																			}

																			$c++;
																			$sr_no++;
																	?>

																			<tr bgcolor="<?php echo $bgcolor; ?>" onMouseOver="changebackcolor_hover('row<?php echo $ad_id; ?>')" onMouseOut="changebackcolor_blur('row<?php echo $ad_id; ?>')" id="row<?php echo $ad_id; ?>">
																				<td nowrap="nowrap" class="SmallFieldLabel" width="25"><?php echo $sr_no; ?></td>
																				<td nowrap="nowrap" class="SmallFieldLabel" width="100">
																					<?php echo $ad_place; ?>
																				</td>
																				<td nowrap="nowrap" class="SmallFieldLabel" width="420">
																					<?php echo $ad_script; ?>
																				</td>
																				<td nowrap="nowrap" class="SmallFieldLabel" width="90">
																					<?php
																					if ($status == 0) {
																						echo "Blocked";
																					}
																					if ($status == 1) {
																						echo "Active";
																					} ?>
																					&nbsp;&nbsp;&nbsp;
																					<?php
																					if ($status == 0) {
																						echo '<a href="ads_list?status=' . base64_encode(1) . '&status_id=' . base64_encode($ad_id) . '"><img src="images/disable.gif" border="0" class="Action" title="Activate"></a>';
																					}
																					if ($status == 1) {
																						echo '<a href="ads_list?status=' . base64_encode(0) . '&status_id=' . base64_encode($ad_id) . '"><img src="images/enable.gif" border="0" class="Action" title="Blocked"></a>';
																					}
																					?></td>
																				<td nowrap="nowrap" class="SmallFieldLabel righttd_border" width="100">
																					&nbsp;&nbsp; <input type="checkbox" class="check-all" name="ad_ids[]" id="ad_ids[]" value="<?php echo base64_encode($ad_id); ?>" style="margin-top:-5px;" />
																					&nbsp;&nbsp;
																					<?php
																					if ($top_advertisement_module_add == 'Yes') {
																					?>
																						<a href="addedit_ads?edit_id=<?php echo base64_encode($ad_id); ?>"><img src="images/edit.gif" border="0" title="Edit" class="Action"></a>
																					<?php
																					}
																					?>
																					<?php
																					if ($top_advertisement_module_delete == 'Yes') {
																					?>
																						&nbsp; &nbsp;
																						<a href="javascript:;" onClick="delete_ads('<?php echo $ad_id; ?>')"><img src="images/delet.gif" border="0" title="Delete Ads" class="Action"></a>
																					<?php
																					}
																					?>
																				</td>
																			</tr>
																		<?php
																		}
																	} else {
																		?>

																		<tr>
																			<td colspan="5" align="center" nowrap="nowrap" class="SmallFieldLabel righttd_border" style="font-weight:bold; color:#FF0000;"> NO RECORD FOUND!</td>
																		</tr>
																	<?php
																	}
																	?>
																	<?php
																	if ($total_pages > 0) {
																	?>
																		<tr>
																			<td colspan="5" nowrap="nowrap" class="SmallFieldLabel righttd_border">
																				<span style="float:right; padding-bottom:10px; margin-right:8px;">
																					<select name="dropdown" onChange="multiple_action('ads_form');">
																						<option value="">Choose an action...</option>
																						<option value="Active">Active</option>
																						<option value="Inactive">Inactive</option>
																						<?php
																						if ($top_advertisement_module_delete == 'Yes') {
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
																		<td colspan="5" align="center" valign="middle">
																			@include("admin.common.paging-playlist")
																		</td>
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
											</table>
										</td>
									</tr>
								</table>
							</div>
							<!-- End home -->
							<!-- Start pagefooter -->
						</td>
						<td width="10">&nbsp;</td>
					</tr>
					</tbody>
				</table>
			</td>
		</tr>

		<tr>
			<td height="20">
				@include("admin.common.footer")
			</td>
		</tr>
		</tbody>
	</table>
	<!-- End pagefooter -->
</body>

</html>