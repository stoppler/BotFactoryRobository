<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Part extends Application {

    function __construct() {
        parent::__construct();
        //$this->load->model('Part');
    }

    //load parts page
    public function index() {
        $this->data['pagebody'] = 'part';
        $source = $this->parts->all();
        $parts = array();
        $val = 0;
        //load data from database into array with key value pairs
        foreach ($source as $record) {
            $parts[$val] = ['id' => $record->id, 'caCode' => $record->caCode, 'model' => $record->model, 'piece' => $record->piece, 'plant' => $record->plant, 'dateTime' => $record->dateTime, 'used' => $record->used];
            $val++;
        }
        $this->data['parts'] = $parts;
        $this->render();
    }

    //load deatil page of a single part
    public function part_detail($id) {
        $this->data['pagebody'] = 'part_detail';
        $source = $this->parts->all();
        foreach ($source as $record) {
            if ($record->id == $id) {
                $this->data['id']       = $record->id;
                $this->data['caCode']   = $record->caCode;
                $this->data['model']    = $record->model;
                $this->data['piece']    = $record->piece;
                $this->data['plant']    = $record->plant;
                $this->data['dateTime'] = $record->dateTime;
                $this->data['used']     = $record->used;
                break;
            }
        }
        $this->render();
    }

    // retrieve a single part
    /* public function get($which) {
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
      } */
}
