<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Robots extends Application
{
	public function index()
	{
		$this->data['pagebody'] = 'robots-index';
		$this->render();
	}

}
