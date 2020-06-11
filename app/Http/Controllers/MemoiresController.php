<?php

namespace App\Http\Controllers;

use App\Categories;
use Illuminate\Database\Eloquent\Builder;
use App\Http\Resources\CategoriesRessource;
use App\Http\Resources\MediasRessource;
use App\Http\Resources\MediaTypesRessource;
use App\Http\Resources\MemoiresRessource;
use App\Http\Resources\MemoireStatusRessource;
use App\Media;
use App\Mediatype;
use App\Memoire;
use App\MemoireStatus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MemoiresController extends Controller
{
    public function getMemoires()
    {
        $memoires = Memoire::with(['status', 'categories', 'media'])->get();
        return MemoiresRessource::collection($memoires);
    }

    public function addOrUpdate(Request $request)
    {
        $datas = Validator::make(
            $request->input(),
            [
                'id' => '',
                'titre' => 'required',
                'resumer' => 'required',
                'description' => 'required',
                'auteur' => 'required',
                'id_categorie' => 'required|numeric',
                'id_status' => 'required|numeric',
                'id_media' => 'required|numeric',
            ]
        )->validate();
        $memoire = Memoire::find($datas['id']);
        if (!$memoire) {
            $addToDb = new Memoire;
        } else {
            $addToDb = $memoire;
        }
        $addToDb->titre = $datas['titre'];
        $addToDb->resumer = $datas['resumer'];
        $addToDb->description = $datas['description'];
        $addToDb->auteur  = $datas['auteur'];
        $addToDb->id_categorie = $datas['id_categorie'];
        $addToDb->id_status = $datas['id_status'];
        $addToDb->id_media = $datas['id_media'];
        $addToDb->save();

        return new MemoiresRessource($addToDb);
    }

    public function getAllSelect()
    {
        //all categories
        $cat = CategoriesRessource::collection(Categories::all());
        //All medias
        $med = MediaTypesRessource::collection(Mediatype::all());
        //All status
        $stat = MemoireStatusRessource::collection(MemoireStatus::all());

        return ['categorie' => $cat, 'mediatype' => $med, 'status' => $stat];
    }
    function deleteMemoires($id)
    {
        $data = Memoire::destroy($id) ? "Memoire bien supprimee" : "Erreur dans la suppression de la memoire";
        return json_encode(["status" => $data]);
    }

    function ordreDatas(Request $request) {
        $environnement = Categories::where('nom','=','Environnement')->first();
        $datas = Memoire::whereHas('categories', function (Builder $query) use ($environnement){
            $query->where('id_categorie', '=',  $environnement->id);
        })->orderBy('created_at', 'DESC')->get();
        return MemoiresRessource::collection($datas);

    }
}
