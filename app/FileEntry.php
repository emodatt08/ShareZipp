<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FileEntry extends Model
{
    //
    protected $fillable = ['filename', 'mime', 'path', 'size', 'folder_id', 'file_ext'];


    public function folder(){
        return $this->belongsTo('App\Folders','folder_id', 'folder_id');
    }
}
