<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Part extends Application {

    function __construct() {
        parent::__construct();
        //$this->load->model('Part');
    }

    //load parts page
    public function index() {
        //$this->data['pagebody'] = 'parts-page';
        $this->load->model('Parts');
        $this->data['pagebody'] = 'part';
        $source = $this->Parts->all();
        $parts = array();

        foreach ($source as $record) {
            $parts[] = ['id' => $record['id'], 'partCode' => $record['partCode'], 'caCode' => $record['caCode'], 'plant' => $record['plant'], 'timeBuilt' => $record['timeBuilt'], 'img' => $record['img'], 'line' => $record['line']];
        }
        $this->data['parts'] = $parts;
        $this->data['ptitle'] = "<span class=\"plantname\">Huckleberry Plant</span> Dashboard <span class=\"glyphicon glyphicon-dashboard\"></span>";
        $this->render();
    }

    //load deatil page of a single part
    public function part_detail($id) {
        $this->load->model('Parts');
        $this->data['pagebody'] = 'part_detail';
        $source = $this->Parts->get($id);
        $this->data = array_merge($this->data, $source);
        $this->data['parts'] = $source;
        $this->data['ptitle'] = "<span class=\"plantname\">Huckleberry Plant</span> Dashboard <span class=\"glyphicon glyphicon-dashboard\"></span>";
        $this->render();
    }

}
