<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Parts extends Application
{
    function __construct()
    {
	parent::__construct();
        //$this->load->model('Part');
    }
    
    public function index()
    {
        //$this->data['pagebody'] = 'parts-page';
        $this->load->model('Part');
        $this->data['pagebody'] = 'parts-page';
        $source = $this->Part->all();
	$parts = array ();
        
	foreach ($source as $record)
	{$parts[] = ['id' => $record['id'], 'partCode' => $record['partCode'], 'caCode' => $record['caCode'], 'plant' => $record['plant'], 'timeBuilt' => $record['timeBuilt'], 'img' => $record['img'], 'line' => $record['line']];
        }
	$this->data['parts'] = $parts;
	$this->render(); 
    }
    
    public function single($id){
        $this->load->model('Part');
        $this->data['pagebody'] = 'single';	
	$source = $this->Part->get($id);
	$this->data = array_merge($this->data, $source);
        $this->data['parts'] = $source;
        $this->render();
    }
}
