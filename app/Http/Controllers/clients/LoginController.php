<?php

namespace App\Http\Controllers\clients;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\clients\Login;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;



class LoginController extends Controller
{
    private $login; 
    public function __construct()
    {
        $this->login = new Login();
    }  
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $title = 'Đăng nhập';
        return view('clients.login', compact('title'));
    }

    /**
     * Show the form for creating a new resource.
     */
    // public function register(Request $request)
    // {
    //     $username_regis = $request->username_register;
    //     $email = $request->email_register;
    //     $password_regis = $request->password_register;


    //     $checkAccountExist = $this->login->checkUserExist($username_regis, $email);

    //     if($checkAccountExist){
    //         return response()->json([
    //             'success' => true,
    //             'message' => 'Tên người dùng hoặc email đã tồn tại'
    //         ]);
    //     }

    //     $datainsert = [
    //         'username' => $username_regis,
    //         'email' => $email,
    //         'password' => md5($password_regis)
    //     ];

    //     $this->login->registerAccount($datainsert);

    //     return response()->json([
    //         'success' => true,
    //         'message' => 'Đăng ký thành công'
    //     ]);
    // }

    public function register(Request $request)
    {
        $username_regis = $request->input('username_register');
        $email = $request->input('email_register');
        $password_regis = $request->input('password_register');

        if (!$username_regis || !$email || !$password_regis) {
            return response()->json([
                'success' => false,
                'message' => 'Thiếu dữ liệu đầu vào'
            ]);
        }

        $checkAccountExist = $this->login->checkUserExist($username_regis, $email);

        if ($checkAccountExist) {
            return response()->json([
                'success' => false,
                'message' => 'Tên người dùng hoặc email đã tồn tại'
            ]);
        }
        
        $activation_token = Str::random(60);
        $datainsert = [
            'username' => $username_regis,
            'email' => $email,
            'password' => md5($password_regis),
            'activation_token' => $activation_token
        ];

        $this->login->registerAccount($datainsert);

        // Gửi email kích hoạt
        $this->sendActivationEmail($email, $activation_token);

        return response()->json([
            'success' => true,
            'message' => 'Đăng ký thành công! Vui lòng kiểm tra email để kích hoạt tài khoản.'
        ]);
    }

    public function sendActivationEmail($email, $token)
    {
        $activation_link = route('activate.account', ['token' => $token]);

        Mail::send('clients.mail.emails_activation', ['link' => $activation_link], function ($message) use ($email) {
            $message->to($email);
            $message->subject('Kích hoạt tài khoản của bạn');
        });
    }

    public function activateAccount($token)
    {
        $user = $this->login->getUserByToken($token);
        if ($user) {
            $this->login->activateUserAccount($token);

            return redirect('/login')->with('message', 'Tài khoản của bạn đã được kích hoạt!');
        } else {
            return redirect('/login')->with('error', 'Mã kích hoạt không hợp lệ!');
        }
    }
}
