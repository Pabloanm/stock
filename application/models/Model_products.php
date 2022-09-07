<?php 

class Model_products extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	/* get the brand data */
	public function getProductData($id = null)
	{
		if($id) {
			$sql = "SELECT products.id, products.name, products.sku, products.price, products.qty, products.image, products.description, products.attribute_value_id, products.brand_id, products.category_id, products.store_id, products.availability, brands.name as brandname FROM products INNER JOIN brands ON FIND_IN_SET(CONCAT('[\"',brands.id,'\"]'), products.brand_id ) WHERE products.id = ?";
			$query = $this->db->query($sql, array($id));
			return $query->row_array();
		}

		$sql = "SELECT products.id, products.name, products.sku, products.price, products.qty, products.image, products.description, products.attribute_value_id, products.brand_id, products.category_id, products.store_id, products.availability, brands.name as brandname FROM products INNER JOIN brands ON FIND_IN_SET(CONCAT('[\"',brands.id,'\"]'), products.brand_id ) ORDER BY products.id DESC";
		$query = $this->db->query($sql);
		return $query->result_array();
	}

	public function getActiveProductData()
	{
		$sql = "SELECT products.id, products.name, products.sku, products.price, products.qty, products.image, products.description, products.attribute_value_id, products.brand_id, products.category_id, products.store_id, products.availability, brands.name as brandname FROM products INNER JOIN brands ON FIND_IN_SET(CONCAT('[\"',brands.id,'\"]'), products.brand_id ) WHERE products.availability = ? ORDER BY id DESC";
		$query = $this->db->query($sql, array(1));
		return $query->result_array();
	}

	public function create($data)
	{
		if($data) {
			$insert = $this->db->insert('products', $data);
			return ($insert == true) ? true : false;
		}
	}

	public function update($data, $id)
	{
		if($data && $id) {
			$this->db->where('id', $id);
			$update = $this->db->update('products', $data);
			return ($update == true) ? true : false;
		}
	}

	public function remove($id)
	{
		if($id) {
			$this->db->where('id', $id);
			$delete = $this->db->delete('products');
			return ($delete == true) ? true : false;
		}
	}

	public function countTotalProducts()
	{
		$sql = "SELECT * FROM products";
		$query = $this->db->query($sql);
		return $query->num_rows();
	}

}