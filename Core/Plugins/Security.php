<?php

namespace Core\Plugins;

use Phalcon\Acl;
use Phalcon\Acl\Role;
use Phalcon\Acl\Resource;
use Phalcon\Events\Event;
use Phalcon\Mvc\User\Plugin;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Acl\Adapter\Memory as AclList;


/**
 * SecurityPlugin
 *
 * This is the security plugin which controls that users only have access to the modules they're assigned to
 */
class Security extends Plugin
{
	/**
	 * Returns an existing or new access control list
	 *
	 * @returns AclList
	 */
	public function getAcl()
	{
		if (!isset($this->persistent->acl)) {

			$acl = new AclList();
			$acl->setDefaultAction(Acl::DENY);

            $config = $this->getDI()->get('config')->acl;


			//Register roles
            foreach($config->roles as $role => $inheritance) {
                $role = new Role($role);
                if($acl->isRole($inheritance) && !is_null($inheritance)){
                    $inheritance = new Role($inheritance);
                }
                $acl->addRole($role, $inheritance);
            }

            //Register resources
            foreach ($config->resources as $resource => $actions) {
                $acl->addResource(new Resource($resource), $actions->toArray());
            }

            //Privileges
            foreach ($config->privilege as $role => $methodList) {
                foreach($methodList as $method => $levels) {
                    foreach($levels as $resource => $accessList) {
                        foreach($accessList as $access) {
                            if ($method == 'allow') {
                                $acl->allow($role, $resource, $access);
                            } else {
                                $acl->deny($role, $resource, $access);
                            }
                        }
                    }
                }
            }

			//The acl is stored in session, APC would be useful here too
			$this->persistent->acl = $acl;
		}

		return $this->persistent->acl;
	}

	/**
	 * This action is executed before execute any action in the application
	 *
	 * @param Event $event
	 * @param Dispatcher $dispatcher
	 * @return bool
	 */
	public function beforeExecuteRoute(Event $event, Dispatcher $dispatcher)
	{

		$auth = $this->auth->getIdentity();

		if (!$auth){
			$role = 'Visitante';
		} else {
			$role = $auth['usuario_tipo'];
		}

		$controller = $dispatcher->getControllerName();
		$action = $dispatcher->getActionName();

		$acl = $this->getAcl();

		$allowed = $acl->isAllowed($role, $controller, $action);
		if ($allowed != Acl::ALLOW) {
			$dispatcher->forward(array(
				'controller' => 'errors',
				'action'     => 'show401'
			));

			return false;
		}
	}
}
