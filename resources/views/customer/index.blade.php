@extends('layout.master')
@section('content')

    <div class="panel panel-default">
        <div class="panel-heading">
            <a href="{{ route('customer.create') }}" class="btn btn-sm btn-success btn-addon"><i class="glyphicon glyphicon-plus"></i>Create</a>
        </div>
        <table class="table table-bordered has-action">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($users as $user)
                    <tr>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->username }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                            <a href="{{ route('customer.edit', ['id' => $user->id]) }}" class="btn btn-info btn-sm">Edit</a>
                            <a href="{{ route('customer.delete', ['id' => $user->id]) }}" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection