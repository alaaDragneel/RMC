@extends('layouts.app')

@section('content')
<div class="menu">
  <div class="container">
    <div class="row">
        <div class="col-lg-8 mar">
          <div class="panel panel-primary text-center">
              <div class="panel-heading">edit {{ $menu->title }} Menu</div>
              <div class="panel-body">
                {!! Form::model($menu, array('method'=>'PATCH', 'action'=>['MenuController@update', $menu->id] ,'files'=>'true')) !!}
                
                  <div class="form-group col-lg-4">
                    {!! Form::text('title', null, array('required', 'class'=>'form-control', 'placeholder'=>'Add The Title Here...')) !!}
                  </div>
                  
                  <div class="form-group col-lg-4">
                    {!! Form::select('type', ['Food'=>'Food', 'Drinks'=>'Drinks', 'ColdDrinks'=>'Cold Drinks'], null,array('required', 'class'=>'form-control')) !!}
                  </div>
                  <div class="form-group col-lg-4">
                    {!! Form::select('status', ['0'=>'DisActive', '1'=>'Active'], null,array('required', 'class'=>'form-control', 'placeholder'=>'----- choose the status -----')) !!}
                  </div>
                  <div class="form-group col-lg-12">
                    {!! Form::textarea('description', null,array('required', 'class'=>'form-control txt', 'placeholder'=>'Write the description here... ')) !!}
                  </div>
                  <div class="form-group col-lg-4">
                    {!! Form::file('img', array('class'=>'form-control btn btn-warning')) !!}
                  </div>
                  <div class="form-group col-lg-2">
                    {!! Form::submit('Update', array('class'=>'form-control btn btn-primary')) !!}
                  </div>
                {!! Form::close() !!}
              </div>
            </div>
          </div>
          <div class="col-lg-4 mar">
            <img src="{{asset('image/menus/'.$menu->img)}}" alt="{{$menu->title}}" title="{{$menu->title}}" class="img-responsive img-thumbnail img-rounded editImg">
          </div>  
    </div>
  </div>
</div>
@endsection