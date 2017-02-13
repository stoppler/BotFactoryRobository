<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Assembly extends Application
{
	public function index()
    {
        //$this->data['pagebody'] = 'parts-page';
        $this->load->model('Assemble');
        $this->data['pagebody'] = 'assembly-index';

        $source = $this->Assemble->all();
		$parts = array ();

		foreach ($source as $record) {
			$parts[] = ['partCode' => $record['partCode'], 'img' => $record['img'], 'line' => $record['line']];
	    }

		$this->data['parts'] = $parts;
		$this->render();
    }
}
