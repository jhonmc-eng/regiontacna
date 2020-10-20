<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lang extends CI_Controller {
	
	function __construct()
	{
        parent::__construct();
        $this->load->model('Model_common');
        $this->load->model('Model_portfolio');
    }

    public function index()
    {
    	redirect(base_url());
    	exit;
    }

    public function change()
    {
    	$lang_change_id = $this->input->post('lang_change_id');
    	if($lang_change_id)
    	{
    		$_SESSION['sess_lang_id'] = $lang_change_id;
    	}
    	redirect($this->agent->referrer());
    }
}