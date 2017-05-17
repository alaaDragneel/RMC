@extends('layouts.app')

@section('content')
<div class="item">
  <div class="container">
    <div class="row">
        <div class="col-lg-8 mar">
          <div class="panel panel-primary text-center">
              <div class="panel-heading">edit {{ $item->title }} item</div>
              <div class="panel-body">
                {!! Form::model($item, array('method'=>'PATCH', 'action'=>['ItemController@update', $item->id] ,'files'=>'true')) !!}
                
                  <div class="form-group col-lg-3">
                    {!! Form::text('title', null, array('required', 'class'=>'form-control', 'placeholder'=>'Add The Title Here...')) !!}
                  </div>
                  
                  <div class="form-group col-lg-3">
                    {!! Form::select('menu_id',$menu, null,
                    array('required', 'class'=>'form-control')) !!}
                  </div>
                  <div class="form-group col-lg-3">
                    {!! Form::select('status', ['0'=>'DisActive', '1'=>'Active'], null,array('required', 'class'=>'form-control')) !!}
                  </div>
                  <div class="form-group col-lg-3">
                    {!! Form::text('price', null, array('required', 'class'=>'form-control', 'placeholder'=>'Add The Price Here...')) !!}
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
            <img src="{{asset('image/items/'.$item->img)}}" alt="{{$item->title}}" title="{{$item->title}}" class="img-responsive img-thumbnail img-rounded editImg">
          </div>  
    </div>
  </div>
</div>
@endsection