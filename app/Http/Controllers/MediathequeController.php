<?php

namespace App\Http\Controllers;

use App\Categories;
use App\Http\Resources\CategoriesRessource;
use App\Http\Resources\MediasRessource;
use App\Media;
use App\Memoire;
use App\Http\Resources\MemoiresRessource;
use Illuminate\Http\Request;

class MediathequeController extends Controller
{
    function index()
    {
        $lastMemoires = app('App\Http\Controllers\MemoiresController')->lastMemoires();
        $lastPhotos = app('App\Http\Controllers\MemoiresController')->lastPhotos();
        // $categories = app('App\Http\Controllers\CategoriesController')->categories();   
        $lastVideos = Media::where('id_type', '=', 1)->get();
        $categories = Categories::all();

        return view('client.mediatheque', ['lastVideos' => $lastVideos]);

    }

   // POUR RÉCUPERER TOUTES LES VIDEOS 
    function getAllVideo() {
        $memoires = Media::all();
        return MediasRessource::collection($memoires);
    }
   // POUR RÉCUPERER UNE SEULE VIDEO  
    function getOneVideo($id) {
        $dataVideo = Media::find($id);
        return view('client.video');
    }

    // POUR RÉCUPERER TOUTES LES AUDIOS
    function getAllAudio() {
        $memoires = Media::all();
        return MediasRessource::collection($memoires);
    }
   // POUR RÉCUPERER UNE SEULE AUDIO  
    function getOneAudio($id) {
        $dataVideo = Media::find($id);
        return view('client.audio');
    }


    function vueEnvir() {
        return view('client.environnement');
    }

    function types()
    {
        $types = MediaTypesRessource::collection(Mediatype::all());
        return view('client.types', ['types' => $types]);
    }

    function getDatas(Request $request)
    {
        $lastMemoires = app('App\Http\Controllers\MemoiresController')->lastMemoires();
        $lastVideos = app('App\Http\Controllers\MemoiresController')->lastVideos();
        $lastPhotos = app('App\Http\Controllers\MemoiresController')->lastPhotos();
        $categories = app('App\Http\Controllers\CategoriesController')->categories();


        // return view('client.mediatheque', ['lol' => "George"]);

        
        //TODO utiliser les ressources 
        return json_encode('client.mediatheque', [
            'last' => $lastMemoires,
            'lastVideo' => $lastVideos,
            'lastPhotos' => $lastPhotos,
            'categories' => $categories
        ]);
    }

    // function getVideos(){

    //     $dataVideos = 
    // }
}
