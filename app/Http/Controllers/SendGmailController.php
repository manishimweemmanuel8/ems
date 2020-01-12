<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;

class SendGmailController extends Controller
{
    //

    public function sendgmail58()
    {
        $data = array('name'=>"Hardik Parsania", "body" => "Gmail from Laravel");

        Mail::send('gmailview', $data, function($message) {
            $message->to('blaiseirakoze50@gmail.com', 'blaise Irakoze')
                ->subject('From Laravel With Gmail');
            $message->from('manishimweemmanuel8@gmail.com',' Emmanuel Manishimwe');

        });

        if (Mail::failures()) {
            return response()->Fail('Sorry! Please try again latter');
        }else{
            return response()->json('Yes, You have sent email to GMAIL from LARAVEL 5.8 !!');
        }
    }
}
