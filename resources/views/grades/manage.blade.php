@extends('layout/layout')

@section("title")
  Manage grade
@stop

@section("content")
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h2>Classes for Grade {{$grade -> grade}}</h2>
            @if(!$grade -> classes -> isEmpty())
              <table width="100%" class="table table-striped table-bordered table-hover">
                <tr>
                    <th>Class</th>
                    <th>Edit</th>
                    <th>Remove</th>
                </tr>
                @foreach($grade -> classes as $class)
                <tr>
                    <td>{{$class -> class}}</td>
                    <td><input type="button" class="btn btn-warning" value="Edit" onclick="removeClass({{$class -> class}})"></td>
                    <td><input type="button" class="btn btn-danger" value="remove" onclick="removeClass({{$class -> id}})"></td>
                </tr>
                @endforeach
              </table>
            @else
                  There are no available for this grade
            @endif

            <hr>
            <h3>Add new class</h3>
            <form method="post" action="/grade/{{$grade -> id}}/class">
              {{ csrf_field() }}
              <div class="form-group">
                <label for="class">Class Name:</label>
                <input type="text" class="form-control" id="class" name="class">
              </div>
              <input type="submit" class="btn btn-primary" value="Add class">
          </form>

          @if(count($errors))
          <ul>
            @foreach($errors -> all() as $error)
                <li>{{$error}}</li>
            @endforeach
          </ul>
          @endif
        </div>
        <div class="col-md-2"></div>
    </div>
@stop

@section("script")
  <script>
    //$('#dataTables-example').DataTable({responsive:true})
  function removeClass(class_id){
        $.ajax
    }
  </script>
@stop
