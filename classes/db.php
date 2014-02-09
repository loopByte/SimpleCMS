<?php

/**
 * @author MacTavish
 * @copyright 2014
 */

	$mysqli = new mysqli("127.0.0.1", "root", "", "cms");
	
	if($mysqli->connect_errno){
		exit($mysqli->connect_error);
	}