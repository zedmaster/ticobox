<?php

namespace Ticobox\Admin\Controllers;

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{

    public function initialize(){
        $identity = $this->session->get('identity');
        $this->view->identity = $identity;

        $this->getDI()->get('navigation')->setActiveResourceNode(
            $this->dispatcher->getActionName(),
            $this->dispatcher->getControllerName(),
            $this->dispatcher->getModuleName(),
            $this->getDI()->get('config')->acl->toArray(),
            $identity['usuario_tipo']
        );
        $this->view->setVar("navigation", $this->getDI()->get('navigation'));
        $this->view->modulo = $this->dispatcher->getModuleName();



    }
}
