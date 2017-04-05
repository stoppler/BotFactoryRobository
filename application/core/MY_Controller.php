<?php
/**
 * core/MY_Controller.php
 *
 * Default application controller
 *
 * @author		JLP
 * @copyright           2010-2016, James L. Parry
 * ------------------------------------------------------------------------
 */
class Application extends CI_Controller
{
	/**
	 * Constructor.
	 * Establish view parameters & load common helpers
	 */
	function __construct()
	{
		parent::__construct();
		//  Set basic view parameters
		$this->data = array ();
		$this->data['pagetitle'] = 'Huckleberry Factory';
		$this->data['ci_version'] = (ENVIRONMENT === 'development') ? 'CodeIgniter Version <strong>'.CI_VERSION.'</strong>' : '';
		$this->data['ptitle'] = "<span class=\"plantname\">Huckleberry Plant</span>";
		//current role
		$role = $this->session->userdata('userrole');
		$this->data['currentrole'] = $role;
		if ($role == 'owner') {
			$this->data['managetab'] = "<li><a href=\"\management\">Manage</a></li>";
		} else {
			$this->data['managetab'] = "";
		}
	}
	/**
	 * Render this page
	 */
	function render($template = 'template')
	{
		$this->data['content'] = $this->parser->parse($this->data['pagebody'], $this->data, true);
		$this->parser->parse('template', $this->data);
	}
}