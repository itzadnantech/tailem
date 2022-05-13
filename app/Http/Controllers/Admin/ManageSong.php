<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\libraries\thumb\Thumbnail;

class ManageSong extends Controller
{

    ///Load_Song_List
    public function Load_Song_List()
    {
        $data = array();
        $data['sortby'] = null;
        $data['page'] = null;
        $data['msg'] = null;
        $data['case'] = null;
        $data['status'] = null;
        $data['status_id'] = null;
        $data['latest'] = null;
        $data['status_id'] = null;

        // $data['db_art_id'] = null;
        // $data['album_list'] = null;
        ///session variables
        $data['sess_where '] = null;


        ///sortby
        if (isset($_GET['sortby'])) {
            $data['sortby'] = $_GET['sortby'];
        }

        ///page
        if (isset($_GET['page'])) {
            $data['page'] = $_GET['page'];
        }

        ///msg
        if (isset($_GET['msg'])) {
            $data['msg'] = $_GET['msg'];
        }
        ///status_id
        if (isset($_GET['status_id'])) {
            $data['status_id'] = $_GET['status_id'];
        }

        ///latest
        if (isset($_GET['latest'])) {
            $data['latest'] = $_GET['latest'];
        }
        // ///latest
        if (isset($_GET['popular'])) {
            $data['popular'] = $_GET['popular'];
        }

        ///status
        if (isset($_GET['status'])) {
            $data['status'] = $_GET['status'];
        }

        ///case
        if (isset($_GET['case'])) {
            $data['case'] = $_GET['case'];
        }



        ///common  lines
        $data['currentFile'] = 'song_list';
        $data['targetpage'] = 'song_list';
        $data = top_file_data($data);
        $data['title'] = GetTitle();


        return view('admin.song_list', $data);
    }

