@extends('layouts.personal')
    
    @section('meta')
        <title>Edit Employee Task | Workday Time Clock</title>
        <meta name="description" content="Workday edit employee task.">
    @endsection 

    @section('styles')
        <link href="{{ asset('/assets/vendor/air-datepicker/dist/css/datepicker.min.css') }}" rel="stylesheet">
        <link href="{{ asset('/assets/vendor/mdtimepicker/mdtimepicker.min.css') }}" rel="stylesheet">
    @endsection

    @section('content')

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h2 class="page-title">{{ __('Edit Task') }}</h2>
            </div>    
        </div>

        <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-content">
                @if ($errors->any())
                <div class="ui error message">
                    <i class="close icon"></i>
                    <div class="header">{{ __('There were some errors with your submission') }}</div>
                    <ul class="list">
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
                <form id="incomplete_task_form" action="{{ url('personal/tasks/incomplete') }}" class="ui form" method="post" accept-charset="utf-8">
                    @csrf

                    <div class="field">
                        <label for="">{{ __('Reason') }}</label>
                        <textarea placeholder="Reason for not completing task" required name="reason" id="reason" cols="30" rows="10"></textarea>
                    </div>

                    <div class="field" hidden>
                        <label for="">{{ __('Status') }}</label>
                        <input type="text" placeholder="Status" name="status" readonly id="status" value="@isset($s->status){{ $s->status }}@endisset"/>
                    </div>
                    <div class="ui error message">
                        <i class="close icon"></i>
                        <div class="header"></div>
                        <ul class="list">
                            <li class=""></li>
                        </ul>
                    </div>
                </div>

                <div class="box-footer">
                    <input type="hidden" name="id" value="@isset($e_id){{ $e_id }}@endisset">
                    <button class="ui positive approve small button" type="submit" name="submit"><i class="ui checkmark icon"></i> {{ __('Update') }}</button>
                    <a href="{{ url('tasks') }}" class="ui black grey small button"><i class="ui times icon"></i> {{ __('Cancel') }}</a>
                </div>
                </form>
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
        @isset($tf)
            @if($tf == 1)
                $('.jtimepicker').mdtimepicker({format:'h:mm tt', theme: 'blue', hourPadding: true});
            @else
                $('.jtimepicker').mdtimepicker({format:'hh:mm', theme: 'blue', hourPadding: true});
            @endif
        @endisset
        $('.airdatepicker').datepicker({ language: 'en', dateFormat: 'yyyy-mm-dd' });
        $('.ui.dropdown.getid').dropdown({ onChange: function(value, text, $selectedItem) {
            $('select[name="employee"] option').each(function() {
                if($(this).val()==value) { var id = $(this).attr('data-id'); $('input[name="id"]').val(id); };
            });
        }});
    </script>
    @endsection