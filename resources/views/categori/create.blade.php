@extends('layouts.app')
  @section('title','Dahboard')
  @section('page-title','Tambah Data')
  @section('content')
  <div class="row">
    <!-- left column -->
    <div class="col-md-8">
      <!-- general form elements -->
      <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">Tambah Kategori</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form action="{{ route('categori.store')}}" method="POST">
            @method('POST')
            @csrf
          <div class="box-body">
            <div class="form-group">
            @if($errors->has('nama_kategori'))
            <div class="alert alert-danger">
            <strong>{{$errors->first('nama_kategori')}}</strong>
            </div>
            @endif
              <label for="exampleInputEmail1">Nama Kategori</label>
              <input type="text" class="form-control" name="nama_kategori" placeholder="Kategori"  value="{{ old('nama_kategori') }}">
            </div>
            <div class="form-group">
            @if($errors->has('slug'))
            <div class="alert alert-danger">
            <strong>{{$errors->first('slug')}}</strong>
            </div>
            @endif
              <label for="exampleInputEmail1">Slug</label>
              <input type="text" class="form-control" name="slug" placeholder="slug"  value="{{ old('slug') }}">
            </div>
          </div>
          <!-- /.box-body -->
          <div class="box-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="{{ route('categori.index')}}" class="btn btn-danger">Kembali</a>

          </div>
        </form>
      </div>
    </div>
  </div>
      <!-- /.box -->

  @endsection