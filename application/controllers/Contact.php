<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

	function __construct()
	{
        parent::__construct();
        $this->load->model('Model_common');
        $this->load->model('Model_contact');
        $this->load->model('Model_portfolio');
    }

	public function index()
	{
		$data['setting'] = $this->Model_common->all_setting();
		$data['page_contact'] = $this->Model_common->all_page_contact();
		$data['comment'] = $this->Model_common->all_comment();
		$data['social'] = $this->Model_common->all_social();
		$data['all_news'] = $this->Model_common->all_news();

		$data['testimonials'] = $this->Model_contact->all_testimonial();
		$data['portfolio_footer'] = $this->Model_portfolio->get_portfolio_data();

		$this->load->view('view_header',$data);
		$this->load->view('view_contact',$data);
		$this->load->view('view_footer',$data);
	}

	public function send_email() 
	{

		$data['setting'] = $this->Model_common->all_setting();

		$error = '';

		if(isset($_POST['form_contact'])) {

			$valid = 1;

			$name = $this->input->post('name', true);
			$phone = $this->input->post('phone', true);
			$email = $this->input->post('email', true);
			$subject = $this->input->post('subject', true);
			$message = $this->input->post('message', true);

			$this->form_validation->set_rules('name', 'Name', 'trim|required');
			$this->form_validation->set_rules('phone', 'Phone', 'trim|required');
			$this->form_validation->set_rules('email', 'Email Address', 'trim|required|valid_email');
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
					<b>Name: </b> '.$name.'<br><br>
					<b>Phone: </b> '.$phone.'<br><br>
					<b>Email: </b> '.$email.'<br><br>
					<b>Subject: </b> '.$subject.'<br><br>
					<b>Message: </b> '.$message.'</body></html>';

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
				$this->email->reply_to($email, $name);

				$this->email->subject('Contact Form Email');
				$this->email->message($msg);

				$this->email->send();

		        $success = 'Thank you for sending the email. We will contact you shortly.';
        		$this->session->set_flashdata('success',$success);

		    } 
		    else
		    {
        		$this->session->set_flashdata('error',$error);
		    }

			redirect(base_url().'contact');
            
        } else {
            
            redirect(base_url().'contact');
        }
	}
}