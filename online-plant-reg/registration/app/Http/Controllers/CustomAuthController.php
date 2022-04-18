<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use Hash;
use Session;

class CustomAuthController extends Controller
{
    public function login()
    {
        return view("auth.login");
    }
    
    public function registration()
    {

        return  view("auth.registration");
    }
    public function logout()
    {

        if(session::has('loginId'))       
        {
            session::pull('loginId');
            return redirect('login');
        }
    }

    public function dashboard()
    {
        $data=array();
        if(session::has('loginId'))       
        {
            $data=User::where('id','=',Session::get('loginId'))->first();
        

        }
        return view("dashboard",compact('data'));
    }

    public function loginUser(Request $request)
    {
        $request->validate([
          
            'email'=>'required|email',
            'password'=>'required|min:5|max:12'
 
        ]);
        $user=User::where('email','=',$request->email)->first();
        
        if($user)
        {

            
            if(Hash::check($request->password,$user->password))
            {             
                $request->session()->put('loginId',$user->id);
                return redirect('dashboard');
            }
            else
            {
                return back()->with('fail','Password not matched');

            }
        }

        else
        {
            return back()->with('fail','This email is not registered');
        }    
        
    }

    public function registerUser(Request $request)
    {
       $request->validate([
           
           'email'=>'required|email|unique:users',
           'password'=>'required|min:5|max:12'

       ]);
       $user=new User();
       $user->name=$request->name;
       $user->email=$request->email;
       $user->password=Hash::make($request->password);
       $res=$user->save();
       if($res)
       {
           return back()->with('success','You Have Registered Sucessfully'); 
       }
       else
       {
        return back()->with('fail','Something Wrong');

       }


    }
}
