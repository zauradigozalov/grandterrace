
@if(Session::has('notification_danger'))

    <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-close"></i> {{session('notification_danger')}}</h4>

    </div>

@endif