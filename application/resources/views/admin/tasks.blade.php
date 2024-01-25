@extends('layouts.default')

    @section('meta')
        <title>Tasks | Workday Time Clock</title>
        <meta name="description" content="Workday tasks, view all employee tasks, add Task or shift, edit, and delete tasks">
    @endsection

    @section('styles')
    <link href="{{ asset('/assets/vendor/mdtimepicker/mdtimepicker.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/assets/vendor/air-datepicker/dist/css/datepicker.min.css') }}" rel="stylesheet">
    <style>
        /* .ui.active.modal {position: relative !important;} */
        .datepicker {z-index: 999 !important;}
        .datepickers-container {z-index: 9999 !important;}
    </style>
    @endsection

    @section('content')
    @include('admin.modals.modal-add-task')
    
    <div class="container-fluid">
        <div class="row">
            <h2 class="page-title">{{ __('Tasks') }}
                <button class="ui positive button mini offsettop5 btn-add float-right"><i class="ui icon plus"></i>{{ __('Add') }}</button>
            </h2>
        </div>

        <div class="row">
            <div class="box box-success">
                <div class="box-body">
                    <table width="100%" class="table table-striped table-hover" id="dataTables-example" data-order='[[ 3, "asc" ]]'>
                        <thead>
                            <tr>
                                <th>{{ __('Employee ID') }}</th>
                                <th>{{ __('Employee') }}</th>
                                <th>{{ __('Task') }}</th>
                                <th>{{ __('Task Start Date') }}</th>
                                <th>{{ __('Task End Date') }}</th>
                                <th>{{ __('Reason') }}</th>
                                <th>{{ __('Status') }}</th>
                                <th>{{ __('Actions') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @isset($tasks)
                            @foreach ($tasks as $task)
                            <tr>
                                <td>{{ $task->idno }}</td>
                                <td>{{ $task->employee }}</td>
                                <td>{{ $task->task }}</td>
                                <td>{{ $task->taskdate }}</td>
                                <td>{{ $task->taskdateend }}</td>
                                <td>
                                    @if ($task->reason == '')
                                        <span class="green">{{ __('On Going Task') }}</span>
                                    @else
                                        {{ $task->reason }}
                                    @endif
                                </td>
                                <td>
                                    @if($task->archive == '0') 
                                        <span class="green">{{ __('Present') }}</span>
                                    @else
                                        <span class="teal">{{ __('Previous') }}</span>
                                    @endif
                                </td>
                                <td class="align-right">
                                    @if($task->archive == '0') 
                                        <a href="{{ url('/tasks/edit/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon edit outline"></i></a>
                                        <a href="{{ url('/tasks/delete/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon trash alternate outline"></i></a>
                                        <a href="{{ url('/tasks/archive/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon archive"></i></a>
                                    @else
                                        <a href="{{ url('/tasks/delete/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon trash alternate outline"></i></a>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                            @endisset
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
    </div>

    @endsection
    
    @section('scripts')
    <script src="{{ asset('/assets/vendor/air-datepicker/dist/js/datepicker.min.js') }}"></script>
    <script src="{{ asset('/assets/vendor/air-datepicker/dist/js/i18n/datepicker.en.js') }}"></script>
    <script src="{{ asset('/assets/vendor/mdtimepicker/mdtimepicker.min.js') }}"></script>

    <script type="text/javascript">
    $('#dataTables-example').DataTable({responsive: true,pageLength: 15,lengthChange: false,searching: true,ordering: true});
    $('.airdatepicker').datepicker({ language: 'en', dateFormat: 'yyyy-mm-dd' });

    @isset($tf)
        @if($tf == 1)
            $('.jtimepicker').mdtimepicker({format:'h:mm tt', theme: 'blue', hourPadding: true});
        @else
            $('.jtimepicker').mdtimepicker({format:'hh:mm', theme: 'blue', hourPadding: true});
        @endif
    @endisset

    $('.ui.dropdown.getid').dropdown({ onChange: function(value, text, $selectedItem) {
        $('select[name="employee"] option').each(function() {
            if($(this).val()==value) {var id = $(this).attr('data-id');$('input[name="id"]').val(id);};
        });
    }});
    </script>
    @endsection 