@extends('orders.master')
@section('content')
@section('type_order') | Create order @endsection

<div class="row">
    <div class="col-xl-6 mx-auto">
        <form action="{{ route('orders.store') }}" method="post">
            @csrf
            <div class="card">
                <div class="card-header">
                    <h5 class="card-type_order"> Create order </h5>
                </div>

                <div class="card-body">
                    <div class="form-group my-3">
                        <label for="user_id"> user_id </label>
                        <input type="text" name="user_id" id="user_id" class="form-control" placeholder="user_id" />
                    </div>
                    <div class="form-group my-3">
                        <label for="type_order"> type_order </label>
                        <input type="text" name="type_order" id="type_order" class="form-control" placeholder="type_order" />
                    </div>

                    <div class="form-group my-3">
                        <label for="status"> status </label>
                        <textarea name="status" id="status" class="form-control" placeholder="status"></textarea>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-success"> Save </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection