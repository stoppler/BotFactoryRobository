<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Part extends CI_Model {
    
    var $data = [
        ['id' => '1', 'partCode' => 'a1','line' => 'household bot', 'caCode' => '101', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'a1.jpeg'],
        ['id' => '2', 'partCode' => 'a2','line' => 'household bot', 'caCode' => '102', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'a2.jpeg'],
        ['id' => '3', 'partCode' => 'a3','line' => 'household bot', 'caCode' => '103', 'plant' => 'Plant #3', 'timeBuilt' => '2010-01-01',
            'img' => 'a3.jpeg'],
        ['id' => '4', 'partCode' => 'b1','line' => 'household bot', 'caCode' => '201', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'b1.jpeg'],
        ['id' => '5', 'partCode' => 'b2','line' => 'household bot', 'caCode' => '202', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'b2.jpeg'],
        ['id' => '6', 'partCode' => 'b3','line' => 'household bot', 'caCode' => '203', 'plant' => 'Plant #3', 'timeBuilt' => '2010-01-01',
            'img' => 'b3.jpeg'],
        ['id' => '7', 'partCode' => 'c1','line' => 'household bot', 'caCode' => '301', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'c1.jpeg'],
        ['id' => '8', 'partCode' => 'c2','line' => 'household bot', 'caCode' => '302', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'c2.jpeg'],
        ['id' => '9', 'partCode' => 'c3','line' => 'household bot', 'caCode' => '303', 'plant' => 'Plant #3', 'timeBuilt' => '2010-01-01',
            'img' => 'c3.jpeg'],
        ['id' => '10', 'partCode' => 'm1', 'line' => 'butler bot', 'caCode' => '401', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'm1.jpeg'],
        ['id' => '11', 'partCode' => 'm2', 'line' => 'butler bot', 'caCode' => '402', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'm2.jpeg'],
        ['id' => '12', 'partCode' => 'm3', 'line' => 'butler bot', 'caCode' => '403', 'plant' => 'Plant #3', 'timeBuilt' => '2010-01-01',
            'img' => 'm3.jpeg'],
        ['id' => '13', 'partCode' => 'r1', 'line' => 'butler bot', 'caCode' => '501', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'r1.jpeg'],
        ['id' => '14', 'partCode' => 'r2', 'line' => 'butler bot', 'caCode' => '502', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'r2.jpeg'],
        ['id' => '15', 'partCode' => 'r3', 'line' => 'butler bot', 'caCode' => '503', 'plant' => 'Plant #3', 'timeBuilt' => '2010-01-01',
            'img' => 'r3.jpeg'],
        ['id' => '16', 'partCode' => 'w1', 'line' => 'companion bot', 'caCode' => '601', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'w1.jpeg'],
        ['id' => '17', 'partCode' => 'w2', 'line' => 'companion bot', 'caCode' => '602', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'w2.jpeg'],
        ['id' => '18', 'partCode' => 'w3', 'line' => 'companion bot', 'caCode' => '603', 'plant' => 'Plant #3', 'timeBuilt' => '2010-01-01',
            'img' => 'w3.jpeg']
    ];
    public function __construct()
    {
	parent::__construct();
    }
    // retrieve a single part
	public function get($which)
	{
		// iterate over the data until we find the one we want
		foreach ($this->data as $record) {
                    if ($record['id'] == $which) {
                return $record;
            }
        }
        return null;
	}
    // return all parts
    public function all()
    {
	return $this->data;
    }
}