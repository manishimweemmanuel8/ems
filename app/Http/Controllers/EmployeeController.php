<?php

namespace App\Http\Controllers;

use App\Employee;
use Illuminate\Http\Request;
use Mail;

class EmployeeController extends Controller
{


    public function createEmployee(Request $request) {
        // logic to create a employee record goes here

        $employee = new Employee();
        $employee->employee_name = $request->employee_name;
        $employee->national_id = $request->national_id;
        $employee->phone_number = $request->phone_number;
        $employee->email = $request->email;
        $employee->date_of_birth = $request->date_of_birth;
        $employee->status = $request->status;
        $employee->position = $request->position;


        $employee->save();

        $to_name = $request->employee_name;
        $to_email = $request->email;

        $data = array('name'=>"Manishimwe emmanuel", "body" => "Gmail from Awesomity");

        Mail::send('gmailview', $data, function($message) use($to_email,$to_name){
            $message->to($to_email, $to_name)
                ->subject('From Awesomity');
            $message->from('manishimweemmanuel8@gmail.com',' Emmanuel Manishimwe');

        });

        if (Mail::failures()) {
            return response()->Fail('Sorry! Please try again latter');
        }else{
            return response()->json('Yes, You have sent email to GMAIL from LARAVEL 5.8 !!');
        }





        return response()->json([
            "message" => "Employee record created"
        ], 201);
    }

    public function getEmployee($id) {
        // logic to get a employee record goes here
        if (Employee::where('position', $id)
            ->orWhere('phone_number',$id)
            ->orWhere('employee_name',$id)
            ->orWhere('email',$id)
            ->exists()) {
            $employee = Employee::where('position', $id)
                ->orWhere('phone_number',$id)
                ->orWhere('employee_name',$id)
                ->orWhere('email',$id)
                ->get()->toJson(JSON_PRETTY_PRINT);
            return response($employee, 200);
        } else {
            return response()->json([
                "message" => "Employee not found"
            ], 404);
        }

    }

    public function updateEmployee(Request $request, $id)
    {
        // logic to update a Employee record goes here
        if (Employee::where('id', $id)->exists()) {
            $employee = Employee::find($id);
            $employee->employee_name = is_null($request->employee_name) ? $employee->employee_name : $request->employee_name;
            $employee->national_id = is_null($request->national_id) ? $employee->national_id : $request->national_id;
            $employee->phone_number = is_null($request->employeephone_number_name) ? $employee->phone_number : $request->phone_number;
            $employee->email = is_null($request->email) ? $employee->email : $request->email;
            $employee->status = is_null($request->status) ? $employee->status : $request->status;
            $employee->position = is_null($request->position) ? $employee->position : $request->position;
            $employee->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "Employee not found"
            ], 404);
        }
    }


    public function activeEmployee(Request $request, $id,$status)
    {
        // logic to update a Employee record goes here
        if (Employee::where('id', $id)->exists()) {
            $employee = Employee::find($id);
            $employee->status = $status;
            $employee->save();

            return response()->json([
                "message" => "records Active successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "Employee not found"
            ], 404);
        }
    }

    public function suspendEmployee(Request $request, $id,$status)
    {
        // logic to update a Employee record goes here
        if (Employee::where('id', $id)->exists()) {
            $employee = Employee::find($id);
            $employee->status = $status;
            $employee->save();

            return response()->json([
                "message" => "records Suspend successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "Employee not found"
            ], 404);
        }
    }

    public function deleteEmployee ($id) {
        // logic to delete a employee record goes here

        if(Employee::where('id', $id)->exists()) {
            $employee = Employee::find($id);
            $employee->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "Employee not found"
            ], 404);
        }

    }
}
