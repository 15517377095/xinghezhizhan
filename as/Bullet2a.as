﻿package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Bullet2a extends MovieClip {
		
		
		public function Bullet2a() {
			//子弹向前移动
			addEventListener(Event.ENTER_FRAME,moveUp);
		}
		
		function moveUp(e:Event):void{
			this.y-=7;
			this.x-=1;
		}
		
	}
	
}