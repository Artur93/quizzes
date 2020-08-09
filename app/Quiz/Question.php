<?php
/**
 * Created by PhpStorm.
 * User: Arturo
 * Date: 8/7/2020
 * Time: 4:21 PM
 */

namespace App\Quiz;


use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['question', 'quiz_id'];

    /**
     * @var bool
     */
    public $timestamps = false;
}