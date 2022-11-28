@extends('layouts.app')

@section('content')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>Tambah Question</h1>
            </div>

            <div class="section-body">

                <div class="card">
                    <div class="card-header">
                        <h4><i class="fas fa-question"></i> Tambah Question</h4>
                    </div>

                    <div class="card-body">
                        <form action="{{ route('questions.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <label>IMAGE</label>
                                <select class="form-control select-image @error('image_id') is-invalid @enderror"
                                    name="image_id">
                                    <option value="">- SELECT IMAGE -</option>
                                    @foreach ($images as $image)
                                        <option value="{{ $image->id }}">{{ $image->title }}</option>
                                    @endforeach
                                </select>
                                @error('image_id')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>QUESTION</label>
                                <textarea name="detail" cols="30" rows="30" class="form-control">{{ old('detail') }}</textarea>
                                @error('detail')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>OPTION A</label>
                                <input type="text" name="option_A" value="{{ old('option_A') }}" class="form-control">

                                @error('option_A')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>OPTION B</label>
                                <input type="text" name="option_B" value="{{ old('option_B') }}" class="form-control">

                                @error('option_B')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>OPTION C</label>
                                <input type="text" name="option_C" value="{{ old('option_C') }}" class="form-control">

                                @error('option_C')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>OPTION D</label>
                                <input type="text" name="option_D" value="{{ old('option_D') }}" class="form-control">

                                @error('option_D')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>OPTION E</label>
                                <input type="text" name="option_E" value="{{ old('option_E') }}" class="form-control">

                                @error('option_E')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>ANSWER</label>
                                <input type="text" name="answer" value="{{ old('answer') }}" class="form-control">

                                @error('answer')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label>EXPLANATION</label>
                                <textarea name="explanation" cols="30" rows="30" class="form-control">{{ old('explanation') }}</textarea>
                                @error('explanation')
                                    <div class="invalid-feedback" style="display: block">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <button class="btn btn-primary mr-1 btn-submit" type="submit"><i class="fa fa-paper-plane"></i>
                                SIMPAN</button>
                            <button class="btn btn-warning btn-reset" type="reset"><i class="fa fa-redo"></i>
                                RESET</button>

                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
@stop
