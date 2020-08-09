<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/api/questionapi/questions', 'Question\QuestionAPIController@getQuestions');

Route::get('/api/answerapi/correctanswer', 'Answer\AnswerAPIController@getCorrectAnswer');

Route::post('/api/useranswerapi/save', 'UserAnswer\UserAnswerAPIController@saveAnswers');

Route::get('/api/useranswerapi/result', 'UserAnswer\UserAnswerAPIController@getResults');

Route::delete('/api/useranswerapi/delete', 'UserAnswer\UserAnswerAPIController@deleteResults');
