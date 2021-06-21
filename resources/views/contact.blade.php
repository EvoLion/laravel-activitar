@extends('layout')

@section('title')
    <title>Activitar | Template</title>
@endsection

@section('style')
    
@endsection

@section('content')
    <x-header class="header-normal" />

    <!-- Map Section Begin -->
    <div class="contact-map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d188618.51311104256!2d-71.236572!3d42.381647!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1576756626784!5m2!1sen!2sbd"
            height="530" style="border: 0" allowfullscreen=""></iframe>
        <div class="map-hover">
            <h5>New York</h5>
            <ul>
                <li>Weekdays: 10.00 - 23.00</li>
                <li>Saturday: 10.00 - 23.00</li>
                <li>Sunday: Close</li>
            </ul>
            <i class="icon_pin"></i>
        </div>
    </div>
    <!-- Map Section End -->

    <!-- Contact Section Begin -->
    <section class="contact-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="contact-info">
                        <h4>Information</h4>
                        <ul>
                            <li><i class="fa fa-phone"></i>(12)-100-100-100</li>
                            <li><i class="fa fa-envelope"></i>Info.colorlib@gmail.com</li>
                        </ul>
                    </div>
                    <div class="contact-address">
                        <h4>Address</h4>
                        <ul>
                            <li><i class="fa fa-map-marker"></i> Iris Watson, Mary land, United State., New York City
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="contact-form">
                        <h4>Get in touch</h4>
                        <form action="{{ route('home.contact-form') }}" method="POST" id="contact_form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" required name="name" placeholder="Name">
                                </div>
                                <div class="col-lg-6">
                                    <input type="email" name="email" placeholder="Email">
                                </div>
                                <div class="col-lg-12">
                                    <textarea name="message" required placeholder="Message"></textarea>
                                    <button type="submit" class="c-btn">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    @include('includes._cta')
@endsection

@section('javascript')
<script>
    let isChecked = true;
    let name = null;
    let email = null;
    let message = null;
    $( document ).ready(function() {
        $('#contact_form').submit(function(e) { 
                let form = $(this).serializeArray();
                name = $.trim(form[0].value)
                email = $.trim(form[1].value)
                message = $.trim(form[2].value)
                contactForm();
                e.preventDefault();
			});
        });

        function contactForm() {
            $.ajax({
                url: "{{ route('home.contact-form') }}",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                type: 'POST',
                data: {'name' : name, 'email' : email, 'message' : message},
                success: function(data) {

                },
                error: function(data){
                    alert("ERROR - " + data.responseText);
                }
            });
        }
    </script>
@endsection