    ///Song_Process
    public function Song_Process()
    {

        // $backtopage =  session()->get('backtopage');
        $backtopage =  'song_list';
        if (isset($_POST)) {

            $errorstr = "";
            $case = 1;

            function SEO($input)
            {
                global $db;

                $input = str_replace("&nbsp;", " ", $input);
                $input = str_replace(array("'"), "", $input); //remove single quote and dash
                $input = mb_convert_case($input, MB_CASE_LOWER, "UTF-8"); //convert to lowercase
                $input = preg_replace("#[^a-zA-Z0-9]+#", "-", $input); //replace everything non an with dashes
                $input = preg_replace("#(-){}#", "$1", $input); //replace multiple dashes with one
                $input = trim($input, "-"); //trim dashes from beginning and end of string if any
                $song_id = $_REQUEST['update_id'];
                if ($song_id != "") {
                    $select_url = "select song_seo from tbl_songs where song_seo='$input' and id !='$song_id'";
                } else {
                    $select_url = "select song_seo from tbl_songs where song_seo='$input'";
                }
                $result = \App\Models\Songs::GetRawData($select_url);
                if (count($result) > 0) {
                    $input = $input . "-" . uniqid();
                }
                return $input;
            }


            $song_title        = trim($_REQUEST['song_title']);
            $song_seo        = trim($_REQUEST['song_seo']);
            $keywords        = trim($_REQUEST['key_words_value']);
            $itunes_url        =  trim($_REQUEST['itunes_url']);
            $amazon_url        =  trim($_REQUEST['amazon_url']);
            $google_url        =  trim($_REQUEST['google_url']);
            $lastfm_url        =  trim($_REQUEST['lastfm_url']);
            $description    = trim($_REQUEST['description']);
            $sizeofarray = 0;
            if (isset($_REQUEST['artist'])) {
                $sizeofarray     = sizeof($_REQUEST['artist']);
            }
            $ad_code        = trim($_REQUEST['ad_code']);
            $video_code        = trim($_REQUEST['video_code']);
            $years            = trim($_REQUEST['years']);
            $path            = 'site_upload/song_images/';

            $ranking_order =      $_REQUEST['song_ranking'];




            if ($ranking_order == "") {
                $ranking_order = 0;
            }


            $update_id = $_REQUEST['update_id'];
            if ($song_title == "") {
                $errorstr .= "Please Enter Song Name\n";
                $case = 0;
            }





            if ($sizeofarray == 0) {
                $errorstr .= "Please select at least one artist\n";
                $case = 0;
            }
            if ($_FILES["image_name"]['name'] != "") {
                $filename = $_FILES["image_name"]['name'];
                $TmpExt   = strtolower(substr($filename, strrpos($filename, '.') + 1));
                $ext = array('jpg', 'png', 'gif', 'JPEG', 'jpeg');
                if (!in_array($TmpExt, $ext)) {
                    $errorstr .= "Invalid Picture Format\n";
                    $case = 0;
                }
            }

            if ($case == 1) {
                if ($update_id != '') {
                    $post_data = array();
                    $post_data['ranking_order'] = $ranking_order;
                    $post_data['song_title'] = $song_title;
                    $post_data['keywords'] = $keywords;
                    $post_data['song_seo'] = SEO($song_title);
                    $post_data['itunes_url'] = $itunes_url;
                    $post_data['amazon_url'] = $amazon_url;
                    $post_data['google_url'] = $google_url;
                    $post_data['lastfm_url'] = $lastfm_url;
                    $post_data['description'] = $description;
                    $post_data['ad_code'] = $ad_code;
                    $post_data['video_code'] = $video_code;
                    $post_data['song_year'] = $years;
                    UpdateRecord('songs', array('id' => $update_id), $post_data);
                    // $qry = "update tbl_songs set    where id = '$update_id'";

                    // \App\Models\Songs::GetRawData($qry);
                    // echo 'wait';
                    // die;
                    $arr  = $_REQUEST['artist'];

                    $qry = "delete from tbl_songs_artist where song_id = $update_id";
                    \App\Models\Songs::GetRawData($qry);

                    for ($m = 0; $m < $sizeofarray; $m++) {
                        //$full_array = explode(",".$array);

                        $artist_nn = "select id from tbl_artists where artist_name='" . trim($arr[$m]) . "' ";

                        $artist_nn_arr = \App\Models\Songs::GetRawData($artist_nn);

                        $qry = "insert into tbl_songs_artist set song_id='" .  stripslashes($update_id) . "',artist_id='" . $arr[$m] . "', posted_date='" . time() . "'";
                        \App\Models\Songs::GetRawData($qry);
                    }

                    if ($_FILES["image_name"]['name'] != "") {
                        $select_img = "select picture from tbl_songs where id='" . $update_id . "' ";
                        $result = \App\Models\Songs::GetRawDataAdmin($select_img);
                        $old_image  = $result['picture'];
                        $imgfile = $path . $old_image;
                        $thumbfile = $path . 'thumb_' . $old_image;
                        $thumbfile_small = $path . 'small_thumb_' . $old_image;
                        @unlink($imgfile);
                        @unlink($thumbfile);
                        @unlink($thumbfile_small);

                        $icon_array = $_FILES["image_name"]['name'];
                        $img_formats = array("jpeg", "gif", "png", "jpg", "JPEG", "GIF", "PNG", "JPG");
                        $allowed_size = 2; // Allowed Photo Size in MB
                        $file_temp = $_FILES["image_name"]['tmp_name'];
                        $h_image_size = filesize($_FILES["image_name"]['tmp_name']);
                        $h_image_size = ($h_image_size / 1024) / 1024;
                        $h_file_name_array     = $_FILES["user_image"];
                        $h_file_ext = ltrim(strtolower(strrchr($_FILES["image_name"]['name'], '.')), '.');

                        $icon_orgname = rand() . "_" . $_FILES["image_name"]['name'];
                        $h_newthumb_name = 'thumb_' . $icon_orgname;
                        $h_small_thumb_name = 'small_thumb_' . $icon_orgname;
                        $h_photo_path = $path . $icon_orgname;
                        $h_photothumb_path = $path . $h_newthumb_name;
                        $h_dir = $path;

                        if ($h_image_size < $allowed_size) {
                            copy($file_temp, $h_photo_path);
                            $a = new Thumbnail();
                            // creating thumbnail
                            $a->create($_FILES["image_name"]['tmp_name'], 241, '238', $h_dir . $h_newthumb_name);

                            $b = new Thumbnail();
                            // creating thumbnail
                            $b->create($_FILES["image_name"]['tmp_name'], 50, '50', $h_dir . $h_small_thumb_name);

                            $img_qry = "UPDATE tbl_songs SET picture='" . $icon_orgname . "' where id='" . $update_id . "'";
                            \App\Models\Songs::GetRawData($img_qry);
                        }
                    }
                } else {
                    $post_data = array();
                    $post_data['ranking_order'] = $ranking_order;
                    $post_data['song_title'] = $song_title;
                    $post_data['keywords'] = $keywords;
                    $post_data['song_seo'] = SEO($song_title);
                    $post_data['description'] = $description;
                    $post_data['song_status'] = 1;
                    $post_data['itunes_url'] = $itunes_url;
                    $post_data['amazon_url'] = $amazon_url;
                    $post_data['google_url'] = $google_url;
                    $post_data['lastfm_url'] = $lastfm_url;
                    $post_data['posted_date'] = time();
                    $post_data['ad_code'] = $ad_code;
                    $post_data['video_code'] = $video_code;
                    $post_data['song_year'] = $years;
                    $last_record  =  addNew('songs', $post_data);
                    $arr  = $_REQUEST['artist'];

                    for ($m = 0; $m < $sizeofarray; $m++) {
                        $artist_nn = "select id from tbl_artists where artist_name='" . trim($arr[$m]) . "' ";
                        $artist_nn_arr = \App\Models\Songs::GetRawData($artist_nn);
                        $update_id = $last_record;
                        $qry = "insert into tbl_songs_artist set song_id='" .  stripslashes($update_id) . "',artist_id='" . $arr[$m] . "', posted_date='" . time() . "'";
                        \App\Models\Songs::GetRawData($qry);
                    }



                    if ($_FILES["image_name"]['name'] != "") {
                        $icon_array = $_FILES["image_name"]['name'];
                        $img_formats = array("jpeg", "gif", "png", "jpg", "JPEG", "GIF", "PNG", "JPG");
                        $allowed_size = 2; // Allowed Photo Size in MB
                        $file_temp = $_FILES["image_name"]['tmp_name'];
                        $h_image_size = filesize($_FILES["image_name"]['tmp_name']);
                        $h_image_size = ($h_image_size / 1024) / 1024;
                        $h_file_name_array     = $_FILES["user_image"];
                        $h_file_ext = ltrim(strtolower(strrchr($_FILES["image_name"]['name'], '.')), '.');

                        $icon_orgname = rand() . "_" . $_FILES["image_name"]['name'];
                        $h_newthumb_name = 'thumb_' . $icon_orgname;
                        $h_small_thumb_name = 'small_thumb_' . $icon_orgname;
                        $h_photo_path = $path . $icon_orgname;
                        $h_photothumb_path = $path . $h_newthumb_name;
                        $h_dir = $path;


                        if ($h_image_size < $allowed_size) {
                            copy($file_temp, $h_photo_path);
                            $a = new Thumbnail();
                            // creating thumbnail
                            $a->create($_FILES["image_name"]['tmp_name'], 241, '238', $h_dir . $h_newthumb_name);

                            $b = new Thumbnail();
                            // creating thumbnail
                            $b->create($_FILES["image_name"]['tmp_name'], 50, '50', $h_dir . $h_small_thumb_name);

                            $img_qry = "UPDATE tbl_songs SET picture='" . $icon_orgname . "' where id='" . $last_record . "'";
                            \App\Models\Songs::GetRawData($img_qry);
                        }
                    }
                }



                echo 'done-SEPARATOR-' . $backtopage;
            } else {
                echo $errorstr;
            }
        }
        function add_kewords($keyrds, $type)
        {
            $arr = explode(',', $keyrds);
            echo '<pre>';
            print_r($arr);
            die;
        }
    }

