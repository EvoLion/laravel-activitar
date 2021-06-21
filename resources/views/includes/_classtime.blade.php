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










                    {{-- @foreach ($schedules as $schedule)
                        @for ($i = 0; $i < 5; $i++)
                            <tr>
                                <td class="workout-time">{{ $count }}:00</td> 
                                @for ($j = 1; $j <= 7; $j++)
                                    @if (\Carbon\Carbon::parse($schedule->started_at)->dayOfWeekIso == $j)
                                        @if (\Carbon\Carbon::parse($schedule->started_at)->hour == $count)
                                            <td class="hover-bg ts-item" data-tsmeta="{{ $schedule->program()->first()->category()->first()->name }}">
                                                <span>{{ \Carbon\Carbon::parse($schedule->started_at)->format('H:i') }} - {{ \Carbon\Carbon::parse($schedule->ended_at)->format('H:i') }}</span>
                                                <h6>{{ $schedule->program()->first()->name }}</h6> 
                                            </td>
                                        @else
                                            <td style="color:red">baka</td>
                                        @endif
                                    @else
                                        <td></td>
                                    @endif
                                @endfor
                            </tr>
                            @php
                                var_dump($count);
                                if($count == 10) {
                                    $count += 4;
                                } else {
                                    $count += 2;
                                }
                            @endphp
                            @break
                        @endfor
                        @php
                            $count = 10;
                        @endphp
                    @endforeach --}}
                    
                    
                    
                    
                    {{-- @for ($i = 0; $i < 5; $i++)
                        <tr>
                            <td class="workout-time">{{ $i }}</td> 
                            @for ($j = 0; $j <= 7; $j++)
                                @foreach ($schedules as $schedule)
                                    @if (\Carbon\Carbon::parse($schedule->started_at)->dayOfWeek == $j)
                                        <td>
                                            <h6>{{ $schedule->started_at }}</h6> 
                                        </td>
                                    @else
                                        <td></td>
                                    @endif
                                @endforeach
                            @endfor
                        </tr>
                    @endfor --}}
                    
                    {{-- <tr> 
                        <td class="workout-time">10.00</td> 
                        <td class="hover-bg ts-item" data-tsmeta="crossfit"> 
                            <span>10.00 - 14.00</span>
                            <h6>Crossfit lv1</h6>
                        </td>
                        <td></td> 
                        <td class="hover-bg ts-item" data-tsmeta="crossfit">
                            <span>10.00 - 15.00</span>
                            <h6>Crossfit lv1</h6>
                        </td>
                        <td></td> 
                        <td class="hover-bg ts-item" data-tsmeta="lunge">
                            <span>10.00 - 13.00</span>
                            <h6>Lunge Ball Bur</h6>
                        </td>
                        <td></td> 
                        <td class="hover-bg ts-item" data-tsmeta="lunge">
                            <span>10.00 - 13.30</span>
                            <h6>Lunge Ball Bur</h6>
                        </td>
                    </tr>
                    <tr>
                        <td class="workout-time">14.00</td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="lunge">
                            <span>14.00 - 17.00</span>
                            <h6>Lunge Ball Bur</h6>
                        </td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="crossfit">
                            <span>14.00 - 17.00</span>
                            <h6>Crossfit lv1</h6>
                        </td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="walls">
                            <span>14.00 - 15.30</span>
                            <h6>Walls to Knees</h6>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="workout-time">16.00</td>
                        <td class="hover-bg ts-item" data-tsmeta="lunge">
                            <span>16.00 - 18.00</span>
                            <h6>Lunge Ball Bur</h6>
                        </td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="candy">
                            <span>16.00 - 19.00</span>
                            <h6>Candy</h6>
                        </td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="candy">
                            <span>16.00 - 19.00</span>
                            <h6>Candy</h6>
                        </td>
                        <td class="hover-bg ts-item" data-tsmeta="ppsr">
                            <span>16.00 - 17.00</span>
                            <h6>Ppsr</h6>
                        </td>
                        <td class="hover-bg ts-item" data-tsmeta="murph">
                            <span>16.00 - 20.00</span>
                            <h6>murph</h6>
                        </td>
                    </tr>
                    <tr>
                        <td class="workout-time">18.00</td>
                        <td class="hover-bg ts-item" data-tsmeta="walls">
                            <span>18.00 - 20.00</span>
                            <h6>Walls to Knees</h6>
                        </td>
                        <td class="hover-bg ts-item" data-tsmeta="ppsr">
                            <span>18.00 - 20.00</span>
                            <h6>ppsr</h6>
                        </td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="chelsea">
                            <span>18.00 - 22.00</span>
                            <h6>Chelsea</h6>
                        </td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="annie">
                            <span>18.00 - 22.00</span>
                            <h6>annie</h6>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="workout-time">20.00</td>
                        <td class="hover-bg ts-item" data-tsmeta="lunge">
                            <span>21.00 - 23.00</span>
                            <h6>Lunge Ball Bur</h6>
                        </td>
                        <td class="hover-bg ts-item" data-tsmeta="walls">
                            <span>20.00 - 22.00</span>
                            <h6>Walls to Knees</h6>
                        </td>
                        <td class="hover-bg ts-item" data-tsmeta="walls">
                            <span>20.30 - 23.00</span>
                            <h6>Walls to Knees</h6>
                        </td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="crossfit">
                            <span>22.00 - 23.00</span>
                            <h6>Crossfit Lv2</h6>
                        </td>
                        <td></td>
                        <td class="hover-bg ts-item" data-tsmeta="crossfit">
                            <span>21.00 - 23.00</span>
                            <h6>Crossfit Lv2</h6>
                        </td>
                    </tr> --}}
                </tbody>
            </table>
        </div>
    </div>
</section>