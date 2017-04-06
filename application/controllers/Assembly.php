<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Assembly extends Application {
    function __construct() {
        parent::__construct();
    }
    public function index() {
        $this->data['pagebody'] = 'assembly';
        $source = $this->parts->all();
        $data = $this->robots->all();
        $robots = [];
		$topparts = [];
		$bottomparts = [];
		$middleparts = [];
        $val = 0;
        $it = 0;
		//check if form is submitted
		if(isset($_POST['action']))
		{
			if($_POST['submit'] == "Build")
			{
				$message = $this->buildBot();
			}
			else
			{
				$message = $this->returnPart();
			}
		} else {
			$message = [];
		}
		//load parts data from database into array with key value pairs
        foreach ($source as $record) {
			if($record->piece == 1) {
				$topparts[] = ['id' => $record->id, 'caCode' => $record->caCode, 'model' => $record->model, 'piece' => $record->piece, 'plant' => $record->plant, 'dateTime' => $record->dateTime, 'used' => $record->used];
			} else if ($record->piece == 2) {
				$middleparts[] = ['id' => $record->id, 'caCode' => $record->caCode, 'model' => $record->model, 'piece' => $record->piece, 'plant' => $record->plant, 'dateTime' => $record->dateTime, 'used' => $record->used];
			} else {
				$bottomparts[] = ['id' => $record->id, 'caCode' => $record->caCode, 'model' => $record->model, 'piece' => $record->piece, 'plant' => $record->plant, 'dateTime' => $record->dateTime, 'used' => $record->used];
			}
		}
        //load robot data from database into array with key value pairs
        foreach ($data as $record) {
            $robots[$it] = ['id' => $record->id, 'head' => $record->topCode, 'torso' => $record->torsoCode,
			'bottom' => $record->bottomCode, 'botCode' => $record->robotCode, 'topline' => substr($record->line,0,1),
			'bottomline' => substr($record->line,2,1), 'middleline' => substr($record->line,1,1)];
            $it++;
        }
        $this->data['robots'] = $robots;
		$this->data['topparts'] = $topparts;
		$this->data['bottomparts'] = $bottomparts;
		$this->data['middleparts'] = $middleparts;
		$this->data['messages'] = $message;
		$role = $this->session->userdata('userrole');
		if($role == 'owner') {
			$this->data['return'] ='<input class="btn btn-info" type="submit" name="submit" value="Return"/>';
		} else {
			$this->data['return'] ='';
		}
        $this->render();
    }
	function buildBot()
	{
		//check if empty for any part or too many slected for any part
		if(empty($_POST['topSelected']) || empty($_POST['middleSelected']) || empty($_POST['bottomSelected'])) {
			$message[] = array('message' => "You didn't pick correct parts to build a bot!");
			return $message;
		} else if(count($_POST['topSelected']) > 1) {
			$message[] = array('message' => "You may only select one top part");
			return $message;
		} else if(count($_POST['middleSelected']) > 1) {
			$message[] = array('message' => "You may only select one middle part");
			return $message;
		} else if(count($_POST['bottomSelected']) > 1) {
			$message[] = array('message' => "Too many bottom parts (Please only select one!)");
			return $message;
		}
		$message[] = ['message' => "Built Bot with parts:"];
		//Get the parts selected and details to message
		$topPart = $_POST['topSelected'][0];
		$top = explode(" ", $topPart);
		$message[] = array('message' => "Top Part= name: ".$top[0]."1, caCode: ".$top[1]);
		$middlePart = $_POST['middleSelected'][0];
		$middle = explode(" ", $middlePart);
		$message[] = array('message' => "Middle Part= name: ".$middle[0]."2, caCode: ".$middle[1]);
		$bottomPart = $_POST['bottomSelected'][0];
		$bottom = explode(" ", $bottomPart);
		$message[] = array('message' => "Bottom Part= name: ".$bottom[0]."3, caCode: ".$bottom[1]);
		//Build a bot with selected parts
		$newBot = $this->robots->create();
		$newBot->robotCode = uniqid();
		$newBot->topCode = $top[1];
		$newBot->torsoCode = $middle[1];
		$newBot->bottomCode = $bottom[1];
		$newBot->line = $top[0].$middle[0].$bottom[0];
		$this->robots->add($newBot);
		//remove parts after building
		$this->parts->delete($top[2]);
		$this->parts->delete($middle[2]);
		$this->parts->delete($bottom[2]);
		//Record the building of a bot in history
		$newHistory = $this->histories->create();
		$newHistory->transactionType = "Built Robot ". $newBot->robotCode;
		$newHistory->value = 0;
		$newHistory->dateTime = $date = date('Y-m-d');
		$newHistory->productIdentifier = uniqid();
		$newHistory->productType = "bot";
		$this->histories->add($newHistory);
		return $message;
	}
	function returnPart()
	{
		//Check if any parts were selected
		if(empty($_POST['topSelected']) && empty($_POST['middleSelected']) && empty($_POST['bottomSelected']))
		{
			$message[] = ['output' => "No parts selected for return."];
			return $message;
		}
		$message[] = ['message' => "Returned parts:"];
		//Get the parts selected and display result
		$partToReturn = [];
		if(!empty($_POST['topSelected']))
		{
			foreach($_POST['topSelected'] as $topPart)
			{
				$part = explode(" ", $topPart);
				$message[] = ['message' => "Top Part= name: ".$part[0]."1, caCode: ".$part[1]];
				$partToReturn[] = ['caCode' => $part[1], 'id' => $part[2]];
			}
		}
		if(!empty($_POST['middleSelected']))
		{
			foreach($_POST['middleSelected'] as $middlePart)
			{
				$part = explode(" ", $middlePart);
				$message[] = ['message' => "Middle Part= name: ".$part[0]."1, caCode: ".$part[1]];
				$partToReturn[] = ['caCode' => $part[1], 'id' => $part[2]];
			}
		}
		if(!empty($_POST['bottomSelected']))
		{
			foreach($_POST['bottomSelected'] as $bottomPart)
			{
				$part = explode(" ", $bottomPart);
				$message[] = ['message' => "Bottom Part= name: ".$part[0]."1, caCode: ".$part[1]];
				$partToReturn[] = ['caCode' => $part[1], 'id' => $part[2]];
			}
		}
		//Return parts selected
		foreach($partToReturn as $part)
		{
			//$reply = file_get_contents('https://umbrella.jlparry.com/work/recycle/'.$part['caCode'].'?key=0');
			//$amount = explode(" ", $reply);
			//Remove part form parts table
			$this->parts->delete($part['id']);
			//Record the return of parts in history
			$newHistory = $this->histories->create();
			$newHistory->transactionType = "Part returned: ". $part['caCode'];
			$newHistory->value = 0;
			$newHistory->dateTime = $date = date('Y-m-d');
			$newHistory->productIdentifier = uniqid();
			$newHistory->productType = "bot";
			$this->histories->add($newHistory);
		}
		return $message;
	}
}