<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	
	function __construct()
	{
        parent::__construct();
        $this->load->model('Model_common');
        $this->load->model('Model_home');
        $this->load->model('Model_portfolio');
    }

	public function index()
	{
		$data['setting'] = $this->Model_common->all_setting();
		$data['page_home'] = $this->Model_common->all_page_home();
		$data['comment'] = $this->Model_common->all_comment();
		$data['social'] = $this->Model_common->all_social();
		$data['all_news'] = $this->Model_common->all_news();
		$data['all_news_category'] = $this->Model_common->all_news_category();

		$data['sliders'] = $this->Model_home->all_slider();
		$data['services'] = $this->Model_home->all_service();
		$data['features'] = $this->Model_home->all_feature();
		$data['why_choose'] = $this->Model_home->all_why_choose();
		$data['team_members'] = $this->Model_home->all_team_member();
		$data['testimonials'] = $this->Model_home->all_testimonial();		
		$data['clients'] = $this->Model_home->all_client();
		$data['pricing_table'] = $this->Model_home->all_pricing_table();
		$data['home_faq'] = $this->Model_home->all_faq_home();

		$data['portfolio_category'] = $this->Model_portfolio->get_portfolio_category();
		$data['portfolio'] = $this->Model_portfolio->get_portfolio_data();

		$data['portfolio_footer'] = $this->Model_portfolio->get_portfolio_data();

		$this->load->view('view_header',$data);
		$this->load->view('view_home',$data);
		$this->load->view('view_footer',$data);
	}

	public function send_email() 
	{

		$data['setting'] = $this->Model_common->all_setting();

		$error = '';

		if(isset($_POST['form_quick_contact'])) {

			$valid = 1;

			$first_name = $this->input->post('first_name', true);
			$last_name = $this->input->post('last_name', true);
			$phone = $this->input->post('phone', true);
			$email = $this->input->post('email', true);
			$address = $this->input->post('address', true);
			$message = $this->input->post('message', true);

			$this->form_validation->set_rules('first_name', 'First Name', 'trim|required');
			$this->form_validation->set_rules('last_name', 'Last Name', 'trim|required');
			$this->form_validation->set_rules('phone', 'Phone', 'trim|required');
			$this->form_validation->set_rules('email', 'Email Address', 'trim|required|valid_email');
			$this->form_validation->set_rules('address', 'Address', 'trim|required');
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
					<b>First Name: </b> '.$first_name.'<br><br>
					<b>Last Name: </b> '.$last_name.'<br><br>
					<b>Phone: </b> '.$phone.'<br><br>
					<b>Email: </b> '.$email.'<br><br>
					<b>Address: </b> '.$address.'<br><br>
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
				$this->email->reply_to($email);

				$this->email->subject('Quick Contact Form Email');
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
