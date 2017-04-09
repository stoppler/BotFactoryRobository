<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class History extends Application {

    // Constructor
    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $this->data['pagebody'] = 'history';
        $source = $this->histories->all();
        $history = array();

        foreach ($source as $record) {
            $history[] = ['purchaseId' => $record->id,
                'transactionType' => $record->transactionType,
                'value' => $record->value,
                'dateTime' => $record->dateTime];
        }
        $this->data['history'] = $history;
        $this->render();
    }

}
