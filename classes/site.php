<?php

/**
 * @author loopByte
 * @copyright 2014
 */

    class Site{
        
        public static function title(){
            global $mysqli;
            
            $query = "SELECT value FROM config WHERE name=title";
            $result = $mysqli->query($query);
            $title = $result->fetch_object();
            echo $title;
            
            return true;
        }
        
        public static function description(){
            global $mysqli;
            
            $query = "SELECT value FROM config WHERE name=description";
            $result = $mysqli->query($query);
            $description = $result->fetch_object();
            echo $description;
            
            return true;
        }
        
    }

?>