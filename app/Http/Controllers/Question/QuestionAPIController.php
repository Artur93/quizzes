<?php
/**
 * Created by PhpStorm.
 * User: Arturo
 * Date: 8/8/2020
 * Time: 4:17 PM
 */

namespace App\Http\Controllers\Question;


use App\Quiz\Question;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Request;

class QuestionAPIController
{
    /**
     * @param Request $request
     */
    public function getQuestions(Request $request)
    {
        if ($request->ajax()) {

            $quizId = $request->get('quiz_id');
            $modeId = $request->get('mode_id');

            $questAns = DB::select("SELECT q.id quest_id, question, GROUP_CONCAT(a.id ORDER BY a.id) ans_id, 
                                            GROUP_CONCAT(answer ORDER BY a.id) ans, GROUP_CONCAT(a.is_correct ORDER BY a.id) is_correct
                                            FROM questions q JOIN answers a
                                            ON q.id = a.question_id
                                            WHERE q.quiz_id = ? AND a.mode_id = ?
                                            GROUP BY q.id", [$quizId, $modeId]);

            return $questAns;
        }
    }
}