package  {
	
	import flash.display.MovieClip;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.events.Event;
	import flash.display.DisplayObject;
	
	
	public class bullet3Show extends MovieClip {
		
		var timer:Timer=new Timer(150);
		var timer2:Timer=new Timer(150);
		
		
		public function bullet3Show() {
			
			timer.addEventListener(TimerEvent.TIMER,createBullet);
			timer.start();

			timer2.addEventListener(TimerEvent.TIMER,clearLaji);
			timer2.start();
		}
		
		function createBullet(e:TimerEvent):void{
			if(this.visible){
			var bbu:Bullet3=new Bullet3();
			var bbu2:Bullet3=new Bullet3();
			bbu.name="bu";
			bbu2.name="bu";
			bbu.x=air.x+35;
			bbu.y=air.y-40;
			bbu2.x=air.x-35;
			bbu2.y=air.y-40;
			addChild(bbu);
			addChild(bbu2);
			}
		}
		
		function clearLaji(e:Event):void{
			for (var j:int=0;j<=(this.numChildren-1);j++){
				var obj:DisplayObject=this.getChildAt(j);
				if(obj.name=="bu"){
					if(obj.y<-400){
						removeChild(obj);
					}
				}	
			}
		}
		
		public function die():void{
			timer.stop();
			timer2.stop();
		}
		
	}
	
}
