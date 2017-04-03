<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Assembly extends Application {
    function __construct() {
        parent::__construct();
        //$this->load->model('Part');
    }

    public function index() {
        $this->data['pagebody'] = 'assembly';

        $source = $this->parts->all();
        $data = $this->robots->all();
        $robots = [];
        $parts = [];
        $val = 0;
        $it = 0;
        //load parts data from database into array with key value pairs
        foreach ($source as $record) {
            $parts[$val] = ['id' => $record->id, 'caCode' => $record->caCode, 'model' => $record->model, 'piece' => $record->piece, 'plant' => $record->plant, 'dateTime' => $record->dateTime, 'used' => $record->used];
            $val++;
        }
        //load robot data from database into array with key value pairs
        foreach($data as $record){
            $robots[$it] = ['id' => $record->id, 'head' => $record->topCode, 'torso' => $record->torsoCode, 'bottom' => $record->bottomCode, 'botCode' => $record->robotCode];
            $it++;
        }
        
        $this->data['robots'] = $robots;
        $this->data['parts'] = $parts;
        $this->render();

        
    }

}
