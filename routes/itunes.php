<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItunesSearch;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//test_info
Route::get('test_info', [ItunesSearch::class, 'test_info']);


//load_itunes_cron_file
Route::get('load_itunes_cron_file', [ItunesSearch::class, 'Load_Itunes_Cron_File']);


///load_itunes_cron_add_artists_and_songs_by_album
Route::get('load_itunes_cron_add_artists_and_songs_by_album', [ItunesSearch::class, 'Load_Itunes_Cron_Add_Artists_And_Songs_By_Album']);


///Load_Itunes_Cron_Fetch_Albums_And_Songs
Route::get('load_itunes_cron_fetch_albums_and_songs', [ItunesSearch::class, 'Load_Itunes_Cron_Fetch_Albums_And_Songs']);


///Load_Itunes_Cron_From_Song_Artist
Route::get('load_itunes_cron_from_song_artist', [ItunesSearch::class, 'Load_Itunes_Cron_From_Song_Artist']);
