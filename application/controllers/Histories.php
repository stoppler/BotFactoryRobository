<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Histories extends Application
{
    // Constructor
    public function __construct()
    {
	parent::__construct();
    }
    
    public function index()
    {
        $this->load->model('History');
	$this->data['pagebody'] = 'histories-page';
        $source = $this->History->all();
        $histories = array();
                
        foreach($source as $record)
        {
            $histories[] = ['purchaseId' => $record['purchaseId'],
                          'transactionId' => $record['transactionId'],
                          'assemblies' => $record['assemblies'], 
                          'shipments' =>$record['shipments'],
                          'date' => $record['date'], 
                          'time' => $record['time']];
        }
        
        $this->data['histories'] = $histories;
        $this->render();
    }
}
