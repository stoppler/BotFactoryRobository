<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class AboutUs extends Application
{
	public function index()
	{
		$this->data['pagebody'] = 'aboutus-index';
		$this->render();
	}

}
