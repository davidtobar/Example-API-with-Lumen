<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/



// $router->get('/', function () use ($router) {
//     return view('customer.index');
// });

//GET
$router->get('/',[
    'as' => 'customer.index', 'uses' => 'UsersController@index'
]);


$router->get('/key', function (){
	return str_random(32);
});


//login
$router->post('/users/login/', ['uses' => 'UsersController@getToken']);


$router->group(['middleware' => []], function () use ($router){
	
	//Create
	$router->get('users/create', [
	    'as' => 'customer.create', 'uses' => 'UsersController@create'
	]);
	$router->post('users', [
	    'as' => 'customer.createUser', 'uses' => 'UsersController@createUser'
	]);

	// Update
	$router->get('users/{id}/edit', [
	    'as' => 'customer.edit', 'uses' => 'UsersController@edit'
	]);
	$router->patch('users/{id}', [
	    'as' => 'customer.update', 'uses' => 'UsersController@update'
	]);

	// Delete
	$router->get('users/{id}/delete', [
	    'as' => 'customer.delete', 'uses' => 'UsersController@delete'
	]);
	$router->delete('users/{id}', [
	    'as' => 'customer.destroy', 'uses' => 'UsersController@destroy'
	]);

});

