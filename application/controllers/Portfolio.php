<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Portfolio extends CI_Controller {

	function __construct() 
	{
        parent::__construct();
        $this->load->model('Model_common');
        $this->load->model('Model_portfolio');
    }

	public function index()
	{
		$data['setting'] = $this->Model_common->all_setting();
		$data['page_home'] = $this->Model_common->all_page_home();
		$data['page_portfolio'] = $this->Model_common->all_page_portfolio();
		$data['comment'] = $this->Model_common->all_comment();
		$data['social'] = $this->Model_common->all_social();
		$data['all_news'] = $this->Model_common->all_news();

		$data['portfolio_category'] = $this->Model_portfolio->get_portfolio_category();
		$data['portfolio'] = $this->Model_portfolio->get_portfolio_data();

		$data['portfolio_footer'] = $this->Model_portfolio->get_portfolio_data();

		$this->load->view('view_header',$data);
		$this->load->view('view_portfolio');
		$this->load->view('view_footer');
	}

	public function view($id)
	{
		$data['setting'] = $this->Model_common->all_setting();
		$data['page_home'] = $this->Model_common->all_page_home();
		$data['page_portfolio'] = $this->Model_common->all_page_portfolio();
		$data['comment'] = $this->Model_common->all_comment();
		$data['social'] = $this->Model_common->all_social();
		$data['all_news'] = $this->Model_common->all_news();

		$data['portfolio_order_by_name'] = $this->Model_portfolio->get_portfolio_data_order_by_name();

		$data['portfolio'] = $this->Model_portfolio->get_portfolio_detail($id);
		$data['portfolio_photo'] = $this->Model_portfolio->get_portfolio_photo($id);
		$data['portfolio_photo_total'] = $this->Model_portfolio->get_portfolio_photo_number($id);

		$data['portfolio_footer'] = $this->Model_portfolio->get_portfolio_data();

		$this->load->view('view_header',$data);
		$this->load->view('view_portfolio_detail',$data);
		$this->load->view('view_footer');
	}

	public function send_email() 
	{

		$data['setting'] = $this->Model_common->all_setting();

		$error = '';

		if(isset($_POST['form_portfolio'])) {

			$valid = 1;

			$this->form_validation->set_rules('name', 'Name', 'trim|required');
			$this->form_validation->set_rules('email', 'Email Address', 'trim|required|valid_email');
			$this->form_validation->set_rules('phone', 'Phone', 'trim|required');
			$this->form_validation->set_rules('message', 'Message', 'trim|required');
			$this->form_validation->set_error_delimiters('', '<br>');

			if($this->form_validation->run() == FALSE) {
				$valid = 0;
                $error .= validation_errors();
            }

		    if($valid == 1)
		    {
				$msg = '
				<html><head><title>Email Sending</title></head><body>
            		<h3>Sender Information</h3>
					<b>Name: </b> '.$_POST['name'].'<br><br>
					<b>Phone: </b> '.$_POST['phone'].'<br><br>
					<b>Email: </b> '.$_POST['email'].'<br><br>
					<b>Portfolio Name: </b> '.$_POST['portfolio'].'<br><br>
					<b>Message: </b> '.$_POST['message'].'</body></html>
				';
            	
            	if($data['setting']['smtp_active'] == 'Yes') {
					if($data['setting']['smtp_ssl'] == 'Yes') {
						$config = array(
		                    'protocol' => 'smtp',
		                    'smtp_crypto' => 'ssl',
		                    'smtp_host' => $data['setting']['smtp_host'],
		                    'smtp_port' => $data['setting']['smtp_port'],
		                    'smtp_user' => $data['setting']['smtp_username'],
		                    'smtp_pass' => $data['setting']['smtp_password'],
		                    'mailtype'  => 'html', 
		                    'charset'   => 'utf-8'
		                );
					}
					else
					{
						$config = array(
		                    'protocol' => 'smtp',
		                    'smtp_host' => $data['setting']['smtp_host'],
		                    'smtp_port' => $data['setting']['smtp_port'],
		                    'smtp_user' => $data['setting']['smtp_username'],
		                    'smtp_pass' => $data['setting']['smtp_password'],
		                    'mailtype'  => 'html', 
		                    'charset'   => 'utf-8'
		                );	
					}
	            	$this->load->library('email', $config);
				} else {
					$this->load->library('email');
				}

				$this->email->from($data['setting']['send_email_from']);
				$this->email->to($data['setting']['receive_email_to']);
				$this->email->reply_to($_POST['email'], $_POST['name']);

				$this->email->subject('Portfolio Page Email');
				$this->email->message($msg);

				$this->email->send();

		        $success = 'Thank you for sending the email. We will reply you shortly.';
        		$this->session->set_flashdata('success',$success);

		    } 
		    else
		    {
        		$this->session->set_flashdata('error',$error);
		    }

			redirect($this->agent->referrer());
            
        } else {
            
            redirect($this->agent->referrer());
        }
	}
}