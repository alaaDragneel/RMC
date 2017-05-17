@extends('layouts.app')

@section('content')
<div class="meal">
  <div class="container">
    <div class="row">
        <div class="col-lg-8 mar">
          <div class="panel panel-primary ">
              <div class="panel-heading">edit {{ $meal->title }} meal</div>
              <div class="panel-body">
                {!! Form::model($meal, array('method'=>'PATCH', 'action'=>['MealController@update', $meal->id] ,'files'=>'true')) !!}
                
                  <div class="form-group col-lg-3">
                    {!! Form::text('title', null, array('required', 'class'=>'form-control', 'placeholder'=>'Add The Title Here...')) !!}
                  </div>

                  <div class="form-group col-lg-3">
                    {!! Form::select('status', ['0'=>'DisActive', '1'=>'Active'], null,array('required', 'class'=>'form-control', 'placeholder'=>'----- choose the status -----')) !!}
                  </div>
                  <div class="form-group col-lg-3">
                    {!! Form::text('price', null, array('required', 'class'=>'form-control', 'placeholder'=>'Add The Price Here...')) !!}
                  </div>
                  <div class="form-group col-lg-3">
                    {!! Form::file('img', array('class'=>'form-control btn btn-warning')) !!}
                  </div>
                  <div class="form-group col-lg-12">
                    {!! Form::textarea('description', null,array('required', 'class'=>'form-control txt', 'placeholder'=>'Write the description here... ')) !!}
                  </div>
                  <div class="form-group">
                    @foreach($menus as $menu)
                      @if(count($menu->items) > 0)
                        <h4>{{ $menu->title }}</h4>
                      <div class="form-group col-lg-6 menuItems">
                        <ul>
                          @foreach($menu->items as $item)
                            <li>
                                <input 
                                  @if(in_array($item->id, $mealItemIDs))
                                  checked
                                  @endif
                                  type="checkbox"  
                                  name="items[]" 
                                  value="{{ $item->id }}">
                            <input
                             type="number" 
                             name="discount[{{ $item->id }}]" 
                             class="discount" 
                             @if(in_array($item->id, $mealItemIDs))
                             
                             value="{{$mealItemIDsWithDiscount[$item->id]}}"
                             @endif 
                             >

                             @if(in_array($item->id, $mealItemIDs))
                                  <span class="active">{{ $item->title }}</span>
                              @else   
                              {{ $item->title }} 
                              @endif

                             </li>
                          @endforeach
                        </ul>
                      </div>
                      @endif
                    @endforeach
                  </div>
                  <div class="clearfix"></div> 
                  <div class="form-group col-lg-2">
                    {!! Form::submit('Update', array('class'=>'form-control btn btn-primary')) !!}
                  </div>
                {!! Form::close() !!}
              </div>
            </div>
          </div>
          <div class="col-lg-4 mar">
            <img src="{{asset('image/meals/'.$meal->img)}}" alt="{{$meal->title}}" title="{{$meal->title}}" class="img-responsive img-thumbnail img-rounded editImg">
          </div>  
    </div>
  </div>
</div>
@endsection