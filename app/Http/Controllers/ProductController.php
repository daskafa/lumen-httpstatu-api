<?php


namespace App\Http\Controllers;


use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{

    public function showAll()
    {
        return response()->json(Product::all());
    }

    public function showProductCategory()
    {
        return response()->json(Product::with('category')->get());
    }

    public function show($id)
    {
        return response()->json(Product::find($id));
    }

    public function save(Request $request)
    {
        $product = Product::create($request->all());

        return response()->json($product);
    }

    public function update(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->update($request->all());

        return response()->json($product);
    }

    public function delete($id)
    {
        Product::findOrFail($id)->delete();

        return response()->json('Ürün Başarıyla Silinmiştir');
    }

}
