@foreach ($pricing_plans as $plan)
    <div class="col-lg-4">
        <div class="single-price-plan">
            <h4>{{ $plan->class }}</h4>
            <div class="price-plan">
                <h2>{{ $plan->price }} <span>$</span></h2>
                @if ($plan->type == 1)
                    <p>Monthly</p>
                @elseif($plan->type == 2)
                    <p>Yearly</p>
                @endif
                
            </div>
            <ul>
                @foreach ($plan->pricingPlanFeachers as $feature)
                <li>{{$feature->feature}}</li>
                @endforeach
            </ul>
            <a href="#" class="primary-btn price-btn">Get Started</a>
        </div>
    </div>
@endforeach