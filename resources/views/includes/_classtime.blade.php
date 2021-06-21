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
        <div class="classtime-table">
            <table>
                <thead>
                    <tr>
                        <th></th>
                        <th>Monday</th>
                        <th>Tuesday</th>
                        <th>Wednesday</th>
                        <th>Thursday</th>
                        <th>Friday</th>
                        <th>Saturday</th>
                        <th>Sunday</th>
                    </tr>
                </thead>
                <tbody>
                    @for($i = 10; $i <= 20; $i += 2)
                        @if ($i == 12)
                            @continue
                        @endif
                        @if (array_key_exists($i, $stack))
                            <tr>
                                <td class="workout-time">{{ $i }}.00</td> 
                                @for ($j = 1; $j <= 7; $j++)
                                    @if(array_key_exists($j, $stack[$i]))
                                        <td class="hover-bg ts-item" data-tsmeta="{{ $categories->where('id', $programs->where('id', $stack[$i][$j]->program_id)->first()->category_id)->first()->name }}">
                                            <span>{{ \Carbon\Carbon::parse($stack[$i][$j]->started_at)->format('H:i') }} - {{ \Carbon\Carbon::parse($stack[$i][$j]->ended_at)->format('H:i') }}</span>
                                            <h6>{{ $programs->where('id', $stack[$i][$j]->program_id)->first()->name }}</h6>
                                        </td>
                                    @else
                                        <td></td>
                                    @endif
                                @endfor
                            </tr>
                        @else
                            <tr>
                                <td class="workout-time">{{ $i }}.00</td> 
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        @endif
                    @endfor
                </tbody>
            </table>
        </div>
    </div>
</section>