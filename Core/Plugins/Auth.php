<?php

namespace Core\Plugins;

use Phalcon\Mvc\User\Plugin;
use Ticobox\Cliente\Models\Usuario;


/**
 * Class Auth
 * @package Core\Plugins
 */
class Auth extends Plugin
{
    protected $_messages = Array() ;


    public function check($parameters)
    {
        $usuario = Usuario::findLogin($parameters);

        if($usuario == false){
            $this->appendMessage('E-mail ou senha inválidos');
            return false;
        }

        $this->_setIdentity($usuario);

        return true;
    }


    private function _setIdentity($usuario)
    {
        $home = $this->getDI()->get('config')->acl->home->toArray();

        $st_identity = [
            'id_usuario'    => $usuario->id_usuario,
            'email' => $usuario->email,
            'nome'  => $usuario->nome,
            'usuario_tipo' => 'Cliente',
            'home' => $home['Cliente']
        ];

        $this->session->set('identity', $st_identity);
    }


    public function setGuest($name, $role, $url){
        $st_identity = [
            'id_usuario'    => '',
            'email' => '',
            'nome'  => $name,
            'usuario_tipo' => $role,
            'home' => $url
        ];

        $this->session->set('identity', $st_identity);
    }

    public function getIdentity()
    {
        return $this->session->get('identity');
    }

    public function appendMessage($message){
        $this->_messages[] = $message;
    }

    public function getMessages()
    {
        return $this->_messages;
    }

}