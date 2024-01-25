@extends('layouts.personal')

    @section('meta')
        <title>My Tasks | Workday Time Clock</title>
        <meta name="description" content="Workday my tasks, view my task records, view present and previous tasks.">
    @endsection

    @section('styles')
        <link href="{{ asset('/assets/vendor/air-datepicker/dist/css/datepicker.min.css') }}" rel="stylesheet">
    @endsection

    @section('content')
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
            <h2 class="page-title">{{ __("My Tasks") }}</h2>
            </div>    
        </div>

        <div class="row">
            <div class="col-md-12">
            <div class="box box-success">
                <div class="box-body reportstable">
                    {{-- <form action="" method="get" accept-charset="utf-8" class="ui small form form-filter" id="filterform">
                        @csrf
                        <div class="inline two fields">
                            <div class="three wide field">
                                <label>{{ __("Date Range") }}</label>
                                <input id="datefrom" type="text" name="" value="" placeholder="Start Date" class="airdatepicker">
                                <i class="ui icon calendar alternate outline calendar-icon"></i>
                            </div>

                            <div class="two wide field">
                                <input id="dateto" type="text" name="" value="" placeholder="End Date" class="airdatepicker">
                                <i class="ui icon calendar alternate outline calendar-icon"></i>
                            </div>
                            <button id="btnfilter" class="ui button positive small"><i class="ui icon filter alternate"></i> {{ __("Filter") }}</button>
                        </div>
                    </form> --}}

                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example" data-order='[[ 6, "desc" ]]'>
                        <thead>
                            <tr>
                                <th>{{ __('Employee ID') }}</th>
                                <th>{{ __('Employee') }}</th>
                                <th>{{ __('Task') }}</th>
                                <th>{{ __('Task Start Date') }}</th>
                                <th>{{ __('Task End Date') }}</th>
                                <th>{{ __('Progress') }}</th>
                                <th>{{ __('Status') }}</th>
                                <th>{{ __('Actions') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @isset($s)
                            @foreach ($s as $task)
                            <tr>
                                <td>{{ $task->idno }}</td>
                                <td>{{ $task->employee }}</td>
                                <td>{{ $task->task }}</td>
                                <td>{{ $task->taskdate }}</td>
                                <td>{{ $task->taskdateend }}</td>
                                <td>
                                    @if($task->archive == '0') 
                                        <span class="green">Present Task</span>
                                    @else
                                        <span class="teal">Past Task</span>
                                    @endif
                                </td>
                                <td>
                                    @if($task->status == 'Not Completed') 
                                        <span class="red">{{ $task->status }}</span>
                                    @elseif($task->status == 'Pending') 
                                        <span style="color:gold">{{ $task->status }}</span>
                                    @else
                                        <span class="green">{{ $task->status }}</span>
                                    @endif
                                </td>
                                <td class="align-right">
                                    @if ($task->archive == '0' && $task->status == 'Task Completed')
                                        <button class="ui positive button mini offsettop5" disabled><i class="ui icon check"></i>{{ __('Well Done') }}</button>
                                    @elseif($task->archive == '0' && $task->status == 'Pending')
                                        <a href="{{ url('personal/tasks/complete/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon check"></i></a>
                                    @elseif ($task->archive == '1' && $task->status == 'Pending')
                                        <a href="{{ url('/personal/tasks/incomplete/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon cogs"></i></a>
                                    @endif
                                    {{-- @if($task->archive == '0')
                                        <button class="ui positive button mini offsettop5 btn-add float-right"><i class="ui icon plus"></i>{{ __('Add') }}</button>
                                        <a href="{{ url('/personal/tasks/incomplete/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon cogs"></i></a>
                                        <a href="{{ url('personal/tasks/complete/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon check"></i></a>
                                        @if ($task->status == 'Task Completed')
                                            <button class="ui positive button mini offsettop5 btn-add float-right"><i class="ui icon plus"></i>{{ __('Add') }}</button>
                                        @endif
                                    @else
                                        <a href="{{ url('/personal/tasks/incomplete/'.$task->id) }}" class="ui circular basic icon button tiny"><i class="icon cogs"></i></a>
                                    @endif --}}
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
    </div>

    @endsection
    
    @section('scripts')
    <script src="{{ asset('/assets/vendor/air-datepicker/dist/js/datepicker.min.js') }}"></script>
    <script src="{{ asset('/assets/vendor/air-datepicker/dist/js/i18n/datepicker.en.js') }}"></script>
    <script src="{{ asset('/assets/vendor/momentjs/moment.min.js') }}"></script>
    <script src="{{ asset('/assets/vendor/momentjs/moment-timezone-with-data.js') }}"></script>

    <script type="text/javascript">
    $('#dataTables-example').DataTable({responsive: true,pageLength: 15,lengthChange: false,searching: false,ordering: true});
    $('.airdatepicker').datepicker({ language: 'en', dateFormat: 'yyyy-mm-dd' });

    $('#filterform').submit(function(event) {
        event.preventDefault();
        var date_from = $('#datefrom').val();
        var date_to = $('#dateto').val();
        var url = $("#_url").val();

        $.ajax({
            url: url + '/get/personal/Tasks',type: 'get',dataType: 'json',data: {datefrom: date_from, dateto: date_to},headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') },

            success: function(response) {
                showdata(response);
                function showdata(jsonresponse) {
                    var employee = jsonresponse;
                    var tbody = $('#dataTables-example tbody');
                    
                    // clear data and destroy datatable
                    $('#dataTables-example').DataTable().destroy();
                    tbody.children('tr').remove();

                    // append table row data
                    for (var i = 0; i < employee.length; i++) {
                        // archive status
                        var archive = employee[i].archive;
                        function s_s(archive) {
                            if (archive == '0') {
                                return "Present Task";
                            } else if(archive == '1') {
                                return "Past Task";
                            }
                        }
                        function ss_color(archive) {
                            if (archive == '0') {
                                return "green";
                            } else if(archive == '1') {
                                return "teal";
                            }
                        }

                        var datefrom = employee[i].datefrom;
                        var dateto = employee[i].dateto;

                        function f_date(format_date)
                        {
                            date = new Date(format_date);
                            year = date.getFullYear();
                            month = date.getMonth();
                            months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
                            d = date.getDate();
                            day = date.getDay();
                            days = new Array('Sunday,', 'Monday,', 'Tuesday,', 'Wednesday,', 'Thursday,', 'Friday,', 'Saturday,');
                            
                            n_date = days[day]+' '+months[month]+' '+d+', '+year;
                            return n_date; 
                        }

                        var intime = moment(employee[i].intime, "hh:mm A");
                        var outime = moment(employee[i].outime, "hh:mm A");
                        var format = {{ $tf }};

                        function tf(f) {
                            if(f == 1) {
                                return "hh:mm A";
                            } else {
                                return "kk:mm";
                            }
                        }

                        function time(p) {
                            if(p == 1) {
                                if(isNaN(intime) !== true) {
                                    return intime.format(tf(format));
                                } 
                            } else {
                                if(isNaN(outime) !== true) {
                                    return outime.format(tf(format));
                                }
                            }
                            return "";
                        }
                            
                        tbody.append("<tr>"+ 
                                        "<td>"+time(1)+"</td>" + 
                                        "<td>"+time(2)+"</td>" + 
                                        "<td>"+employee[i].hours+" hours </td>" + 
                                        "<td>"+employee[i].restday+"</td>" + 
                                        "<td>"+ f_date(datefrom) +"</td>" + 
                                        "<td>"+ f_date(dateto) +"</td>" + 
                                        "<td>"+ "<span class=' "+ ss_color(archive) +"'>" + s_s(archive) + "</span>" +"</td>" + 
                                    "</tr>");
                    }

                    // initialize datatable
                    $('#dataTables-example').DataTable({responsive: true,pageLength: 15,lengthChange: false,searching: false,ordering: true});
                }            
            }
        })
    });
    </script>
    @endsection 