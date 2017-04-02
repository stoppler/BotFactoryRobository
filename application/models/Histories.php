<?php

class Histories extends CI_Model {

    var $data = array(
        array('purchaseId' => '1', 'transactionId' => '1AB23890123D', 'assemblies' => 'A1393277', 'shipments' => '93807F3',
            'date' => '2017-01-01', 'time' => '08:30:33', 'cost' => '50', 'revenue' => 100),
        array('purchaseId' => '2', 'transactionId' => '0AB27390123F', 'assemblies' => 'C8390273', 'shipments' => '33857G7',
            'date' => '2017-02-09', 'time' => '06:07:40', 'cost' => '50', 'revenue' => 100),
        array('purchaseId' => '3', 'transactionId' => '1AB23830123G', 'assemblies' => 'F2398261', 'shipments' => '13807A5',
            'date' => '2017-01-31', 'time' => '03:33:27', 'cost' => '50', 'revenue' => 100),
        array('purchaseId' => '4', 'transactionId' => '7AB23850123S', 'assemblies' => 'S8390209', 'shipments' => '03817C9',
            'date' => '2017-02-11', 'time' => '08:40:52', 'cost' => '50', 'revenue' => 100),
        array('purchaseId' => '5', 'transactionId' => '1AB13360153T', 'assemblies' => 'L5342273', 'shipments' => '43827F0',
            'date' => '2017-01-17', 'time' => '11:30:03', 'cost' => '50', 'revenue' => 100),
        array('purchaseId' => '6', 'transactionId' => '2AB23887193D', 'assemblies' => 'M1394236', 'shipments' => '63847L2',
            'date' => '2017-01-08', 'time' => '12:24:20', 'cost' => '50', 'revenue' => 100)
    );

    // Constructor
    public function __construct() {
        parent::__construct();
    }

    // retrieves a single transaction history
    public function get($which) {
        foreach ($this->data as $record) {
            if ($record['id'] == $which) {
                return $record;
            }
        }
        return null;
    }

    // retrieves all of the history entries
    public function all() {
        return $this->data;
    }

}
