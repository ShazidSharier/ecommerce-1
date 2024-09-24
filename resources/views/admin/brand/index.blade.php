@extends('admin.master')
@section('body')

    <!--app-content open-->
    <!-- CONTAINER -->
    <div class="main-container container-fluid">


        <!-- PAGE-HEADER -->
        <div class="page-header">
            <div>
                <h1 class="page-title">Data Tables</h1>
            </div>
            <div class="ms-auto pageheader-btn">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tables</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Data Tables</li>
                </ol>
            </div>
        </div>
        <!-- PAGE-HEADER END -->

        <!-- Row -->
        <div class="row row-sm">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header border-bottom d-flex justify-content-between">
                        <h3 class="card-title">All Brand Info</h3>
                        <a href="{{ route('brand.create') }}" class="btn btn-primary">Add Brand</a>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <p class="text-success text-center">{{session('message')}}</p>
                            <table class="table table-bordered text-nowrap border-bottom" id="basic-datatable">
                                <thead>
                                <tr>
                                    <th>sl</th>
                                    <th>Brand</th>
                                    <th>Image</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($brands as $brand)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>{{$brand->name}}</td>
                                        <td><img src="{{asset($brand->image)}}" alt="" height="50"/></td>
                                        <td>{{ $brand->status == 1 ? 'active' : 'Inactive' }}</td>
                                        <td class="d-flex">
                                            <a href="{{route('brand.edit', $brand->id)}}" class="btn btn-primary me-2">Edit</a>

                                            @if($brand->status == 1)
                                                <a href="{{route('brand.show', $brand->id)}}" class="btn btn-warning me-2">Inactive</a>
                                            @else
                                                <a href="{{route('brand.show', $brand->id)}}" class="btn btn-success me-2">Active</a>
                                            @endif

                                            <form action="{{route('brand.destroy', $brand->id)}}" method="post">
                                                @method('DELETE')
                                                @csrf
                                                <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure to delete this..');">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Row -->
    </div>

    <!-- CONTAINER CLOSED -->


@endsection
