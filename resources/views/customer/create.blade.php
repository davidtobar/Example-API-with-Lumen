@extends('layout.master')
@section('content')
    <form class="form-horizontal" role="form" method="POST" action="{{ route('customer.createUser') }}">
        <div class="panel panel-default">
            <div class="panel-heading">
                Create new user
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                        <input type="text" name="name" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Username</label>
                    <div class="col-sm-10">
                        <input type="text" name="username" class="form-control" >
                        <p class="help-block"></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <input type="text" name="email" class="form-control" >
                        <p class="help-block"></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="text" name="password" class="form-control">
                        <p class="help-block"></p>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <button type="submit" class="btn btn-sm btn-success btn-addon"><i class="glyphicon glyphicon-ok"></i>Create</button>
                <a href="{{ route('customer.index') }}" class="btn btn-default btn-sm btn-addon"><i class="glyphicon glyphicon-remove"></i>Cancel</a>
            </div>
        </div>
    </form>
@endsection