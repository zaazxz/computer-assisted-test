<?php

namespace App\Http\Controllers;

use App\Models\Image;
use App\Imports\ImageImport;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;

class ImageController extends Controller
{
    /**
     * __construct
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['permission:images.index|images.create|images.delete']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $images = Image::latest()->when(request()->q, function($images) {
            $images = $images->where('title', 'like', '%'. request()->q . '%');
        })->paginate(10);

        return view('images.index', compact('images'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title'     => 'required',
            'image'     => 'required|mimes:jpg,bmp,png',
            'caption'   => 'required'
        ]);

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/images/', $image->hashName());

        $image = Image::create([
            'title'     => $request->input('title'),
            'link'      => $image->hashName(),
            'caption'   => $request->input('caption')
        ]);

        if($image){
            //redirect dengan pesan sukses
            return redirect()->route('images.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('images.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $image = Image::findOrFail($id);
        $link= Storage::disk('local')->delete('public/images/'.$image->link);
        $image->delete();

        if($image){
            return response()->json([
                'status' => 'success'
            ]);
        }else{
            return response()->json([
                'status' => 'error'
            ]);
        }
    }

    public function importimage(Request $request) {
        $data = $request->file('file');

        $namaFile = $data->getClientOriginalName();
        $data->move('ImageData', $namaFile);

        $import = Excel::import(new ImageImport, public_path('ImageData/' . $namaFile));

        if ($import) {
            //redirect dengan pesan sukses
            return redirect()->back()->with(['success' => 'Data Berhasil Diimport!']);
        } else {
            //redirect dengan pesan error
            return redirect()->back()->with(['error' => 'Data Gagal Diimport!']);
        }
    }
}
