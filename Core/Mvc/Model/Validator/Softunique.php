<?php

namespace Core\Mvc\Model\Validator;

/**
 * Procura se tem algum registro igual considerando o flag isdel = 0
 */
class Softunique extends \Phalcon\Mvc\Model\Validator implements \Phalcon\Mvc\Model\ValidatorInterface
{

    /**
     * Executes the validator
     *
     * @param mixed $record
     * @return bool
     */
    public function validate(\Phalcon\Mvc\EntityInterface $record) {
        //var_dump($record);die();

        $field = $this->getOption('field');

        $row = $record->count([
            'conditions' => $field.' = ?1 AND isdel = 0',
            'bind' => [1 => $record->readAttribute($field)]
        ]);

        if($row) {
            $message = $this->getOption('message');
            if(!$message) {
                $message = "Já existe " . $field . " cadastrado" ;
            }
            $this->appendMessage($message, $field, "Unique");
        }

        return false;

    }

}