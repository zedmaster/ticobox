<?php

namespace Ticobox\Frontend\Controllers;

use Ticobox\Frontend\Forms\LoginForm;
use Ticobox\Frontend\Forms\ClienteForm;
use Ticobox\Frontend\Models\Usuario;


class IndexController extends ControllerBase
{

    public function indexAction()
    {

        $this->view->form = new LoginForm;
    }


    public function authAction()
    {
        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "index",
                "action" => "index"
            ));
        }


        $form = new LoginForm;
        $usuario = new Usuario;


        $data = $this->request->getPost();


        if (!$form->isValid($data)) {
            foreach ($form->getMessages() as $message) {
                $this->flash->error($message);
            }
            return $this->dispatcher->forward(array(
                "controller" => "index",
                "action" => "index"
            ));
        }


        $this->flash->success("Seu acesso foi liberado.");
        $this->response->redirect('/painel');
        $this->view->disable();
    }



}

