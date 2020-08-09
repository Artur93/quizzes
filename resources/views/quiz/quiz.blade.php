@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="list-group">
                    <input type="hidden" id="user-id" value="{{$quizzes['user_id']}}">
                    <div id="mode">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="modes" value="1">
                            <label class="form-check-label" for="inlineRadio1">Binary</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="modes" value="2">
                            <label class="form-check-label" for="inlineRadio2">Multiple choice questions</label>
                        </div>
                    </div>
                    <div id="quiz-list">
                        @foreach($quizzes['quiz'] as $quiz)
                            <div>
                                <button type="button" class="list-group-item list-group-item-action quizzes" disabled>{{$quiz->quiz}}</button>
                                <input type="hidden" class="quiz-id" value="{{$quiz->id}}">
                            </div>
                        @endforeach
                    </div>
                    <div id="question-list"></div>
                    <div id="quiz-result"></div>
                </div>
            </div>
        </div>
    </div>
@endsection
