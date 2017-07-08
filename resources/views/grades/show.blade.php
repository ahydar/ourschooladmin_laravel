@extends('layout/layout')

@section("title")
  First
@stop

@section("content")
  <div class="container">
    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr>
                <th>Surname</th>
                <th>Classes</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
          @foreach($grades as $grade)
            <tr>
              <td>{{$grade -> grade}}</td>
              <td>
                  @if(!$grade -> classes -> isEmpty())
                        @foreach($grade -> classes as $class)
                              {{$class -> class}},
                        @endforeach
                  @endif
              </td>
              <td><a href="/grade/manage/{{$grade -> id}}" type="button" class="btn btn-primary btn-sm">Manaage Grade</a></td>
            </tr>
          @endforeach
        </tbody>
    </table>
  </div>
@stop

@section("script")
  <script>
    alertifyjs.success('Success message');
    //$('#dataTables-example').DataTable({responsive:true})
  </script>
@stop
