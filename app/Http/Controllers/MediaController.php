<?php

namespace App\Http\Controllers;

use App\Http\Resources\MediasRessource;
use App\Media;

class MediaController extends Controller
{
    public function getMedias()
    {
        $media = Media::all();
        return MediasRessource::collection($media);
    }

}
