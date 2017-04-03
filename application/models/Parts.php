<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Parts extends MY_Model {

    public function __construct() {
        parent::__construct('parts', 'id');
    }

//        // retrieve a single part given the id 
//    public function get($which)
//    {
//        // iterate over the data until we find the one we want
//        foreach ($this->all() as $record)
//            if ($record->id == $which)
//                return $record;
//        return null;
//    }
//    //add a part into the database
//    public function add($part) {
//        $this->db->insert('parts', $part);
//    }
//    //removes a part from the database
//    public function remove($partId) {
//        $this->db->where('id', $partId);
//        $this->db->delete('parts');
//    }
//    // retrieve all of the parts
//    public function all()
//    {
//        $query = $this->db->get('parts');
//        return $query->result();
//    }
//    
//    // retrieves total number of parts in inventory
//    public function totalParts() {
//        return sizeof($this->all());
//    }
//    //deletes all rows from table
//    public function deleteAll() {
//        $this->db->empty_table('parts');
//    }
//    
}


    
