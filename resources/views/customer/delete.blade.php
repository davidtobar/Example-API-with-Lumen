@extends('layout.master')
@section('content')
    <form class="form-horizontal" role="form" method="POST" action="{{ route('customer.destroy', ['id' => $user->id]) }}">
        <input type="hidden" name="_method" value="DELETE">
        <div class="panel panel-default">
            <div class="panel-heading">
                Delete user
            </div>
            <div class="panel-body">
                <p>Are you sure to delete user {{ $user->name }}?</p>
            </div>
            <div class="panel-footer">
                <button type="submit" class="btn btn-sm btn-danger btn-addon"><i class="glyphicon glyphicon-ok"></i>Delete</button>
                <a href="{{ route('customer.index') }}" class="btn btn-default btn-sm btn-addon"><i class="glyphicon glyphicon-remove"></i>Cancel</a>
            </div>
        </div>
    </form>
@endsection