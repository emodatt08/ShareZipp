@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Downloaded <b>0</b> Times</div>

                <div class="card-body">
                    <p>Folder Name: <h5>{{$folderName}}</h5></p>
                    <p>File Size: <b>{{$folderSize}}</b></p>
                    <p><a href="{{ url('zip/download/'.$folderName) }}" class="btn btn-danger">Download</a></p>                                   
                </div>
            </div>
        </div>
    </div>
</div>
@endsection