    ///Add_Song
    public function Add_Song()
    {
        $data = array();
        $data['sortby'] = null;
        $data['page'] = null;
        $data['msg'] = null;
        $data['case'] = null;
        $data['status'] = null;
        $data['edit_id'] = null;

        ///form data
        $data['artist_id'] = null;
        $data['artist_name'] = null;
        $data['album_id'] = null;
        $data['song_title'] = null;
        $data['key_words_value'] = null;
        $data['description'] = null;
        $data['song_seo'] = null;
        $data['itunes_url']  = null;
        $data['amazon_url']   = null;
        $data['lastfm_url']    = null;
        $data['years']     = null;
        $data['picture']      = null;
        $data['selected_artists_value']       = null;
        $data['video_code']        = null;
        $data['ranking_order']         = null;



        ///edit_id
        if (isset($_GET['edit_id'])) {
            $data['edit_id'] = $_GET['edit_id'];
        }

        ///msg
        if (isset($_GET['msg'])) {
            $data['msg'] = $_GET['msg'];
        }

        ///case
        if (isset($_GET['case'])) {
            $data['case'] = $_GET['case'];
        }



        ///common  lines
        $data['currentFile'] = 'addedit_song';
        $data = top_file_data($data);
        $data['title'] = GetTitle();

        return view('admin.addedit_song', $data);
    }

