<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Application {

    function __construct() {
        parent::__construct();
        //$this->load->model('Part');
    }

    public function index() {

        $this->data['pagebody'] = 'home';

        $sourceone = $this->parts->all();
        $sourcetwo = $this->histories->all();

        $countparts = 0;
        $countbots = 0;
        $countexpence = 0;
        $countrevenue = 0;


        //retrieves number of parts on hand
        foreach ($sourceone as $parts) {
            $countparts++;
        }


        foreach ($sourcetwo as $record) {
            if ($record->value < 0) {
                $countexpence += -$record->value;
            } else {
                $countexpence += $record->value;
            }
            if ($record->productType == 'bot') {
                $countbots++;
            }
        }

        $dashboard = array(
            'totparts' => $countparts,
            'totbots' => $countbots,
            'earnings' => $countexpence,
            'expenses' => $countrevenue,
        );


        $this->data['totbots'] = $countbots;
        $this->data['totparts'] = $countparts;
        $this->data['earnings'] = $countrevenue;
        $this->data['expenses'] = $countexpence;
        $this->render();
    }

}
