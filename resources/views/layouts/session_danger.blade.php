
@if(Session::has('notification_danger'))

    <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-ban"></i> Alert!</h4>
        {{session('notification_danger')}}
    </div>
@endif