<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Manage extends Application {

    //constructor
    function __construct() {
        parent::__construct();
    }

    //index
    public function index() {
        if (isset($_POST['action'])) {
            switch ($_POST['submit']) {
                case "REGISTER":
                    $this->register_api();
                    break;
                case "REBOOT":
                    $this->reboot_plant();
                    break;
                case "SELL":
                    $this->sell_bots();
                    break;
                default:
                    echo "<script>alert('#1Uh oh, something went wrong!');</script>";
                    break;
            }
        }
        $robots = [];
        $robots = $this->get_bots();
        $this->data['robots'] = $robots;
        $this->data['pagebody'] = 'manage';
        $this->render();
    }

    //returns current api key from database
    public function get_api() {
        $source = $this->secrets->get(1);
        return $source->api;
    }

    //returns password from db
    public function get_password() {
        $source = $this->secrets->get(2);
        return $source->api;
    }

    //request a new API key from umbrella server
    public function register_api() {
        $token = $this->get_password();
        $result = file_get_contents('https://umbrella.jlparry.com/work/registerme/huckleberry/' . $token);
        if (substr($result, 0, 2) == "Ok") {
            //success
            echo "<script>alert('#2Registration Successful!');</script>";
            $api = substr($result, 3);
            //store api key into database
            $new_key = $this->secrets->get(1);
            $new_key->api = $api;
            $this->empty_tables();
            $this->secrets->update($new_key);
        } else {
            //failure
            echo "<script>alert('#3Uh oh, something went wrong!');</script>";
        }
    }

    //request the plant be rebooted
    public function reboot_plant() {
        $token = $this->get_password();
        $result = file_get_contents('https://umbrella.jlparry.com/work/rebootme?key=' . $token);
        if (substr($result, 0, 2) == "Ok") {
            //success
            echo "<script>alert('#4Reboot Successful!');</script>";
            $this->empty_tables();
        } else {
            //failure
            echo "<script>alert('#5Uh oh, something went wrong!');</script>";
        }
    }

    //empty robots and parts tables when the user registers a new API or reboots the plant
    function empty_tables() {
        $parts = $this->parts->all();
        $bots = $this->robots->all();
        //empty parts tables
        foreach ($parts as $part) {
            $this->parts->delete($part->id);
        }
        //empty robots table
        foreach ($bots as $bot) {
            $this->robots->delete($bot->id);
        }
    }

    //return all robots currently in db
    function get_bots() {
        $it = 0;
        $robots = [];
        $data = $this->robots->all();
        foreach ($data as $record) {
            $robots[$it] = ['id' => $record->id, 'head' => $record->topCode, 'torso' => $record->torsoCode,
                'bottom' => $record->bottomCode, 'botCode' => $record->robotCode, 'topline' => substr($record->line, 0, 1),
                'bottomline' => substr($record->line, 2, 1), 'middleline' => substr($record->line, 1, 1)];
            $it++;
        }
        return $robots;
    }

    function sell_bots() {
        //check if empty for any part or too many slected for any part
        if (empty($_POST['robotSelected'])) {
            echo "<script>alert('#6Please select a robot to sell');</script>";
        } else if (count($_POST['robotSelected']) > 1) {
            echo "<script>alert('#7You may only sell one robot at a time!');</script>";
        } else {
            $bot = $_POST['robotSelected'][0];
            $botPart = explode(" ", $bot);
            $key = $this->get_api();
            //get rid of parts
            //details 0 = head 1 = torso 2 = bottom
            $result = file_get_contents('https://umbrella.jlparry.com/work/buymybot/' .
                    $botPart[0] . '/' .
                    $botPart[1] . '/' .
                    $botPart[2] . '?key=' .
                    $key);
            $response = explode(" ", $result);
            if ($response[0] == "Ok") {
                //success
                $this->delete_sold_parts($botPart[0], $botPart[1], $botPart[2]);
                $this->robots->delete($botPart[3]);
                //update history
                $newHistory = $this->histories->create();
                $newHistory->transactionType = "Sell Bot";
                $newHistory->value = $response[1];
                $newHistory->dateTime = $date = date('Y-m-d');
                $newHistory->productType = 'bot';
                $newHistory->productIdentifier = uniqid();
                $this->histories->add($newHistory);
                echo "<script>alert('#8Reboot Successful!');</script>";
            } else {
                //failure
                echo "<script>alert('#9Failed to sell bot to umbrella!'" . $botPart[0] . ");</script>";
            }
        }
    }

    //delete parts sold as a bot
    function delete_sold_parts($part_one, $part_two, $part_three) {
        $count = 0;
        foreach ($this->parts->all() as $part) {
            if ($part->caCode == $part_one || $part->caCode == $part_two || $part->caCode == $part_three) {
                $count++;
                $this->parts->delete($part->id);
                if ($count == 3) {
                    break;
                }
            }
        }
    }

}
