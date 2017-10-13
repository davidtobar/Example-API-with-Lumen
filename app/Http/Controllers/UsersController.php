<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class UsersController extends Controller
{
    public function __construct(User $user) {
        $this->user = $user;
    }

	//Get users
    public function index(Request $request){  // unique method

    		//Eloquent
	        $users = User::all();

	        // return response()-> json($users, 200); // 200 todo esta bien
	        return view('customer.index',["users" => $users]);

    }

    // Create user

    public function create() {
        return view('customer.create');
    }

    public function createUser(Request $request){

    		// $data = $request->json()->all();

    		// $user = User::create([
    		// 	'name' => $data['name'],
    		// 	'username' => $data['username'],
    		// 	'email' => $data['email'],
    		// 	'password' => Hash::make($data['password']), // Hash::make cifrar el pass
    		// 	'api_token' => str_random(60)
    		// ]);

	       	// return response()-> json($user, 201);

    		$user = new User();
        	$user->name = $request->input('name');
        	$user->username = $request->input('username');
        	$user->email = $request->input('email');
        	$user->password  = Hash::make($request->input('password'));
        	$user->api_token = str_random(60);
        	$user->save();

        	return redirect()->route('customer.index');
    }


    public function edit($id) {
        $user = $this->user->query()->find($id);
        return view('customer.edit',["user" => $user]);
    }


    // Update user
    public function update(Request $request, $id)
    {
            // try {

                // $data = $request->json()->all();

                // $user = User::findOrFail($id);
                // $user->name = $data['name'];
                // $user->username = $data['username'];
                // $user->email = $data['email'];
                // $user->password = Hash::make($data['password']);

                // $user->save();
                // return response()->json($user, 200);

                $user = User::find($id);
                $user->name = $request->input('name');
                $user->username = $request->input('username');
                $user->email = $request->input('email');
                $user->password  = Hash::make($request->input('password'));
                $user->save();

                return redirect()->route('customer.index');

            // } catch (ModelNotFoundException $e) {
            //     return response()->json(['error' => 'No content'], 406);
            // }
    }

    //Delete user

    public function delete($id) {
        $user = $this->user->query()->findOrFail($id);
        return view('customer.delete', ['user' => $user]);
    }

    public function destroy($id) {
        $this->user->query()->findOrFail($id)->delete();
        return redirect()->route('customer.index');
    }

    
    // Login
    function getToken(Request $request){ 

        	if ($request->isJson()) {

        		try {
        			$data = $request->json()->all();

        			$user = User::where('username', $data['username'])->first();

        			if ($user && Hash::check($data['password'], $user->password)) {
                        return redirect()->route('customer.index');
                        // return response()-> json($user, 200);
        			}
        			else{
        				return response()-> json(['error' => 'No content'], 406);
        			}
        			
        		} catch (ModelNotFoundException $e) {
        			return response()-> json(['error' => 'No content'], 406);
        		}
        	}

        	return response()-> json(['error' => 'Unauthorized'], 401, []);
    }
}
