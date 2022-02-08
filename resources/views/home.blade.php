@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        @if (session('error'))
            <div class="alert alert-danger fade show text-center font-weight-bold" role="alert">
                {{ session('error') }}
            </div>
        @endif
        <div class="col-md-8">
            <div class="container">
                <h1 class="text-center">List of Beers</h1>
                <table class="table">
                    <thead>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                    </thead>
                    @if($beers->isEmpty())
                        <tr><td colspan="3"> No data for this page </td></tr>
                    @else
                        @foreach ($beers as $beer)
                            <tr>
                                <td> {{ $beer['id'] }} </td>
                                <td> {{ $beer['name'] }} </td>
                                <td> {{ $beer['description'] }} </td>
                            </tr>
                        @endforeach
                    @endif                   
                </table>
            </div>
            {{ $beers->links() }}
       
        </div>
    </div>
</div>
@endsection
