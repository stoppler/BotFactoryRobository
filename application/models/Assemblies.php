<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Assemblies extends CI_Model {

    var $data = [
        ['partCode' => 'a1', 'img' => 'a1.jpeg', 'line' => 'household bot'],
        ['partCode' => 'a2', 'img' => 'a2.jpeg', 'line' => 'household bot'],
        ['partCode' => 'a3', 'img' => 'a3.jpeg', 'line' => 'household bot'],
        ['partCode' => 'b1', 'img' => 'b1.jpeg', 'line' => 'household bot'],
        ['partCode' => 'b2', 'img' => 'b2.jpeg', 'line' => 'household bot'],
        ['partCode' => 'b3', 'img' => 'b3.jpeg', 'line' => 'household bot'],
        ['partCode' => 'c1', 'img' => 'c1.jpeg', 'line' => 'household bot'],
        ['partCode' => 'c2', 'img' => 'c2.jpeg', 'line' => 'household bot'],
        ['partCode' => 'c3', 'img' => 'c3.jpeg', 'line' => 'household bot'],
        ['partCode' => 'm1', 'img' => 'm1.jpeg', 'line' => 'butler bot'],
        ['partCode' => 'm2', 'img' => 'm2.jpeg', 'line' => 'butler bot'],
        ['partCode' => 'm3', 'img' => 'm3.jpeg', 'line' => 'butler bot'],
        ['partCode' => 'r1', 'img' => 'r1.jpeg', 'line' => 'butler bot'],
        ['partCode' => 'r2', 'img' => 'r2.jpeg', 'line' => 'butler bot'],
        ['partCode' => 'r3', 'img' => 'r3.jpeg', 'line' => 'companion bot'],
        ['partCode' => 'w1', 'img' => 'w1.jpeg', 'line' => 'companion bot'],
        ['partCode' => 'w2', 'img' => 'w2.jpeg', 'line' => 'companion bot'],
        ['partCode' => 'w3', 'img' => 'w3.jpeg', 'line' => 'companion bot']
    ];

    public function __construct() {
        parent::__construct();
    }

    // return all parts
    public function all() {
        return $this->data;
    }

}