    ///Song_Delete
    public function Song_Delete()
    {
        if (!empty($_POST['del_id'])) {
            extract($_POST);
            $del_qry = "Delete from tbl_songs_artist_album where song_id='" . $del_id . "'";
            \App\Models\Songs::GetRawData($del_qry);

            $del_qry = "Delete from tbl_reviews where song_id='" . $del_id . "'";
            \App\Models\Songs::GetRawData($del_qry);


            $sql = "DELETE from tbl_songs where id = '" . $del_id . "'";
            \App\Models\Songs::GetRawData($sql);

            echo 'done';
        } else {
            echo 'Error';
        }
    }

    ///Song_Actions
    public function Song_Actions()
    {
        if (!empty($_POST['ids'])) {
            if ($_POST['dropdown'] == 'Delete') { // from button name="delete"
                $checkbox = $_POST['ids']; //from name="checkbox[]"
                $countCheck = count($_POST['ids']);

                for ($i = 0; $i < $countCheck; $i++) {
                    $del_id    = base64_decode($checkbox[$i]);

                    $sql = "DELETE from tbl_songs_artist where song_id = '" . $del_id . "' ";
                    $result =  \App\Models\Songs::GetRawData($sql);

                    $del_qry = "Delete from  tbl_reviews where song_id='" . $del_id . "'";
                    \App\Models\Songs::GetRawData($del_qry);

                    $sql = "DELETE from tbl_songs where id = '" . $del_id . "' ";
                    $result = \App\Models\Songs::GetRawData($sql);
                }
                if (empty($result)) {
                    $okmsg = base64_encode("Deletion Successfully Done.");
                    $url = "admin/ads_list?msg=$okmsg&case=1";
                    return  redirect($url);
                } else {
                    $errormsg = base64_encode('There are something wrong');
                    $url = "admin/ads_list?msg=$errormsg&case=2";
                    return redirect($url);
                }
            }


            if ($_POST['dropdown'] == 'Active') { // from button name="delete"
                $checkbox = $_POST['ids']; //from name="checkbox[]"
                $countCheck = count($_POST['ids']);

                for ($i = 0; $i < $countCheck; $i++) {
                    $del_id  = base64_decode($checkbox[$i]);
                    $qry = "select song_status from tbl_songs where id='" . $del_id . "' ";
                    $resul = \App\Models\Songs::GetRawDataAdmin($qry);
                    $status = $resul['song_status'];
                    if ($status == 0) {
                        $status = 1;
                    }

                    $del_id  = base64_decode($checkbox[$i]);
                    $sql = "update tbl_songs set song_status=$status where id='" . $del_id . "' ";
                    $result = \App\Models\Songs::GetRawData($sql);
                }
                if (empty($result)) {
                    $okmsg = base64_encode("status changed successfully.");
                    $url = "admin/song_list?msg=$okmsg&case=1";
                    return  redirect($url);
                } else {
                    $errormsg = base64_encode('There are something wrong');
                    $url = "admin/song_list?msg=$errormsg&case=2";
                    return redirect($url);
                }
            }

            if ($_POST['dropdown'] == 'Inactive') { // from button name="delete"
                $checkbox = $_POST['ids']; // from name="checkbox[]"
                $countCheck = count($_POST['ids']);

                for ($i = 0; $i < $countCheck; $i++) {
                    $del_id  = base64_decode($checkbox[$i]);
                    $qry     = "select song_status from tbl_songs where id='" . $del_id . "' ";

                    $resul   = \App\Models\Songs::GetRawDataAdmin($qry);
                    $status  = $resul['song_status'];
                    if ($status == 1) {
                        $status = 0;
                    }
                    $del_id  = base64_decode($checkbox[$i]);
                    $sql = "update tbl_songs set song_status=$status where id='" . $del_id . "'";
                    $result =  \App\Models\Songs::GetRawData($sql);
                }

                if (empty($result)) {
                    $okmsg = base64_encode("status changed successfully.");
                    $url = "admin/song_list?msg=$okmsg&case=1";
                    return  redirect($url);
                } else {
                    $errormsg = base64_encode('There are something wrong');
                    $url = "admin/song_list?msg=$errormsg&case=2";
                    return redirect($url);
                }
            }

            if ($_POST['dropdown'] == 'sort_ranking') { // from button name="delete"
                $checkbox = $_POST['ids']; // from name="checkbox[]"
                $countCheck = count($_POST['ids']);

                for ($i = 0; $i < $countCheck; $i++) {
                    $del_id    = base64_decode($checkbox[$i]);
                    $order_num = $_REQUEST['order_' . $del_id];

                    /*if($order_num!="" && $order_num!=0)
                   { */
                    $sql = "update tbl_songs_artist_album set ranking_order = '$order_num' where id='" . $del_id . "'";

                    $result =  \App\Models\Songs::GetRawData($sql);
                }


                if (empty($result)) {
                    $okmsg = base64_encode('Ranking order changed successfully.');
                    $url = "admin/song_list_ranking?msg=$okmsg&case=1";
                    return  redirect($url);
                } else {
                    $errormsg = base64_encode('There are something wrong');
                    $url = "admin/song_list_ranking?msg=$errormsg&case=2";
                    return redirect($url);
                }
            }
        } else {
            $errormsg = base64_encode('First select a record to perform some action');
            $url = "admin/song_list?msg=$errormsg&case=2";
            return redirect($url);
        }
    }

