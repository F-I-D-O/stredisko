<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Tools
 *
 * @author Fido
 */
class Tools {
	public static function onLocalhost(){
		//var_dump(in_array($_SERVER['REMOTE_ADDR'], array('127.0.0.1', '::1')));
		return in_array($_SERVER['REMOTE_ADDR'], array('127.0.0.1', '::1'));
	}
}
