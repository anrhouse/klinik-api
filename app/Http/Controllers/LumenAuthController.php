<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LumenAuthController extends Controller{
    public function __construct() {
        $this->middleware('auth:api', ['except' =>['login','refresh','logout']]);
    }
}
?>