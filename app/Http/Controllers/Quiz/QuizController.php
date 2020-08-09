<?php
/**
 * Created by PhpStorm.
 * User: Arturo
 * Date: 8/8/2020
 * Time: 4:16 PM
 */

namespace App\Http\Controllers\Quiz;


use App\Http\Controllers\Controller;
use App\Quiz\Quiz;
use Illuminate\Support\Facades\Auth;

class QuizController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $quizzes = Quiz::select('id', 'quiz')->get();
        $userId = Auth::id();
        $userQuizzes = array('user_id' => $userId, 'quiz' => $quizzes);

        return view('quiz/quiz')->with('quizzes', $userQuizzes);
    }
}