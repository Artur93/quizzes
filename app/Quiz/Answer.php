<?php
/**
 * Created by PhpStorm.
 * User: Arturo
 * Date: 8/7/2020
 * Time: 4:25 PM
 */

namespace App\Quiz;


use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['answer', 'question_id', 'mode_id', 'is_correct'];

    /**
     * @var bool
     */
    public $timestamps = false;
}