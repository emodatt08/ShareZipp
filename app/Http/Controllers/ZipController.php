<?php

namespace App\Http\Controllers;

use App\FileEntry;
use Illuminate\Http\Request;

class ZipController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($folderName)
    {
        $zip = new \ZipArchive;
        $files = FileEntry::where('folder_id', $folderName)->get();
        
        $tmp_file = storage_path('assets/myzip.zip');
      
            if ($zip->open($tmp_file,  \ZipArchive::CREATE)) {
                foreach($files as $file){
                    //dd(storage_path("files/uploads/".$file->path)."/".$file->filename, $file->filename);
                    $zip->addFile(storage_path("files/uploads/".$file->path)."/".$file->filename, $file->filename);
                    //$zip->addFile('folder/bootstrap.min.js', 'bootstrap.min.js');                
                }
                $zip->close();            
                header('Content-disposition: attachment; filename='.$folderName.'.zip');
                header('Content-type: application/zip');
                readfile($tmp_file);
        } else {
            echo 'Failed!';
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($folderName)
    {
      
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