    ///Change_Song_Status
    public function Change_Song_Status()
    {
        if ($_POST) {
            extract($_POST);

            $del_qry = "update tbl_songs set song_status='" . $status . "' where id='" . $song_id . "'";

            \App\Models\Songs::GetRawData($del_qry);



            if ($status == 0) {
                //echo '<a href="song_list?status='.base64_encode(1).'&status_id='.base64_encode($id).'"><img src="images/disable.gif" border="0" class="Action" title="Activate"></a>';
                echo '<a href="javascript:;" onclick = "change_status(' . $song_id . ', 1)" id = "remove_song_' . $song_id . '"><img src="images/disable.gif" border="0" class="Action" title="Activate"></a>';
            }
            if ($status == 1) {
                //echo '<a href="song_list?status='.base64_encode(0).'&status_id='.base64_encode($id).'"><img src="images/enable.gif" border="0" class="Action" title="Blocked"></a>';
                echo '<a href="javascript:;" onclick = "change_status(' . $song_id . ', 0)" id = "remove_song_' . $song_id . '"><img src="images/enable.gif" border="0" class="Action" title="Blocked"></a>';
            }
        }
    }

    ///Load_Artist
    public function Load_Artist()
    {
        $srch_search_sess = $_GET['search'];
        $artist_list = "select id, artist_name from tbl_artists where artist_status = 1 and  artist_name like '$srch_search_sess%' order by '$srch_search_sess' limit 0,100";

        //100000
        $admin_artist_list = \App\Models\Songs::GetRawData($artist_list);

        $data_results = array();
        $i = 0;
        foreach ($admin_artist_list as $val) {
            $val = (array)$val;
            $data_results[$i]['value'] = $val['id'];
            $data_results[$i]['text'] = stripslashes(html_entity_decode($val['artist_name']));
            $i++;
        }


        echo json_encode($data_results);
    }

    ///Artist_Song_List
    public function Artist_Song_List()
    {
        $data = array();
        $data['sortby'] = null;
        $data['page'] = null;
        $data['msg'] = null;
        $data['case'] = null;
        $data['status'] = null;
        $data['status_id'] = null;
        $data['latest'] = null;
        $data['song_id'] = null;



        ///sortby
        if (isset($_GET['sortby'])) {
            $data['sortby'] = $_GET['sortby'];
        }

        ///page
        if (isset($_GET['page'])) {
            $data['page'] = $_GET['page'];
        }

        ///msg
        if (isset($_GET['msg'])) {
            $data['msg'] = $_GET['msg'];
        }
        ///status_id
        if (isset($_GET['status_id'])) {
            $data['status_id'] = $_GET['status_id'];
        }

        ///song_id
        if (isset($_GET['song_id'])) {
            $data['song_id'] = $_GET['song_id'];
        }

        ///status
        if (isset($_GET['status'])) {
            $data['status'] = $_GET['status'];
        }

        ///case
        if (isset($_GET['case'])) {
            $data['case'] = $_GET['case'];
        }

        ///common  lines
        $data['currentFile'] = 'artist_list_song';
        $data['targetpage'] = 'artist_list_song';
        $data = top_file_data($data);
        $data['title'] = GetTitle();

        return view('admin.artist_list_song', $data);
    }


