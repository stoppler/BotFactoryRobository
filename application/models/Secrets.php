<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Secrets
 *
 * @author ry
 */
class Secrets extends MY_Model{
    
   
    public function __construct() {
        parent::__construct('secrets', 'id');
    }
    
}
