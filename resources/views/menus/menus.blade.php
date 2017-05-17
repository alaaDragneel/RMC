@extends('layouts.app')

@section('content')
<div class="menu">
  <div class="container">
      <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading">Menus 
                  <a href="Menus/create">
                    <i class="fa fa-plus pull-right"></i>
                  </a>
                </div>
                <div class="panel-body">
                    <table class="table table-bordered table-hover table-striped table-responsive ">
                      <thead>
                          <tr>
                            <th>#ID</th>
                            <th>title</th>
                            <th>type</th>
                            <th class="desc">description</th>
                            <th>status</th>
                            <th>image</th>
                            <th>by user</th>
                            <th><i class="fa fa-close"></i> delete</th>
                            <th><i class="fa fa-edit"></i> edit</th>
                          </tr>
                      </thead>
                      <tbody>
                        @foreach($menus as $menu)
                          <tr>
                            <td>{{ $menu->id }}</td>
                            <td>{{ $menu->title }}</td>
                            <td>{{ $menu->type }}</td>
                            <td class="desc">{{ $menu->description }}</td>
                            <td>
                            @if($menu->status == 0)
                              <span class="disActive">Disactive</span>
                            @elseif($menu->status == 1)
                              <span class="active">Active</span>   
                            @endif  
                            </td>
                            <td><img class="img-responsive img-thumbnail imgTable" src="{{ asset('image/menus/'.$menu->img) }}" /></td>
                            <td>{{ $menu->user->name }}</td>
                            <td>
                              {!! Form::open(['method'=>'DELETE', 'route'=>['Menus.destroy',  $menu->id]]) !!}
                                {!! Form::submit('Delete', ['class'=>'btn btn-danger confirm']) !!}
                              {!! Form::close() !!}
                            </td>
                            <td>
                              <a href="Menus/{{ $menu->id }}/edit" class="btn btn-info">Edit</a>
                            </td>
                          </tr>
                        @endforeach
                      </tbody>
                  	</table>
                    <div class="pagination col-lg-12">
                      {!! $menus->render() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
