<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Home extends Controller
{
    //
    public function sendMail()

    {

        $data['title'] = "Test it from HDTutu.com";

        Mail::send('emails.email', $data, function($message) {

            $message->to('blaiseirakoze50@gmail.com', 'Receiver Name')

                ->subject('HDTuto.com Mail');

        });

        dd("Mail Sent successfully");

    }
}
