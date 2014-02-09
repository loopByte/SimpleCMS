<?php

/**
 * @author loopByte
 * @copyright 2014
 */

	class Article{
		
		public static function add(){
			if(isset($_POST['add_article'])){
				global $mysqli;
				$title 		= $_POST['title'];
				$content 	= $_POST['content'];
				$post_date 	= date("Y-m-d H:i:s");
				$query = "INSERT INTO article(title, content, post_date)
						VALUES('".$title."', '".$content."', '".$post_date."')";
				if($mysqli->query($query)){ return true; }else{ return false; }
			}
		}
		
		public static function remove(){
			if(isset($_POST['article_remove'])){
				global $mysqli;
				$id = $_POST['id'];
				$query = "DELETE FROM article WHERE id='".$id."'";
				if($mysqli->query($query)){ return true; }else{ return false; }
			}
		}
		
		public static function edit(){
			if(isset($_POST['article_edit'])){
				global $mysqli;
				$id 		= $_POST['id'];
				$title 		= $_POST['title'];
				$content 	= $_POST['content'];
				$post_date 	= date("Y-m-d H:i:s");
				$query = "UPDATE article SET title='".$title."', content='".$content."', post_date='".$post_date."' 
					WHERE id='".$id."'";
				if($mysqli->query($query)){ return true; }else{ return false; }
			}
		}
		
		public static function article_list(){
			global $mysqli;
			
			$query = "SELECT * FROM article";
			$result = $mysqli->query($query);
			while($row = $result->fetch_object()){
				echo '<div class="article">';
					echo '<a class="article-title" href="?article='.$row->id.'"><h1 class="article-title">' . $row->title . '</h1></a>';
					if(strlen($row->content) > 500){
						$content = substr($row->content, 0, 500);
						$content .= '<a class="continue-reading" href="?article='.$row->id.'">Continue reading</a>';
					}else{
						$content = $row->content;
					}
					echo '<p class="article-listed-content">' . $content . '</p>';
				echo '</div>';
			}
		}
		
		public static function article_view(){
			if(2){
				global $mysqli;
				
				$id = 2;
				
				$query = "SELECT * FROM article WHERE id='".$id."'";
				$result = $mysqli->query($query);
				
				$row = $result->fetch_object();
				
				echo '<h1 class="article-view-title">' . $row->title . '</h1>';
				echo '<article class="article-content">' . $row->content . '</article>';
				echo '<time class="article-posted-date" datetime="'.$row->post_date.'">Posted on ' . $row->post_date . '</time>';
			}
		}
		
	}