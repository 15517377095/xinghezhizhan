package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Bullet3 extends MovieClip {
		
		
		public function Bullet3() {
			//子弹向前移动
			addEventListener(Event.ENTER_FRAME,moveUp);
		}
		
		function moveUp(e:Event):void{
			this.y-=20;
		}
		
	}
	
}
