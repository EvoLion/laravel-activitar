<section class="classtime-section class-time-table spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>Classtime Table</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="timetable-controls">
                    <ul>
                        <li class="active" data-tsfilter="all">all class</li>
                        @foreach ($categories as $category)
                            <li data-tsfilter="{{ $category->name }}">{{ $category->name }}</li>
                        @endforeach
                        {{-- <li class="active" data-tsfilter="all">all class</li>
                        <li data-tsfilter="crossfit">crossfit</li>
                        <li data-tsfilter="LUNGE BALL">lunge ball</li>
                        <li data-tsfilter="ppsr">ppsr</li>
                        <li data-tsfilter="walls">walls</li>
                        <li data-tsfilter="candy">candy</li> --}}
                    </ul>
                </div>
            </div>
        </div>
        @php
            $count = 10;
        @endphp
        <div class="classtime-table" style="display: flex;">
            <ul style="padding-left: 100px;"><li style="color: yellow; list-style-type: none;"></li></ul><ul style="padding-left: 100px;"><li style="color: yellow; list-style-type: none;">Monday</li></ul><ul style="padding-left: 100px;"><li style="color: yellow; list-style-type: none;">Tuesday</li></ul style="padding-left: 100px;"><ul style="padding-left: 100px;"><li style="color: yellow; list-style-type: none;">Wednesday</li></ul style="padding-left: 100px;"><ul style="padding-left: 100px;"><li style="color: yellow; list-style-type: none;">Thursday</li></ul><ul style="padding-left: 100px;"><li style="color: yellow; list-style-type: none;">Friday</li></ul><ul style="padding-left: 100px;"><li style="color: yellow; list-style-type: none;">Saturday</li></ul><ul style="padding-left: 100px;"><li style="color: yellow; list-style-type: none;">Sunday</li></ul>
        </div>
        <div class="classtime-table" style="display: flex;">
            <ul style="padding-left: 100px;">
                @for ($k = 0; $k < 5; $k++)
                    <li style="color: yellow; list-style-type: none;">{{ $count }}:00</li>
                    @php
                        if($count == 10) {
                            $count += 4;
                        } else {
                            $count += 2;
                        }
                    @endphp
                @endfor
            </ul>


            @for($i = 1; $i <= 7; $i++)
                @if (array_key_exists($i, $stack))
                <ul style="padding-left: 100px;">
                    @for ($j = 0; $j < 5; $j++)
                        @if(array_key_exists($j, $stack[$i]))
                        <li style="color:red;">
                            {{ \Carbon\Carbon::parse( $stack[$i][$j]->started_at)->englishDayOfWeek }} - {{ \Carbon\Carbon::parse( $stack[$i][$j]->started_at)->hour }}
                        </li>
                        @else
                            <li></li>
                        @endif
                    @endfor
                </ul>
                @else
                    <ul style="padding-left: 100px;">
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                @endif
            @endfor

        </div>
    </div>
</section>