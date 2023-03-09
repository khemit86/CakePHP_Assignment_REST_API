<?php
namespace App\Controller\Api;

use App\Controller\AppController;

/**
 * Users Controller
 *
 *
 * @method \App\Model\Entity\User[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class UsersController extends AppController
{


	public function initialize()
	{

	parent::initialize();
	$this->loadComponent('RequestHandler');

	}
	
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index()
    {
		$this->request->allowMethod(['get']);
		$users = $this->paginate($this->Users);
        $this->set([
			'success'=>true,
            'users' => $users,
            '_serialize' => ['success','users']
        ]);
    }

    

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $this->request->allowMethod(['post', 'put']);
        $user = $this->Users->newEntity($this->request->getData());
		
		if($user->errors()) {
			$this->set([
				'errors' => $user->errors(), 
				'success' => false,
				'_serialize' => ['success','errors']]);
			return;
		}
		
		
        if ($this->Users->save($user)) {
            $success = true;
        } else {
            $message = false;
        }
        $this->set([
            'success' => $success,
            'user' => $user,
			
            '_serialize' => ['success', 'user']
        ]);
    }


   
}