    ///Artist_List_Album_Song
    public function Artist_List_Album_Song()
    {
        $data = array();
        $data['sortby'] = null;
        $data['page'] = null;
        $data['msg'] = null;
        $data['case'] = null;
        $data['status'] = null;
        $data['status_id'] = null;
        $data['latest'] = null;
        $data['song_id'] = null;
        $data['artist_id'] = null;



        ///sortby
        if (isset($_GET['sortby'])) {
            $data['sortby'] = $_GET['sortby'];
        }

        ///page
        if (isset($_GET['page'])) {
            $data['page'] = $_GET['page'];
        }

        ///msg
        if (isset($_GET['msg'])) {
            $data['msg'] = $_GET['msg'];
        }
        ///status_id
        if (isset($_GET['status_id'])) {
            $data['status_id'] = $_GET['status_id'];
        }

        ///song_id
        if (isset($_GET['song_id'])) {
            $data['song_id'] = $_GET['song_id'];
        }

        ///artist_id
        if (isset($_GET['artist_id'])) {
            $data['artist_id'] = $_GET['artist_id'];
        }

        ///status
        if (isset($_GET['status'])) {
            $data['status'] = $_GET['status'];
        }

        ///case
        if (isset($_GET['case'])) {
            $data['case'] = $_GET['case'];
        }

        ///common  lines
        $data['currentFile'] = 'artist_list_album_song';
        $data['targetpage'] = 'artist_list_album_song';
        $data = top_file_data($data);
        $data['title'] = GetTitle();

        return view('admin.artist_list_album_song', $data);
    }

    ///Addedit_Song_Artist_Album
    public function Addedit_Song_Artist_Album()
    {
        $data = array();
        $data['sortby'] = null;
        $data['page'] = null;
        $data['msg'] = null;
        $data['case'] = null;
        $data['status'] = null;
        $data['status_id'] = null;
        $data['latest'] = null;
        $data['song_id'] = null;
        $data['artist_id'] = null;



        ///sortby
        if (isset($_GET['sortby'])) {
            $data['sortby'] = $_GET['sortby'];
        }

        ///page
        if (isset($_GET['page'])) {
            $data['page'] = $_GET['page'];
        }

        ///msg
        if (isset($_GET['msg'])) {
            $data['msg'] = $_GET['msg'];
        }
        ///status_id
        if (isset($_GET['status_id'])) {
            $data['status_id'] = $_GET['status_id'];
        }

        ///song_id
        if (isset($_GET['song_id'])) {
            $data['song_id'] = $_GET['song_id'];
        }

        ///artist_id
        if (isset($_GET['artist_id'])) {
            $data['artist_id'] = $_GET['artist_id'];
        }

        ///status
        if (isset($_GET['status'])) {
            $data['status'] = $_GET['status'];
        }

        ///case
        if (isset($_GET['case'])) {
            $data['case'] = $_GET['case'];
        }

        ///common  lines
        $data['currentFile'] = 'addedit_song_artist_album';
        $data['targetpage'] = 'addedit_song_artist_album';
        $data = top_file_data($data);
        $data['title'] = GetTitle();

        return view('admin.addedit_song_artist_album', $data);
    }

