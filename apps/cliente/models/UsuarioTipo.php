<?php

namespace Ticobox\Cliente\Models;

class UsuarioTipo extends \Phalcon\Mvc\Model
{

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
     * @return int
     */
    public function getIdUsuarioTipo()
    {
        return $this->id_usuario_tipo;
    }

    /**
     * @param int $id_usuario_tipo
     */
    public function setIdUsuarioTipo($id_usuario_tipo)
    {
        $this->id_usuario_tipo = $id_usuario_tipo;
    }

    /**
     * @return string
     */
    public function getNome()
    {
        return $this->nome;
    }

    /**
     * @param string $nome
     */
    public function setNome($nome)
    {
        $this->nome = $nome;
    }



    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->hasMany('id_usuario_tipo', 'Usuario', 'id_usuario_tipo', array('alias' => 'Usuario'));
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'usuario_tipo';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return UsuarioTipo[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    public static function findId($id){
        $parameters = array(
            'conditions' => 'id_usuario_tipo = ?1',
            'bind' => [1 => $id]
        );
        $row = parent::findFirst($parameters);
        if($row){
            return $row;
        }

        return false;

    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return UsuarioTipo
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
