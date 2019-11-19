@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Share the link below</div>

                <div class="card-body">
                    <p><input size="90%" type="text" value="{{ url('share/download/'.$folderName) }}" readonly></p>                                   
                </div>
            </div>
        </div>
    </div>
</div>
@endsection