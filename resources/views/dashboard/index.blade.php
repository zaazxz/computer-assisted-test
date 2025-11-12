@extends('layouts.app')

@section('content')
    <div class="main-content">
        <section class="section">

            {{-- Admin : Start --}}
            @hasanyrole('admin')
                @include('dashboard.templates.admin')
            @endhasanyrole
            {{-- Admin : End --}}

            {{-- Student : Start --}}
            @hasrole('student')
                @include('dashboard.templates.student')
            @endhasrole
            {{-- Student : End --}}

            {{-- Teacher : Start --}}
            @hasrole('teacher')
                @include('dashboard.templates.teacher')
            @endhasrole
            {{-- Teacher : End --}}

        </section>
    </div>
@endsection
