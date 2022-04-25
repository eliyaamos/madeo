@extends('core::layouts.master')
@section('title')
    {{ trans_choice('core::general.add',1) }} {{ trans_choice('loan::general.file',1) }}
@endsection
@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>
                        {{ trans_choice('core::general.add',1) }} {{ trans_choice('loan::general.file',1) }}
                        <a href="#" onclick="window.history.back()"
                           class="btn btn-outline-light bg-white d-none d-sm-inline-flex">
                            <em class="icon ni ni-arrow-left"></em><span>{{ trans_choice('core::general.back',1) }}</span>
                        </a>
                    </h1>

                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a
                                    href="{{url('dashboard')}}">{{ trans_choice('dashboard::general.dashboard',1) }}</a>
                        </li>
                        <li class="breadcrumb-item"><a
                                    href="{{url('loan/'.$id.'/show')}}">{{ trans_choice('loan::general.loan',2) }}</a>
                        </li>
                        <li class="breadcrumb-item active">{{ trans_choice('core::general.add',1) }} {{ trans_choice('loan::general.file',1) }}</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <section class="content" id="app">
        <form method="post" action="{{ url('loan/'.$id.'/file/store') }}" enctype="multipart/form-data">
            {{csrf_field()}}
            <div class="card card-bordered card-preview">
                <div class="card-body">

                    <div class="form-group">
                        <label for="name"
                               class="control-label">{{trans_choice('core::general.name',1)}} </label>
                        <input type="text" name="name" value="{{ old('name') }}"
                               id="name"
                               class="form-control @error('name') is-invalid @enderror" v-model="name" required>
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="file" class="control-label">{{trans_choice('client::general.file',1)}}</label>
                        <input type="file" name="file"
                               id="file"
                               class="form-control @error('file') is-invalid @enderror" required>
                        @error('file')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="status"
                                   class="control-label">{{trans_choice('loan::general.status',1)}}</label>
                            <select class="form-control @error('status') is-invalid @enderror"
                                    name="status"
                                    id="status" v-model="status"
                                    required>
                                <option value="pending">{{trans_choice('client::general.pending',1)}}</option>
                                <option value="approved">{{trans_choice('client::general.approved',1)}}</option>
                                <option value="rejected">{{trans_choice('client::general.rejected',1)}}</option>
                            </select>
                            @error('status')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description"
                               class="control-label">{{trans_choice('core::general.description',1)}}</label>
                        <textarea type="text" name="description" id="description"
                                  class="form-control @error('description') is-invalid @enderror"
                                  rows="3" v-model="description"></textarea>
                        @error('description')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                </div>
                <div class="card-footer border-top ">
                    <button type="submit"
                            class="btn btn-primary  float-right">{{trans_choice('core::general.save',1)}}</button>
                </div>
            </div>
        </form>
    </section>
@endsection
@section('scripts')
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                name: "{{ old('name') }}",
                status: "{{ old('status') }}",
                description: `{{ old('description') }}`,

            },
            methods: {
                change_charge() {
                    this.amount = charges[this.loan_charge_id].amount;
                },
                onSubmit() {

                }
            }
        })
    </script>
@endsection