<?php


namespace App\Http\Controllers;


use App\Models\Category;
use App\Models\Main;
use Illuminate\Support\Facades\DB;

class MainController extends Controller
{

    public function show($code)
    {
        $q = DB::table('mains')->where('statu', $code)->get();
        $category = $q[0]->category_id;
        return response()->json([
            'Sorgu' => $q,
            'kategori' => Category::find($category)
        ]);

    }

}
