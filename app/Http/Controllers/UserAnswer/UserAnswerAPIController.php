<?php
/**
 * Created by PhpStorm.
 * User: Arturo
 * Date: 8/9/2020
 * Time: 2:54 PM
 */

namespace App\Http\Controllers\UserAnswer;


use App\Http\Controllers\Controller;
use App\Quiz\UserAnswer;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Request;

class UserAnswerAPIController extends Controller
{
    /**
     * @param Request $request
     */
    public function saveAnswers(Request $request)
    {
        if ($request->ajax()) {
            $userId = $request->get('user_id');
            $quizId = $request->get('quiz_id');
            $questionId = $request->get('question_id');
            $answerId = $request->get('answer_id');
            $sessAnsCheck = UserAnswer::select('id')->where([['user_id', '=', $userId], ['quiz_id', '=', $quizId],
                ['question_id', '=', $questionId] ])->first();

            if ($sessAnsCheck) {
                $userAnsId = $sessAnsCheck['id'];
                UserAnswer::where('id', $userAnsId)->update(['answer_id' => $answerId]);

                return response('Ok', 200);
            }

            UserAnswer::create(['user_id' => $userId, 'quiz_id' => $quizId, 'question_id' => $questionId, 'answer_id' => $answerId]);

            return response('Ok', 200);
        }
    }

    /**
     * @param Request $request
     */
    public function getResults(Request $request)
    {
        if ($request->ajax()) {

            $userId = $request->get('user_id');
            $quizId = $request->get('quiz_id');
            $isCorrect = 1;

            $result = DB::select("SELECT COUNT(ua.id) all_checked, 
                                                            IFNULL((SELECT COUNT(ua.id) FROM users_answers ua JOIN answers a
                                                            ON ua.answer_id = a.id
                                                            WHERE ua.user_id = ? AND ua.quiz_id = ? AND a.is_correct = ?
                                                            GROUP BY ua.user_id, ua.quiz_id), 0) correct_answers
                                        FROM users_answers ua
                                        WHERE ua.user_id = ? AND ua.quiz_id = ?
                                        GROUP BY ua.user_id, ua.quiz_id", [$userId, $quizId, $isCorrect, $userId, $quizId]);

            return $result;
        }
    }

    public function deleteResults(Request $request)
    {
        if ($request->ajax()) {

            $userId = $request->get('user_id');
            UserAnswer::where('user_id', $userId)->delete();

            return response('Ok', 200);
        }
    }
}