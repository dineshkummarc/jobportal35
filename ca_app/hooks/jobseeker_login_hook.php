<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Jobseeker_Login_Hook {
    public function __construct() {
       
    }
    function validate_jobseeker_login() {
        $CI 		= & get_instance();
        $folder 	= $CI->uri->segment(1);
        $controller = $CI->uri->segment(2);
        $method 	= $CI->uri->segment(3);
        if ($folder == "jobseeker" && $controller != 'home') {
			 
				   $is_jobseeker_login = $CI->session->userdata('is_job_seeker');
				   if ((bool)($is_jobseeker_login) === FALSE) {
					  
					   $CI->session->set_userdata('back_from_user_login', $CI->uri->uri_string);
					   redirect('login', 'refresh');
				   }
		}
    }
}