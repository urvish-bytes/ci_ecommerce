<?php
class Test extends CI_Controller {

	function __constructor() {
		parent::__constructor();
	}

	// Function will redirect to book service page
	function index() {
		$index->parse_file;
	}

	// Function to load service book page
	function parse_file() {
		// Include Composer autoloader if not already done.
		include_once APPPATH . 'vendor/autoload.php';

		// Parse pdf file and build necessary objects.
		$parser = new \Smalot\PdfParser\Parser();
		$pdf = $parser->parseFile(APPPATH.'vendor\smalot\pdfparser\samples\Document1_foxitreader.pdf');

		$text = $pdf->getText();
		echo $text;
	}

}