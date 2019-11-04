@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                

                <div class="card-body">
                    @if($folders->count())
                    <div class="card-group">
                       <div class="row">
                            @foreach($folders as $folder)
                                <div class="col-sm-6 mb20">
                                    <a href="{{ url('files/'.$folder->folder_id) }}"><img class="img-fluid m-x-auto d-block img-responsive" src="{{ url('files/folderLook.png') }}" alt=""></a>
                                    <p>{{ $folder->folder_name }}</p>
                                </div>
                               
                            @endforeach
                            </div>
                        </div>
                       
                       
                        
                        </div>


                    @else
                        You have no folders yet!
                    @endif 
                </div>
            </div>
        </div>
    </div>
</div>
@endsection