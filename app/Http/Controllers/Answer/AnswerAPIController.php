<?php
/**
 * Created by PhpStorm.
 * User: Arturo
 * Date: 8/8/2020
 * Time: 7:36 PM
 */

namespace App\Http\Controllers\Answer;


use App\Http\Controllers\Controller;
use App\Quiz\Answer;
use Symfony\Component\HttpFoundation\Request;

class AnswerAPIController extends Controller
{
    /**
     * @param Request $request
     */
    public function getCorrectAnswer(Request $request)
    {
        if ($request->ajax()) {
            $modeId = $request->get('mode_id');
            $questionId = $request->get('question_id');
            $isCorrect = 1;
            $answer = Answer::select('answer')->where([['question_id', '=', $questionId], ['mode_id', '=', $modeId],
                ['is_correct', '=', $isCorrect]])->first();

            return $answer;
        }
    }
}