<?php
/**
 * Created by PhpStorm.
 * User: Arturo
 * Date: 8/7/2020
 * Time: 4:35 PM
 */

namespace App\Quiz;


use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['quiz'];

    /**
     * @var bool
     */
    public $timestamps = false;
}