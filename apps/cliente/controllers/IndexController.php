<?php

namespace Ticobox\Cliente\Controllers;

use Phalcon\Exception;
use Ticobox\Cliente\Forms\LoginForm;
use Ticobox\Cliente\Forms\ClienteForm;
use Ticobox\Cliente\Models\Usuario;



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
        $mensagens = Array();


        if (!$form->isValid($data)) {

            foreach ($form->getMessages() as $mensagem) {
                $mensagens[] = $mensagem;
            }
        }else{

            if(!$this->auth->check($data)){
                foreach ($this->auth->getMessages() as $mensagem) {
                    $mensagens[] = $mensagem;
                }
            }
        }

        if(count($mensagens)>0) {
            foreach ($mensagens as $mensagem) {
                $this->flash->error($mensagem);
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

    public function logoutAction()
    {
        $this->session->destroy();

        $this->response->redirect('/');
        $this->view->disable();
    }

    public function errorAction()
    {
        throw new Exception("Teste de erro");
    }

}

