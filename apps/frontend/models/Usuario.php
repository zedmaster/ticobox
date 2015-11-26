<?php

namespace Ticobox\Frontend\Models;

use Phalcon\Mvc\Model\Validator\Email as Email;
use Core\Mvc\Model\Validator\Softunique;
use Phalcon\Mvc\Model\Behavior\SoftDelete;

class Usuario extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id_usuario;

    /**
     *
     * @var integer
     */
    public $id_usuario_tipo;

    /**
     *
     * @var string
     */
    public $nome;

    /**
     *
     * @var string
     */
    public $cpf;

    /**
     *
     * @var string
     */
    public $rg;

    /**
     *
     * @var string
     */
    public $email;

    /**
     *
     * @var string
     */
    public $senha;

    /**
     *
     * @var string
     */
    public $telefone;

    /**
     *
     * @var string
     */
    public $celular;

    /**
     *
     * @var string
     */
    public $data_cadastro;

    /**
     *
     * @var string
     */
    public $data_atualizacao;

    /**
     *
     * @var string
     */
    public $data_delete;

    /**
     *
     * @var integer
     */
    public $isdel;

    /**
     * Validations and business logic
     *
     * @return boolean
     */
    public function validation()
    {
        $this->cpf = preg_replace("/\D+/", "", $this->cpf);

        $this->validate(
            new Softunique(
                array(
                    'field'    => 'email',
                    'required' => true,
                    "message" => "Este E-mail já foi cadastrado"
                )
            )
        );

        $this->validate(
            new Softunique(
                array(
                    'field'    => 'cpf',
                    'required' => true,
                    "message" => "Este CPF já foi cadastrado"
                )
            )
        );

        if ($this->validationHasFailed() == true) {
            return false;
        }

        return true;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->hasMany('id_usuario', 'Sessao', 'id_usuario', array('alias' => 'Sessao'));
        $this->belongsTo('id_usuario_tipo', 'UsuarioTipo', 'id_usuario_tipo', array('alias' => 'UsuarioTipo'));


        $this->addBehavior(new SoftDelete([
            'field' => 'isdel',
            'value' => '1'
        ]));

        $this->addBehavior(new SoftDelete([
            'field' => 'date_delete',
            'value' => date('Y-m-d H:i:s')
        ]));

    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'usuario';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Usuario[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Usuario
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }


    /**
     * Retorna o login
     *
     * @param $parameters
     * @return bool|\Phalcon\Mvc\Model
     */
    public static function findLogin($parameters)
    {
        $email = $parameters['email'];
        $senha = $parameters['senha'];


        $row = parent::findFirst([
            'conditions' => 'email = ?1 AND senha = ?2 AND isdel = 0',
            'bind' => [1 => $email, 2 => $senha]
        ]);

        if($row){
            return $row;
        }

        return false;
    }


    /**
     *
     */
    public function beforeCreate()
    {
        $this->data_cadastro = date('Y-m-d H:i:s');

    }

    /**
     *
     */
    public function beforeUpdate()
    {
        $this->data_atualizacao = date('Y-m-d H:i:s');
    }

}
