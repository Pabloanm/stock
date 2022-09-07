<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Customers extends Admin_Controller 
{
	public function __construct()
	{
		parent::__construct();

		$this->not_logged_in();

		$this->data['page_title'] = 'Customers';

		$this->load->model('model_customers');
		$this->load->model('model_brands');
		$this->load->model('model_category');
		$this->load->model('model_stores');
		$this->load->model('model_attributes');
	}

    /* 
    * It only redirects to the manage customer page
    */
	public function index()
	{
        if(!in_array('viewcustomer', $this->permission)) {
            redirect('dashboard', 'refresh');
        }

		$this->render_template('customers/index', $this->data);	
	}

    /*
    * It Fetches the customers data from the customer table 
    * this function is called from the datatable ajax function
    */
	public function fetchCustomerData()
	{
		$result = array('data' => array());

		$data = $this->model_customers->getCustomerData();

		foreach ($data as $key => $value) {

            $store_data = $this->model_stores->getStoresData($value['store_id']);
			// button
            $buttons = '';
            if(in_array('updateCustomer', $this->permission)) {
    			$buttons .= '<a href="'.base_url('customers/update/'.$value['id']).'" class="btn btn-default"><i class="fa fa-pencil"></i></a>';
            }

            if(in_array('deleteCustomer', $this->permission)) { 
    			$buttons .= ' <button type="button" class="btn btn-default" onclick="removeFunc('.$value['id'].')" data-toggle="modal" data-target="#removeModal"><i class="fa fa-trash"></i></button>';
            }
			

			$img = '<img src="'.base_url($value['image']).'" alt="'.$value['name'].'" class="img-circle" width="50" height="50" />';

            $availability = ($value['availability'] == 1) ? '<span class="label label-success">Active</span>' : '<span class="label label-warning">Inactive</span>';

            $qty_status = '';
            if($value['qty'] <= 10) {
                $qty_status = '<span class="label label-warning">Low !</span>';
            } else if($value['qty'] <= 0) {
                $qty_status = '<span class="label label-danger">Out of stock !</span>';
            }


			$result['data'][$key] = array(
				$img,
				$value['sku'],
				$value['name'],
				$value['price'],
                $value['qty'] . ' ' . $qty_status,
                $store_data['name'],
				$availability,
				$buttons
			);
		} // /foreach

		echo json_encode($result);
	}	

    /*
    * If the validation is not valid, then it redirects to the create page.
    * If the validation for each input field is valid then it inserts the data into the database 
    * and it stores the operation message into the session flashdata and display on the manage Customer page
    */
	public function create()
	{
		if(!in_array('createCustomer', $this->permission)) {
            redirect('dashboard', 'refresh');
        }

		$this->form_validation->set_rules('customer_name', 'Customer name', 'trim|required');
		$this->form_validation->set_rules('sku', 'SKU', 'trim|required');
		$this->form_validation->set_rules('price', 'Price', 'trim|required');
		$this->form_validation->set_rules('qty', 'Qty', 'trim|required');
		
	
        if ($this->form_validation->run() == TRUE) {
            // true case
        	$upload_image = $this->upload_image();

        	$data = array(
        		'name' => $this->input->post('Customer_name'),
        		'sku' => $this->input->post('sku'),
        		'price' => $this->input->post('price'),
        		'qty' => $this->input->post('qty'),
        		'image' => $upload_image,
        		'description' => $this->input->post('description'),
        		'attribute_value_id' => json_encode($this->input->post('attributes_value_id')),
        		'brand_id' => json_encode($this->input->post('brands')),
        		'category_id' => json_encode($this->input->post('category')),
                'store_id' => $this->input->post('store'),
        		'availability' => $this->input->post('availability'),
        	);

        	$create = $this->model_customers->create($data);
        	if($create == true) {
        		$this->session->set_flashdata('success', 'Successfully created');
        		redirect('customers/', 'refresh');
        	}
        	else {
        		$this->session->set_flashdata('errors', 'Error occurred!!');
        		redirect('customers/create', 'refresh');
        	}
        }
        else {
            // false case

        	// attributes 
        	$attribute_data = $this->model_attributes->getActiveAttributeData();

        	$attributes_final_data = array();
        	foreach ($attribute_data as $k => $v) {
        		$attributes_final_data[$k]['attribute_data'] = $v;

        		$value = $this->model_attributes->getAttributeValueData($v['id']);

        		$attributes_final_data[$k]['attribute_value'] = $value;
        	}

        	$this->data['attributes'] = $attributes_final_data;
			$this->data['brands'] = $this->model_brands->getActiveBrands();        	
			$this->data['category'] = $this->model_category->getActiveCategroy();        	
			$this->data['stores'] = $this->model_stores->getActiveStore();        	

            $this->render_template('customers/create', $this->data);
        }	
	}

    /*
    * This function is invoked from another function to upload the image into the assets folder
    * and returns the image path
    */
	public function upload_image()
    {
    	// assets/images/customer_image
        $config['upload_path'] = 'assets/images/customer_image';
        $config['file_name'] =  uniqid();
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '1000';

        // $config['max_width']  = '1024';s
        // $config['max_height']  = '768';

        $this->load->library('upload', $config);
        if ( ! $this->upload->do_upload('customer_image'))
        {
            $error = $this->upload->display_errors();
            return $error;
        }
        else
        {
            $data = array('upload_data' => $this->upload->data());
            $type = explode('.', $_FILES['customer_image']['name']);
            $type = $type[count($type) - 1];
            
            $path = $config['upload_path'].'/'.$config['file_name'].'.'.$type;
            return ($data == true) ? $path : false;            
        }
    }

    /*
    * If the validation is not valid, then it redirects to the edit customer page 
    * If the validation is successfully then it updates the data into the database 
    * and it stores the operation message into the session flashdata and display on the manage customer page
    */
	public function update($customer_id)
	{      
        if(!in_array('updateCustomer', $this->permission)) {
            redirect('dashboard', 'refresh');
        }

        if(!$customer_id) {
            redirect('dashboard', 'refresh');
        }

        $this->form_validation->set_rules('customer_name', 'Customer name', 'trim|required');
        $this->form_validation->set_rules('sku', 'SKU', 'trim|required');
        $this->form_validation->set_rules('price', 'Price', 'trim|required');
        $this->form_validation->set_rules('qty', 'Qty', 'trim|required');
        $this->form_validation->set_rules('store', 'Store', 'trim|required');
        $this->form_validation->set_rules('availability', 'Availability', 'trim|required');

        if ($this->form_validation->run() == TRUE) {
            // true case
            
            $data = array(
                'name' => $this->input->post('customer_name'),
                'sku' => $this->input->post('sku'),
                'price' => $this->input->post('price'),
                'qty' => $this->input->post('qty'),
                'description' => $this->input->post('description'),
                'attribute_value_id' => json_encode($this->input->post('attributes_value_id')),
                'brand_id' => json_encode($this->input->post('brands')),
                'category_id' => json_encode($this->input->post('category')),
                'store_id' => $this->input->post('store'),
                'availability' => $this->input->post('availability'),
            );

            
            if($_FILES['customer_image']['size'] > 0) {
                $upload_image = $this->upload_image();
                $upload_image = array('image' => $upload_image);
                
                $this->model_customers->update($upload_image, $customer_id);
            }

            $update = $this->model_customers->update($data, $customer_id);
            if($update == true) {
                $this->session->set_flashdata('success', 'Successfully updated');
                redirect('customers/', 'refresh');
            }
            else {
                $this->session->set_flashdata('errors', 'Error occurred!!');
                redirect('customers/update/'.$customer_id, 'refresh');
            }
        }
        else {
            // attributes 
            $attribute_data = $this->model_attributes->getActiveAttributeData();

            $attributes_final_data = array();
            foreach ($attribute_data as $k => $v) {
                $attributes_final_data[$k]['attribute_data'] = $v;

                $value = $this->model_attributes->getAttributeValueData($v['id']);

                $attributes_final_data[$k]['attribute_value'] = $value;
            }
            
            // false case
            $this->data['attributes'] = $attributes_final_data;
            $this->data['brands'] = $this->model_brands->getActiveBrands();         
            $this->data['category'] = $this->model_category->getActiveCategroy();           
            $this->data['stores'] = $this->model_stores->getActiveStore();          

            $customer_data = $this->model_customers->getCustomerData($customer_id);
            $this->data['customer_data'] = $customer_data;
            $this->render_template('customers/edit', $this->data); 
        }   
	}

    /*
    * It removes the data from the database
    * and it returns the response into the json format
    */
	public function remove()
	{
        if(!in_array('deletecustomer', $this->permission)) {
            redirect('dashboard', 'refresh');
        }
        
        $customer_id = $this->input->post('customer_id');

        $response = array();
        if($customer_id) {
            $delete = $this->model_customers->remove($customer_id);
            if($delete == true) {
                $response['success'] = true;
                $response['messages'] = "Successfully removed"; 
            }
            else {
                $response['success'] = false;
                $response['messages'] = "Error in the database while removing the customer information";
            }
        }
        else {
            $response['success'] = false;
            $response['messages'] = "Refresh the page again!!";
        }

        echo json_encode($response);
	}

}