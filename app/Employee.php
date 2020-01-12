<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Employee extends Model
{
    //
    protected $table = 'employees';
    protected $fillable = ['employee_name', 'national_id','phone_number','email','date_of_birth','status','position'];
    use SoftDeletes;
}
