@extends('layouts.AdminLTE.index')

@section('icon_page', 'users')

@section('title', 'Usuarios')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
            <div class="box-body box-profile">

                <?= $render; ?>

            </div>
        </div>
    </div>

</div>

@endsection