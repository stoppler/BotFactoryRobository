<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Assembly extends Application {

    public function index() {
        //$this->data['pagebody'] = 'parts-page';
        $this->load->model('Assemblies');
        $this->data['pagebody'] = 'assembly';

        $source = $this->Assemblies->all();
        $parts = array();

        foreach ($source as $record) {
            $parts[] = ['partCode' => $record['partCode'], 'img' => $record['img'], 'line' => $record['line']];
        }

        $this->data['parts'] = $parts;

		$this->render();
    }

}
