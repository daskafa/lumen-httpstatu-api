<?php


namespace App\Http\Controllers;


use App\Models\Category;
use Illuminate\Support\Facades\DB;

class MainController extends Controller
{

    public function show($code)
    {
        $query = DB::table('mains')->where('statu', $code)->get();
        if (empty($query[0])){
            return response()->json([
                'Hata' => 'Belirtilen Statu Kodu Mevcut Değil veya Kayıtlı Değil'
            ], 404);
        }
        $q = $query[0];
        $category = Category::find($q->category_id);
        return response()->json([
            'Girilen Statu' => $q->statu,
            'Mesaj' => $q->message,
            'Açıklama' => $q->information,
            'Kategori' => $category->name,
            'Kategori Açıklaması' => $category->information,
            'Kaynak' => 'https://www.kukumav.net'
        ]);

    }

}