    ///Song_Artist_Album_Process
    public function Song_Artist_Album_Process()
    {

        if (isset($_POST)) {
            $errorstr = "";
            $case = 1;

            function SEO($input)
            {
                $input = str_replace("&nbsp;", " ", $input);
                $input = str_replace(array("'", "-"), "", $input); //remove single quote and dash
                $input = mb_convert_case($input, MB_CASE_LOWER, "UTF-8"); //convert to lowercase
                $input = preg_replace("#[^a-zA-Z]+#", "-", $input); //replace everything non an with dashes
                $input = preg_replace("#(-){2,}#", "$1", $input); //replace multiple dashes with one
                $input = trim($input, "-"); //trim dashes from beginning and end of string if any
                return $input;
            }


            $artist_id    = trim($_REQUEST['artist_id']);
            $song_id    = trim($_REQUEST['song_id']);
            $album   =  sizeof($_REQUEST['album']);

            $dec_artist_id    = base64_decode(trim($_REQUEST['artist_id']));
            $dec_id    = base64_decode(trim($_REQUEST['song_id']));


            $song_list = "SELECT sa.id,a.artist_img,s.song_title,a.artist_name, sa.song_id, sa.artist_id FROM tbl_songs s, tbl_songs_artist sa, tbl_artists a where 1=1 AND a.id = sa.artist_id AND sa.song_id = s.id AND sa.song_id = '$dec_id'";
            $multi_artist = \App\Models\Songs::GetRawData($song_list);
            $count_num = count($multi_artist);
            $song_list_arr    =    \App\Models\Songs::GetRawData($song_list);
            $sizeofalbum  = sizeof($_REQUEST['album']);
            $update_id = $_REQUEST['update_id'];


            if (!$song_list_arr) {
                $errorstr .= "Invalid song and artist ID\n";
                $case = 0;
            }
            if ($case == 1) {
                $arr  = $_REQUEST['album'];
                \App\Models\Songs::GetRawData("update tbl_songs_artist_album set display_status = 0 where song_id='" . stripslashes($dec_id) . "' AND artist_id='" . stripslashes($dec_artist_id) . "'");

                $check_count = 0;
                for ($m = 0; $m <= $sizeofalbum; $m++) {
                    if ($count_num > 1) {
                        foreach ($multi_artist as $multi_artist) {
                            $artist_get_id  =  $multi_artist['artist_id'];

                            $query_list = "select display_status from tbl_songs_artist_album where song_id = $dec_id AND artist_id = $artist_get_id  AND album_id = '" . $arr[$m] . "'";

                            $album_list_arr    =    \App\Models\Songs::GetRawData($query_list);

                            //echo $album_list_arr['display_status'];


                            if ($album_list_arr) {
                                if ($album_list_arr['display_status'] == 0) {
                                    \App\Models\Songs::GetRawData("update tbl_songs_artist_album set display_status = 1 where song_id='" . stripslashes($dec_id) . "' AND artist_id='" . stripslashes($artist_get_id) . "' AND album_id = '" . $arr[$m] . "'");
                                }
                            } else {
                                $check_count++;

                                if ($arr[$m] != "" && $arr[$m] != 0) {
                                    \App\Models\Songs::GetRawData("insert into tbl_songs_artist_album set song_id='" . stripslashes($dec_id) . "',artist_id='" . stripslashes($artist_get_id) . "',status='1', 	display_status='1', posted_date='" . time() . "', album_id = '" . $arr[$m] . "'");
                                }
                            }
                        }
                    } else {
                        $query_list = "select display_status from tbl_songs_artist_album where song_id = $dec_id AND artist_id = $dec_artist_id  AND album_id = '" . $arr[$m] . "'";

                        $album_list_arr    =    \App\Models\Songs::GetRawData($query_list);


                        if ($album_list_arr) {
                            if ($album_list_arr['display_status'] == 0) {
                                \App\Models\Songs::GetRawData("update tbl_songs_artist_album set display_status = 1 where song_id='" . stripslashes($dec_id) . "' AND artist_id='" . stripslashes($dec_artist_id) . "' AND album_id = '" . $arr[$m] . "'");
                            }
                        } else {
                            $check_count++;

                            if ($arr[$m] != "" && $arr[$m] != 0) {
                                \App\Models\Songs::GetRawData("insert into tbl_songs_artist_album set song_id='" . stripslashes($dec_id) . "',artist_id='" . stripslashes($dec_artist_id) . "',status='1', 	display_status='1', posted_date='" . time() . "', album_id = '" . $arr[$m] . "'");
                            }
                        }
                    }
                }

                echo 'done-SEPARATOR-' . SERVER_ADMIN_PATH . "artist_list_album_song?song_id=$song_id&artist_id=$artist_id";
            } else {
                echo $errorstr;
            }
        }
    }
}
