<?php

namespace Ticobox\Cliente\Forms;

use Phalcon\Forms\Element\Submit;
use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Password;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\Confirmation;
use Core\Validation\Validator\Cpf;

class ClienteForm extends Form
{
    public function initialize($entity = null, $options = null)
    {
        // Name
        $name = new Text('nome', ['class' => 'form-control']);
        $name->setLabel('Nome');
        $name->setFilters(array('striptags', 'string'));
        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'É necessário preencher o Nome'
            ))
        ));
        $this->add($name);

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


        // Confirm Password
        $repeatPassword = new Password('confirmar', ['class' => 'form-control']);
        $repeatPassword->setLabel('Confirmar Senha');
        $repeatPassword->addValidators(array(
            new PresenceOf(array(
                'message' => 'É necessário preencher Confirmar Senha'
            )),
            new Confirmation([
                'message' => 'Erro na Confirmação da Senha',
                'with' => 'senha'
            ])
        ));
        $this->add($repeatPassword);


        // CPF
        $cpf = new Text('cpf', ['class' => 'form-control']);
        $cpf->setLabel('CPF');
        $cpf->setFilters(array('striptags', 'string'));
        $cpf->addValidators(array(
            new PresenceOf(array(
                'message' => 'É necessário preencher o CPF'
            )),
            new Cpf()
        ));
        $this->add($cpf);


        // RG
        /*
        $rg = new Text('rg', ['class' => 'form-control']);
        $rg->setLabel('RG');
        $rg->setFilters(array('striptags', 'string'));
        $this->add($rg);
        */


        // Telefone
        $telefone = new Text('telefone', ['class' => 'form-control']);
        $telefone->setLabel('Telefone');
        $telefone->setFilters(array('striptags', 'string'));
        $this->add($telefone);

        // Celular
        $celular = new Text('celular', ['class' => 'form-control']);
        $celular->setLabel('celular');
        $celular->setFilters(array('striptags', 'string'));
        $this->add($celular);

        // Submit
        $submit = new Submit('Enviar', ['class' => 'btn btn-default']);
        $submit->setLabel(' ');
        $this->add($submit);

    }
}