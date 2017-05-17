@extends('layouts.app')

@section('content')
<div class="meal">
  <div class="container">
      <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading">Meals
                  <a href="Meals/create">
                    <i class="fa fa-plus pull-right"></i>
                  </a>
                </div>
                <div class="panel-body">
                  	<table class="table table-bordered table-hover table-striped table-responsive ">
                      <thead>
                          <tr>
                            <th>#ID</th>
                            <th>title</th>
                            <th>price</th>
                            <th class="desc">description</th>
                            <th>status</th>
                            <th>image</th>
                            <th>by user</th>
                            <th><i class="fa fa-close"></i> delete</th>
                            <th><i class="fa fa-edit"></i> edit</th>
                          </tr>
                      </thead>
                      <tbody>
                        @foreach($meals as $meal)
                          <tr>
                            <td>{{ $meal->id }}</td>
                            <td>{{ $meal->title }}</td>
                            <td>{{ $meal->price }}</td>
                            <td class="desc">{{ $meal->description }}</td>
                            <td>
                              @if($meal->status == 0)
                                <span class="disActive">Disactive</span>
                              @elseif($meal->status == 1)
                                <span class="active">Active</span>
                              @endif
                            </td>
                            <td><img class="img-responsive img-thumbnail imgTable" src="{{ asset('image/meals/'.$meal->img) }}" /></td>
                            <td>{{ $meal->user->name }}</td>
                            <td>
                              {!! Form::open(['method'=>'DELETE', 'route'=>['Meals.destroy',  $meal->id]]) !!}
                                {!! Form::submit('Delete', ['class'=>'btn btn-danger confirm']) !!}
                              {!! Form::close() !!}
                            </td>
                            <td>
                              <a href="Meals/{{ $meal->id }}/edit" class="btn btn-info">Edit</a>
                            </td>
                          </tr>
                        @endforeach
                      </tbody>
                  	</table>
                    <div class="pagination col-lg-12">
                      {!! $meals->render() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
