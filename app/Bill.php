<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Exception;

class Bill extends Model
{
   	// public function getDetailAttribute($value) 
    // {
    // 	try {
    // 		return json_decode($value);
    // 	} catch (Exception $e) {
    // 		return [];
    // 	}
    // }
    public function search($search){
    	$result = $this->where('status', $search)->orderBy('id','desc')->get();
    	return $result;
    }
}
