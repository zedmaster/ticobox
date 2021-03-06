<?php

/*
 * Copyright 2014 Michał Strzelczyk
 * mail: kontakt@michalstrzelczyk.pl
 * 
 */
namespace Core\View\Helpers;

class Navigate {

    /**
     * Html 
     * 
     * @var string 
     */
    protected $html = '';

    /**
     * Translate
     * 
     * @var type 
     */
    protected $t;

    /**
     * @todo add acl veryfication
     * @todo add schedule veryfication
     * 
     */
    public function __construct() {
        if(is_null($this->t) && \Phalcon\DI::getDefault()->has('translate'))
            $this->t = \Phalcon\DI::getDefault()->get('translate');
    }
    
    /**
     * Translate proxy
     * 
     * @param type $word
     * @return string
     */
    private function _translate($word)
    {
        if(is_null($this->t))
            return $word;
        
        return $this->t->_($word);
    }
    
    /**
     * Create ul elements
     * 
     * @param type $node
     */
    private function _generate($node) {
        $class = !is_null($node->getClass()) ? " class='" . $node->getClass() . "' " : '';
        $id = !is_null($node->getId()) ? " id='" . $node->getId() . "'" : '';

        $this->html .= "\t<ul$class$id>" . PHP_EOL;
        if ($node->hasChilds())
            $this->_generateChilds($node->getChilds());
        $this->html .= "\t</ul>" . PHP_EOL;
    }

    /**
     * Create childs element
     * 
     * @param type $childs
     */
    private function _generateChilds($childs) {
        foreach ($childs as $node) {
            $this->_generateElement($node);
        }
    }

    /**
     * Create one element
     * 
     * @param type $node
     */
    private function _generateElement($node) {
        if(!$node->isAllow()){
            return;
        }

        $cssClasses = array();
        $cssActive = '';

        if ($node->isActive())
            $cssActive = 'class="active"';

        if (!is_null($node->getClass()))
            $cssClasses[] = $node->getClass();

        $class = count($cssClasses) > 0 ? " class='" . implode(',', $cssClasses) . "'" : '';
        $id = !is_null($node->getId()) ? " id='" . $node->getId() . "'" : '';
        $target = !is_null($node->getTarget()) ? " target='" . $node->getTarget() . "'" : '';

        $this->html .= "\t\t".'<li '.$cssActive.'>' . PHP_EOL;
        if (!$node->hasChilds()) {
            $this->html .= "\t\t\t".'<a href="'. $node->getUrl() .'" '. $target.' class="nav-header" ><span'.$class.'></span> ' . $this->_translate($node->getName()) . "</a>" . PHP_EOL;
        }

        //generate childs
        if ($node->hasChilds()) {
            //$this->html .= "\t\t<div class='dropdown'>" . PHP_EOL;
            $this->html .= '<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">'. $this->_translate($node->getName()).' <span class="caret"></span></a>' . PHP_EOL;;
            $this->html .= "\t\t<ul class=\"dropdown-menu\">" . PHP_EOL;
            $this->_generateChilds($node->getChilds());
            $this->html .= "\t\t</ul>" . PHP_EOL;
            //$this->html .= "\t\t</div>" . PHP_EOL;
        }

        $this->html .= "\t\t</li>" . PHP_EOL;
    }

    /**
     * Generate all HTML
     * 
     * @param type $node
     * @return string
     */
    public function toHtml($node) {
        $this->_generate($node);

        return $this->html;
    }

}
