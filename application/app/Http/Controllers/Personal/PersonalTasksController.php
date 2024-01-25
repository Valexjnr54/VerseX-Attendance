<?php

namespace App\Http\Controllers\Personal;

use DB;
use App\Classes\table;
use App\Classes\permission;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use App\Http\Controllers\Controller;

class PersonalTasksController extends Controller
{
    public function index() 
    {
        $i = \Auth::user()->idno;
        $s = table::tasks()->where('idno', $i)->get();
        $tf = table::settings()->value("time_format");

        return view('personal.personal-tasks-view', compact('s', 'tf'));
    }

    public function incomplete($id, Request $request)
    {
        $i = \Auth::user()->idno;
        $ss = table::tasks()->where('idno', $i)->first();
        $s = table::tasks()->where('id', $id)->first();
        $e_id = ($s->id == null) ? 0 : Crypt::encryptString($s->id) ;
        $tf = table::settings()->value("time_format");

        return view('personal.edits.personal-task-incomplete-edit', compact('s','ss', 'e_id', 'tf'));  
    }

    public function incompleteupdate(Request $request)
    {
        $v = $request->validate([
            'id' => 'required|max:200',
            'reason' => 'required',
        ]);

        $id = Crypt::decryptString($request->id);
        $reason = $request->reason;

        table::tasks()
        ->where('id', $id)
        ->update([
            'reason' => $reason,
            'status' => 'Incomplete Task',
        ]);

        return redirect('personal/tasks/view')->with('success', trans("Reason for incomplete task sent successfully!"));
    }

    public function completeupdate($id, Request $request) 
    {
        table::tasks()
        ->where('id', $id)
        ->update([
            'reason' => 'Task Has Been Completed',
            'archive' => '1',
            'status' => 'Task Completed',
        ]);

        return redirect('personal/tasks/view')->with('success', trans("Task Has Been Completed!"));
    }
}
