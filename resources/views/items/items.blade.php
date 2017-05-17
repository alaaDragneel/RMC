@extends('layouts.app')

@section('content')
<div class="item">
  <div class="container">
      <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading">Items 
                  <a href="Items/create">
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
                            <th>menu</th>
                            <th><i class="fa fa-close"></i> delete</th>
                            <th><i class="fa fa-edit"></i> edit</th>
                          </tr>
                      </thead>
                      <tbody>
                        @foreach($items as $item)
                          <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->title }}</td>
                            <td>{{ $item->price }}</td>
                            <td class="desc">{{ $item->description }}</td>
                            <td>
                            @if($item->status == 0)
                              <span class="disActive">Disactive</span>
                            @elseif($item->status == 1)
                              <span class="active">Active</span>
                            @else
                              dog   
                            @endif  
                            </td>
                            <td><img class="img-responsive img-thumbnail imgTable" src="{{ asset('image/items/'.$item->img) }}" /></td>
                            <td>{{ $item->user->name }}</td>
                            <td>{{ $item->menu->title }}</td>
                            <td>
                              {!! Form::open(['method'=>'DELETE', 'route'=>['Items.destroy',  $item->id]]) !!}
                                {!! Form::submit('Delete', ['class'=>'btn btn-danger confirm']) !!}
                              {!! Form::close() !!}
                            </td>
                            <td>
                              <a href="Items/{{ $item->id }}/edit" class="btn btn-info">Edit</a>
                            </td>
                          </tr>
                        @endforeach
                      </tbody>
                  	</table>
                    <div class="pagination col-lg-12">
                      {!! $items->render() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
