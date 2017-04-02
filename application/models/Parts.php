<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Parts extends CI_Model {

    var $data = [
        ['id' => '1', 'partCode' => 'a1', 'line' => 'household bot', 'caCode' => '101', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'a1.jpeg'],
        ['id' => '2', 'partCode' => 'a2', 'line' => 'household bot', 'caCode' => '102', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'a2.jpeg'],
        ['id' => '7', 'partCode' => 'c1', 'line' => 'household bot', 'caCode' => '301', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'c1.jpeg'],
        ['id' => '8', 'partCode' => 'c2', 'line' => 'household bot', 'caCode' => '302', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'c2.jpeg'],
        ['id' => '11', 'partCode' => 'm2', 'line' => 'butler bot', 'caCode' => '402', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'm2.jpeg'],
        ['id' => '13', 'partCode' => 'r1', 'line' => 'butler bot', 'caCode' => '501', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'r1.jpeg'],
        ['id' => '15', 'partCode' => 'r3', 'line' => 'butler bot', 'caCode' => '503', 'plant' => 'Plant #3', 'timeBuilt' => '2010-01-01',
            'img' => 'r3.jpeg'],
        ['id' => '16', 'partCode' => 'w1', 'line' => 'companion bot', 'caCode' => '601', 'plant' => 'Plant #1', 'timeBuilt' => '2010-01-01',
            'img' => 'w1.jpeg'],
        ['id' => '17', 'partCode' => 'w2', 'line' => 'companion bot', 'caCode' => '602', 'plant' => 'Plant #2', 'timeBuilt' => '2010-01-01',
            'img' => 'w2.jpeg']
    ];

    public function __construct() {
        parent::__construct();
    }

    // retrieve a single part
    public function get($which) {
        // iterate over the data until we find the one we want
        foreach ($this->data as $record) {
            if ($record['id'] == $which) {
                return $record;
            }
        }
        return null;
    }

    // return all parts
    public function all() {
        return $this->data;
    }

}
