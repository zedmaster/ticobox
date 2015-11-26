<?php

namespace Ticobox\Frontend\Controllers;

use Ticobox\Frontend\Forms\ClienteForm;
use Ticobox\Frontend\Models\Usuario;


class CadastroController extends ControllerBase
{

    public function indexAction()
    {

        $this->view->form = new ClienteForm;
    }


    public function saveAction()
    {
        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "index",
                "action" => "index"
            ));
        }


        $form = new ClienteForm;
        $usuario = new Usuario();


        $data = $this->request->getPost();


        $form->bind($data, $usuario);

        if ($form->isValid($data)) {
            $usuario->id_usuario_tipo = 1;
            if ($usuario->create()) {
                $this->flash->success("Seu cadastro foi realizado com sucesso. Agora efetue o login.");
                $this->response->redirect('/');
            }

            foreach ($usuario->getMessages() as $message) {
                $this->flash->error($message);
            }


        }

        foreach ($form->getMessages() as $message) {
            $this->flash->error($message);
        }

        return $this->dispatcher->forward(array(
            "controller" => "cadastro",
            "action" => "index"
        ));
    }


}

