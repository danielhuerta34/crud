@extends('layouts.AdminLTE.index')

@section('icon_page', 'dashboard')

@section('title', 'Dashboard ')

@section('menu_pagina')

@section('content')
<div class="row">


  <div class="col-md-12">
    <div class="box box-primary">
      <div class="box-body box-profile">

        <div class="row">
          <div class="col-md-6">
            <label>Fecha desde</label>
            <input type="text" class="form-control fecha" id="fecha_desde" placeholder="fecha desde" autocomplete="off">
          </div>
          <div class="col-md-6">
            <label>Fecha hasta</label>
            <input type="text" class="form-control fecha" id="fecha_hasta" placeholder="fecha hasta" autocomplete="off">
          </div>
        </div>
        <div class="row">
          <div class="col-md-12" style="margin-top: 10px;">
            <button class="btn btn-info btn-block filtrar_grafico">Filtrar</button>
          </div>
        </div>

        <div class="grafico">
          <?= $chart; ?>
        </div>

      </div>
    </div>
  </div>
  <!-- ./col -->
</div>
<!-- /.row -->
<script>
  $(function() {
    $(".fecha").datepicker({
      format: 'dd/mm/yyyy'
    });
  });

  $(document).on("click", ".filtrar_grafico", function() {
    let fecha_desde = $('#fecha_desde').val();
    let fecha_hasta = $("#fecha_hasta").val();

    if (fecha_desde != "" && fecha_hasta != "") {
      $.ajax({
        type: "POST",
        url: "{{ route('filtrar_grafico') }}",
        data: {
          fecha_desde: fecha_desde,
          fecha_hasta: fecha_hasta,
          _token: "{{ csrf_token() }}"
        },
        dataType: "html",
        beforeSend: function() {
          $('.grafico').html('<p style="font-size:28px;">cargado...</p>');
        },
        success: function(data) {
          console.log(data);
          $('.grafico').html(data);
        }
      });
    } else {
      $('.grafico').html('<div style="margin-top:10px;" class="alert alert-warning text-center">No se encontraron datos</div>');
    }

  });
</script>
<!-- /.row -->
@endsection