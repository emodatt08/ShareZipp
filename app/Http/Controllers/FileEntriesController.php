<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FileEntry;
use App\Folder;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Auth;

class FileEntriesController extends Controller
{
    /**
     * get all the files saved in the database and list them in an HTML table.
     * @param $request instance
     */

    public function index(Request $request) {
        $files = FileEntry::all();
    
        return view('files.index', compact('files'));
    }

    /**
     * method to receive the post from our file upload form
     * @param $request instance
     * @return json
     */
    public function uploadFile(Request $request) {
        $file = $request->file('file');
        //dd($file);
        $filename = $file->getClientOriginalName();
        $path = hash( 'sha256', time());
        $folderId = $request['folderIndexName'];
        //dd($path);
        
        if(Storage::disk('uploads')->put($path.'/'.$filename,  File::get($file))) {
            
            $input['filename'] = $filename;
            $input['mime'] = $file->getClientMimeType();
            $input['file_ext'] = $request['fileType'];
            $input['path'] = $path;
            $input['folder_id'] = $folderId;
            $input['size'] = $file->getClientSize();
            
            //enter files
            $file = FileEntry::create($input);
           
            //enter folder
             $folder = Folder::create(['folder_id' => $folderId, 'folder_name' => $request['folderName'], 'user_id'=>Auth::user()->id]);


            return response()->json([
                'success' => true,
                'id' => $file->id
            ], 200);
        }
        return response()->json([
            'success' => false
        ], 500);
    }



    public function create() {
        return view('files.create');
    }

}
