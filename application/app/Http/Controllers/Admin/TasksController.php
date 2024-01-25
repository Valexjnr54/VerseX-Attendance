<?php

namespace App\Http\Controllers\admin;

use DB;
use App\Classes\table;
use App\Classes\permission;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use App\Http\Controllers\Controller;

class TasksController extends Controller
{
    public function index()
    {
        if (permission::permitted('tasks')=='fail'){ return redirect()->route('denied'); }

        $employee = table::people()->get();
        $tasks = table::tasks()->get();
        $tf = table::settings()->value("time_format");
        return view('admin.tasks', compact('employee', 'tasks', 'tf'));
    }
    
    public function add(Request $request)
    {
        if (permission::permitted('tasks-add') == 'fail'){ return redirect()->route('denied'); }
        $v = $request->validate([
            'id' => 'required|max:20',
            'employee' => 'required|max:100',
            'task' => 'required|max:500000000000000000',
            'taskdate' => 'required|date|max:15',
            'taskdateend' => 'required|date|max:15',
        ]);

        $id = $request->id;
        $employee = mb_strtoupper($request->employee);
        $task = $request->task;
        $taskdate = $request->taskdate;
        $taskdateend = $request->taskdateend;

        $ref = table::tasks()->where([['reference', $id],['archive', 0]])->exists();

        if ($ref == 1) 
        {
            return redirect('tasks')->with('error', trans("Oops! This employee has Task already. Please archive the present Task to add new Task."));
        }

        $emp_id = table::companydata()->where('reference', $id)->value('idno');

        table::tasks()->where('id', $id)->insert([
            'reference' => $id,
        	'idno' => $emp_id,
        	'employee' => $employee,
            'task' => $task,
        	'taskdate' => $taskdate,
            'taskdateend' => $taskdateend,
        	'archive' => '0',
            'reason' => '',
        ]);

        return redirect('tasks')->with('success', trans("New Task Added Successfully!"));
    }

    public function edit($id, Request $request) 
    {
        if (permission::permitted('tasks-edit')=='fail'){ return redirect()->route('denied'); }

        $s = table::tasks()->where('id', $id)->first();
        $e_id = ($s->id == null) ? 0 : Crypt::encryptString($s->id) ;
        $tf = table::settings()->value("time_format");
        
        return view('admin.edits.edit-task', compact('s', 'e_id', 'tf'));
    }

    public function update(Request $request) 
    {
        if (permission::permitted('tasks-edit')=='fail'){ return redirect()->route('denied'); }

        $v = $request->validate([
            'id' => 'required|max:200',
            'task' => 'required|max:500000000000000000',
            'taskdate' => 'required|date|max:15',
            'taskdateend' => 'required|date|max:15',
        ]);

        $id = Crypt::decryptString($request->id);
        $task = $request->task;
        $taskdate = $request->taskdate;
        $taskdateend = $request->taskdateend;

        table::tasks()
        ->where('id', $id)
        ->update([
            'task' => $task,
        	'taskdateend' => $taskdateend,
        ]);

        return redirect('tasks')->with('success', trans("Task has been updated!"));
    }

    public function delete($id, Request $request) 
    {
        if (permission::permitted('tasks-delete')=='fail'){ return redirect()->route('denied'); }

        table::tasks()->where('id', $id)->delete();

        return redirect('tasks')->with('success', trans("Deleted!"));
    }

    public function archive($id, Request $request)
    {
		if (permission::permitted('tasks-archive')=='fail'){ return redirect()->route('denied'); }
        
		$id = $request->id;
		table::tasks()->where('id', $id)->update(['archive' => '1']);

    	return redirect('tasks')->with('success', trans("Task has been archived!"));
   	}
}
