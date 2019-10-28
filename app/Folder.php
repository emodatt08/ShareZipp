<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Folder extends Model
{
    //
    public $tablename = "folders";
    public $primarykey = "id";
    protected $fillable = ['folder_id', 'folder_name', 'user_id'];

    public function files(){
        return $this->hasMany('App\FileEntry','folder_id', 'folder_id');
    }
}
