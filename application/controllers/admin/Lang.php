<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Lang extends CI_Controller 
{
	function __construct() 
	{
        parent::__construct();
        $this->load->model('admin/Model_common');
        $this->load->model('admin/Model_lang');
    }

	public function index()
	{
		$data['setting'] = $this->Model_common->get_setting_data();
		$data['lang'] = $this->Model_lang->show();

		$this->load->view('admin/view_header',$data);
		$this->load->view('admin/view_lang',$data);
		$this->load->view('admin/view_footer');
	}

	public function add()
	{
		$data['setting'] = $this->Model_common->get_setting_data();

		$next_id = $this->Model_lang->get_auto_increment_id();
		foreach ($next_id as $row) {
            $ai_id = $row['Auto_increment'];
        }

		$lang_name = $this->input->post('lang_name', true);
		$lang_short_name = $this->input->post('lang_short_name', true);
		$lang_default = $this->input->post('lang_default', true);

		if($lang_default == 1)
		{
			// Update others as empty
			$arr = array(
				'lang_default' => ''
			);
			$this->Model_lang->make_all_empty($arr);

			// Make this one 'Yes'
			$lang_default = 'Yes';
		}
		else
		{
			$lang_default = '';	
		}

		$error = '';
		$success = '';

		if(isset($_POST['form1'])) {

			$valid = 1;

			$this->form_validation->set_rules('lang_name', 'Language Name', 'trim|required');
			$this->form_validation->set_rules('lang_short_name', 'Language Short Name', 'trim|required');

			if($this->form_validation->run() == FALSE) {
				$valid = 0;
                $error = validation_errors();
            }

	   		if($valid == 1)
		    {
		        $form_data = array(
					'lang_name' => $lang_name,
					'lang_short_name' => $lang_short_name,
					'lang_default' => $lang_default
	            );
	            $this->Model_lang->add($form_data);

	            $temp_arr = array(
	            	'HOME',
	            	'ABOUT',
	            	'TEAM',
	            	'PAGE',
	            	'EVENT',
	            	'PHOTO_GALLERY',
	            	'TESTIMONIAL',
	            	'FAQ',
	            	'PRICING_TABLE',
	            	'SERVICE',
	            	'PORTFOLIO',
	            	'NEWS',
	            	'CONTACT',
	            	'SEARCH_FOR',
	            	'READ_MORE',
	            	'SUBMIT',
	            	'FIRST_NAME',
	            	'LAST_NAME',
	            	'PHONE_NUMBER',
	            	'EMAIL_ADDRESS',
	            	'ADDRESS',
	            	'MESSAGE',
	            	'START_DATE',
	            	'END_DATE',
	            	'EVENT_START_DATE',
	            	'EVENT_END_DATE',
	            	'EVENT_LOCATION_MAP',
	            	'SHARE_THIS_EVENT',
	            	'SHARE_THIS_NEWS',
	            	'COMMENT',
	            	'NAME',
	            	'ALL',
	            	'PROJECT_OVERVIEW',
	            	'CATEGORY',
	            	'CLIENT_NAME',
	            	'CLIENT_COMPANY_NAME',
	            	'PROJECT_START_DATE',
	            	'PROJECT_END_DATE',
	            	'CLIENT_COMMENT',
	            	'NEWS_DATE',
	            	'RECENT_PORTFOLIO',
	            	'RECENT_PORTFOLIO_SUBTITLE',
	            	'CONTACT_FORM',
	            	'SEND_MESSAGE',
	            	'SUBJECT',
	            	'NO_RESULT_FOUND',
	            	'TERMS_AND_CONDITIONS',
	            	'PRIVACY_POLICY',
	            	'SUBSCRIPTION_SUCCESS',
	            	'FOOTER_1_HEADING',
	            	'FOOTER_2_HEADING',
	            	'FOOTER_3_HEADING',
	            	'FOOTER_4_HEADING',
	            	'FOOTER_CTA_BUTTON',
	            	'SIDEBAR_NEWS_HEADING_1',
	            	'SIDEBAR_NEWS_HEADING_2',
	            	'SIDEBAR_EVENT_HEADING_1',
	            	'SIDEBAR_EVENT_HEADING_2',
	            	'SIDEBAR_SERVICE_HEADING_1',
	            	'SIDEBAR_SERVICE_HEADING_2',
	            	'SIDEBAR_PORTFOLIO_HEADING_1',
	            	'SIDEBAR_PORTFOLIO_HEADING_2'
	            );

	            for($i=0;$i<count($temp_arr);$i++)
	            {
	            	$form_data = array(
	            		'lang_string' => $temp_arr[$i],
	            		'lang_string_value' => '',
	            		'lang_id' => $ai_id
		            );
		            $this->Model_lang->add_detail($form_data);
	            }

		        $success = 'Language is added successfully!';
		        $this->session->set_flashdata('success',$success);
				redirect(base_url().'admin/lang');		        
		    }
		    else
		    {
		    	$this->session->set_flashdata('error',$error);
				redirect(base_url().'admin/lang/add');
		    }
            
        } else {
            $this->load->view('admin/view_header',$data);
			$this->load->view('admin/view_lang_add',$data);
			$this->load->view('admin/view_footer');
        }
		
	}


	public function edit($id)
	{
    	$tot = $this->Model_lang->lang_check($id);
    	if(!$tot) {
    		redirect(base_url().'admin/lang');
        	exit;
    	}
       	
       	$data['setting'] = $this->Model_common->get_setting_data();

       	$error = '';
		$success = '';

       	$lang_name = $this->input->post('lang_name', true);
		$lang_short_name = $this->input->post('lang_short_name', true);
		$lang_default = $this->input->post('lang_default', true);


		if($lang_default == 1)
		{
			// Update others as empty
			$arr = array(
				'lang_default' => ''
			);
			$this->Model_lang->make_all_empty($arr);

			// Make this one 'Yes'
			$lang_default = 'Yes';
		}
		else
		{
			$lang_default = '';	
		}

		if(isset($_POST['form1'])) 
		{
			$valid = 1;

			$this->form_validation->set_rules('lang_name', 'Language Name', 'trim|required');
			$this->form_validation->set_rules('lang_short_name', 'Language Short Name', 'trim|required');

			if($this->form_validation->run() == FALSE) {
				$valid = 0;
                $error = validation_errors();
            }
            
		    if($valid == 1) 
		    {
		    	$data['faq'] = $this->Model_lang->getData($id);

	    		$form_data = array(
					'lang_name'  => $lang_name,
					'lang_short_name'=> $lang_short_name,
					'lang_default' => $lang_default
	            );
	            $this->Model_lang->update($id,$form_data);
				
				$success = 'Lenguaje Actualizado Correctamente';
				$this->session->set_flashdata('success',$success);
				redirect(base_url().'admin/lang');
		    }
		    else 
		    {
		    	$this->session->set_flashdata('error',$error);
				redirect(base_url().'admin/lang/add');
		    }

          
		} else {
			$data['lang'] = $this->Model_lang->getData($id);
	       	$this->load->view('admin/view_header',$data);
			$this->load->view('admin/view_lang_edit',$data);
			$this->load->view('admin/view_footer');
		}

	}

	public function delete($id) 
	{
    	$tot = $this->Model_lang->lang_check($id);
    	if(!$tot) {
    		redirect(base_url().'admin/lang');
        	exit;
    	}

        $this->Model_lang->delete($id);
        $this->Model_lang->delete_detail($id);
        $success = 'Languaje Borrado Correctamente';
		$this->session->set_flashdata('success',$success);
		redirect(base_url().'admin/lang');
    }

    public function detail($id)
    {
    	$tot = $this->Model_lang->lang_check($id);
    	if(!$tot) {
    		redirect(base_url().'admin/lang');
        	exit;
    	}
       	
       	$data['setting'] = $this->Model_common->get_setting_data();

       	$error = '';
		$success = '';

		if(isset($_POST['form1'])) 
		{
			foreach ($_POST['new_arr'] as $val) {
				$new_arr2[] = $val;
			}

			foreach ($_POST['new_arr1'] as $val) {
				$new_arr3[] = $val;
			}

			for($i=0;$i<count($new_arr2);$i++) {
							
				$form_data = array(
					'lang_string_value' => $new_arr2[$i]
	            );
	            $this->Model_lang->update_detail($new_arr3[$i],$form_data);
			}

	    	$data['lang_detail'] = $this->Model_lang->detail($_POST['id']);
			
			$success = 'Los detalles del idioma se actualizan correctamente';
			$this->session->set_flashdata('success',$success);
			redirect(base_url().'admin/lang/detail/'.$id);
		}
		else
		{
			$data['lang_detail'] = $this->Model_lang->detail($id);
			$data['id'] = $id;
			$this->load->view('admin/view_header',$data);
			$this->load->view('admin/view_lang_detail',$data);
			$this->load->view('admin/view_footer');	
		}
		
    }

}