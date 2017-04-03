<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Application {

    public function index() {

        $this->data['pagebody'] = 'home';
        $this->load->model('histories');
        $this->load->model('parts');

        $sourceone = $this->parts->all();
        $sourcetwo = $this->histories->all();

        $countparts = 0;
        $countbots = 0;
        $countexpence = 0;
        $countrevenue = 0;

        foreach ($sourceone as $parts) {
            $countparts++;
        }

        foreach ($sourcetwo as $record) {
            $countexpence += $record['cost'];
            $countrevenue += $record['revenue'];
            $countbots++;
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

        $this->data['ptitle'] = "<span class=\"plantname\">Huckleberry Plant</span> Home <span class=\"glyphicon glyphicon-home\"></span>";
        $this->render();
    }

}
