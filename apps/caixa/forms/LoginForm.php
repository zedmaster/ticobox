<?php

namespace Ticobox\Caixa\Forms;

use Phalcon\Forms\Element\Submit;
use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Password;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;

class LoginForm extends Form
{
    public function initialize($entity = null, $options = null)
    {
        // Name
        $name = new Text('key', ['class' => 'form-control']);
        $name->setLabel('Chave');
        $name->setFilters(array('striptags', 'string'));
        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'É necessário preencher a Chave'
            ))
        ));
        //$this->add($name);

        // Email
        $email = new Text('email', ['class' => 'form-control']);
        $email->setLabel('E-Mail');
        $email->setFilters('email');
        $email->addValidators(array(
            new PresenceOf(array(
                'message' => 'É necessário preencher o E-mail'
            )),
            new Email(array(
                'message' => 'Formato de E-mail inválido'
            ))
        ));
        $this->add($email);

        // Password
        $password = new Password('senha', ['class' => 'form-control']);
        $password->setLabel('Senha');
        $password->addValidators(array(
            new PresenceOf(array(
                'message' => 'É necessário preencher a Senha'
            ))
        ));
        $this->add($password);


        // Submit
        $submit = new Submit('Enviar', ['class' => 'btn btn-default']);
        $submit->setLabel(' ');
        $this->add($submit);

    }
}