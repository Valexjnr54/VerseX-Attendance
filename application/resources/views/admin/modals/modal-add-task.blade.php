<div class="ui modal add medium">
    <div class="header">{{ __("Add New Task") }}</div>
    <div class="content">
        <form id="add_task_form" action="{{ url('tasks/add') }}" class="ui form" method="post">
            {{ csrf_field() }}
            <div class="field">
                <label>{{ __('Employee') }}</label>
                <select class="ui search dropdown getid uppercase" name="employee">
                    <option value="">Select Employee</option>
                    @isset($employee)
                        @foreach ($employee as $data)
                            <option value="{{ $data->lastname }}, {{ $data->firstname }}" data-id="{{ $data->id }}">{{ $data->lastname }}, {{ $data->firstname }}</option>
                        @endforeach
                    @endisset
                </select>
            </div>
            <div class="field">
                <label for="">{{ __('Task') }}</label>
                <textarea placeholder="Today's Task" name="task" id="task" cols="30" rows="10"></textarea>
            </div>
            <div class="field">
                <label for="">{{ __('Date To Start Task') }}</label>
                <input type="text" placeholder="Date" name="taskdate" id="taskdate" class="airdatepicker" />
            </div>
            <div class="field">
                <label for="">{{ __('Date To End Task') }}</label>
                <input type="text" placeholder="Date" name="taskdateend" id="taskdateend" class="airdatepicker" />
            </div>
            <div class="ui error message">
                <i class="close icon"></i>
                <div class="header"></div>
                <ul class="list">
                    <li class=""></li>
                </ul>
            </div>

            <div class="actions">
                <input type="hidden" readonly name="id" value="">
                <button class="ui positive small button" type="submit" name="submit"><i class="ui checkmark icon"></i> {{ __('Create Task') }}</button>
                <button class="ui grey small button cancel" type="button"><i class="ui times icon"></i> {{ __('Cancel') }}</button>
            </div>
        </form>
    </div>
</div>
