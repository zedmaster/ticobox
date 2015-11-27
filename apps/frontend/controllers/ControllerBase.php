<?php

namespace Ticobox\Frontend\Controllers;

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{

    public function initialize(){
        $identity = $this->session->get('identity');

        if(!$identity){
            $identity['nome'] = ' ';
            $identity['home'] = '/';
        }

        $this->view->identity = $identity;
    }
}
