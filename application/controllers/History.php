<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class History extends Application {

    // Constructor
    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $this->load->model('Histories');
        $this->data['pagebody'] = 'history';
        $source = $this->Histories->all();
        $history = array();

        foreach ($source as $record) {
            $history[] = ['purchaseId' => $record['purchaseId'],
                'transactionId' => $record['transactionId'],
                'assemblies' => $record['assemblies'],
                'shipments' => $record['shipments'],
                'date' => $record['date'],
                'time' => $record['time']];
        }
        $this->data['history'] = $history;
        $this->data['ptitle'] = "<span class=\"plantname\">Huckleberry Plant</span> History <span class=\"glyphicon glyphicon-dashboard\"></span>";
        $this->render();
    }

}
