package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class money extends MovieClip {
		
		//指定金币去的地方
		
		var theX:int=20;
		var theY:int=680;
		
		
		public function money() {
			
			addEventListener(Event.ENTER_FRAME,moveTo);
			
		}

		
		function moveTo(e:Event):void{
			var xLine=this.x-theX;
			var yLine=this.y-theY;
			
			var xpy:Number;
			
			if(xLine>0)xpy=10;
			if(xLine<0)xpy=-10;
			if(xLine==0)xpy=0;
			
			var ypy:Number;
			
			if(yLine!=0)ypy=yLine/xLine*xpy;
			if(yLine==0)ypy=0;
			
			if(this.y>theX && this.y<theY){
				this.x-=xpy;
				this.y-=ypy;
			}else{
				this.visible=false;
			}
		}
		
	}
	
}
