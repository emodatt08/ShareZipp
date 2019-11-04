<?php

namespace App\Http\Controllers;

use App\Folder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FolderController extends Controller
{
    
    public function index(Request $request){
        $folders = Folder::where('user_id', Auth::user()->id)->select('folder_name', 'folder_id')->distinct('folder_id')->get();
    
        return view('folders.folders', compact('folders'));
    }
}
