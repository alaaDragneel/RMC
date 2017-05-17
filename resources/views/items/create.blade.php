@extends('layouts.app')

@section('content')
<div class="item">
  <div class="container">
    <div class="row">
          <div class="panel panel-primary">
              <div class="panel-heading">Add New item</div>
              <div class="panel-body">
                {!! Form::open(array('route'=>'Items.store' ,'files'=>'true')) !!}
                
                  <div class="form-group col-lg-3">
                    {!! Form::text('title', null, array('required', 'class'=>'form-control', 'placeholder'=>'Add The Title Here...')) !!}
                  </div>
                  
                  <div class="form-group col-lg-3">
                    {!! Form::select('menu_id', $menus, null,
                    array('required', 'class'=>'form-control', 'placeholder'=>'----- choose the Menu -----')) !!}
                  </div>
                  <div class="form-group col-lg-3">
                    {!! Form::select('status', ['0'=>'DisActive', '1'=>'Active'], null,array('required', 'class'=>'form-control', 'placeholder'=>'----- choose the status -----')) !!}
                  </div>
                  <div class="form-group col-lg-3">
                    {!! Form::text('price', null, array('required', 'class'=>'form-control', 'placeholder'=>'Add The Price Here...')) !!}
                  </div>
                  <div class="form-group col-lg-12">
                    {!! Form::textarea('description', null,array('required', 'class'=>'form-control txt', 'placeholder'=>'Write the description here... ')) !!}
                  </div>
                  <div class="form-group col-lg-4">
                    {!! Form::file('img', array('required','class'=>'form-control btn btn-warning')) !!}
                  </div>
                  <div class="form-group col-lg-2">
                    {!! Form::submit('Add', array('class'=>'form-control btn btn-primary')) !!}
                  </div>
                {!! Form::close() !!}
              </div>
            </div>
      </div>
  </div>
</div>
@endsection