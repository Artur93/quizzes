<?php
/**
 * Created by PhpStorm.
 * User: Arturo
 * Date: 8/7/2020
 * Time: 4:27 PM
 */

namespace App\Quiz;


use Illuminate\Database\Eloquent\Model;

class UserAnswer extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['user_id', 'quiz_id', 'question_id', 'answer_id'];

    /**
     * @var string
     */
    protected $table = 'users_answers';

    /**
     * @var bool
     */
    public $timestamps = false;
}