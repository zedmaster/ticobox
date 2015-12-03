<?php

namespace Core\Plugins;

use Phalcon\Mvc\User\Plugin;
use Ticobox\Cliente\Models\Usuario;
use Ticobox\Cliente\Models\UsuarioTipo;


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
        $usuarioTipo = UsuarioTipo::findId($usuario->id_usuario_tipo);
        $role = $usuarioTipo->nome;

        //var_dump($role);die();

        $st_identity = [
            'id_usuario'    => $usuario->id_usuario,
            'email' => $usuario->email,
            'nome'  => $usuario->nome,
            'usuario_tipo' => $role,
            'home' => $home[$role]
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