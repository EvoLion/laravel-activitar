@extends('layout')

@section('title')
    <title>Activitar | Template</title>
@endsection

@section('style')
    
@endsection

@section('content')
    <x-header class="header-normal" />

    <!-- Breadcrumb Section Begin -->
    <x-breadcrumb title="SCHEDULE & CLASSES" page="Schedule" />
    <!-- Breadcrumb End -->

    <!-- Class Time Section Begin -->
        @include('includes._classtime')
    <!-- Class Time Section End -->

    <!-- Classes Section Begin -->
    <section class="classes-section schedule-page">
        <div class="class-title">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Our Classes</h2>
                            <p>Our Crossfit experts can help you discover new training techniques and exercises
                                <br />that offer a dynamic and efficient full-body workout.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <x-classes />
        {{-- @include('includes._classes') --}}
    </section>
    <!-- Classes Section End -->

    <!-- Choseus Section Begin -->
        @include('includes._choseus')
    <!-- Choseus Section End -->

    <!-- Cta Section Begin -->
        @include('includes._cta')
    <!-- Cta Section End -->
@endsection

@section('javascript')
    
@endsection