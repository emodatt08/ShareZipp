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

    public function index(Request $request, $folder_id) {
        $files = FileEntry::where('folder_id', $folder_id)->get();
        $folderName = $files[0]->folder_id;
        return view('files.index', compact('files', 'folderName'));
    }

    /**
     * method to receive the post from our file upload form
     * @param $request instance
     * @return json
     */
    public function uploadFile(Request $request) {
     if(!$this->checkFolderName($request)):
            $file = $request->file('file');
            //dd($file);
            $filename = $file->getClientOriginalName();
            $path = hash( 'sha256', time());
            $folderId = str_replace(" ", "", $request['folderIndexName']);
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

    else:
        return response()->json([
            'failure' => "A Folder with the same name already exists"
        ], 200);
    endif;
    }



    public function create() {
        return view('files.create');
    }

    public function checkFolderName($request){
       return Folder::where('user_id', Auth::user()->id)->where('folder_name', $request['folderIndexName'])->first();
   
    }

}
