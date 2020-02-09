package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class CrossBuff extends MovieClip {
		
		var xRan:int=0;
		
		var stopMoveflag:Boolean=false;
		
		public function CrossBuff() {
			//每帧移动
			addEventListener(Event.ENTER_FRAME,moveTo);
		}
		
		function moveTo(e:Event):void{
			if(!stopMoveflag){
			this.y++;
			if(this.x<=500-this.width/2 && this.x>=this.width/2){
				this.x-=xRan;
			}else{
				xRan=-xRan;
				this.x-=xRan;
			}}
		}
		
		public function setPosition(){
			this.x=Math.random()*(500-this.width*2)+this.width;
			this.y=-50;
			xRan=Math.random()*(1+1)+1;
		}
		
		public function toUi():void{
			//被获得后播放动画
			addEventListener(Event.ENTER_FRAME,moveToUi);
			stopMoveflag=true;
		}
		
		function moveToUi(e:Event):void{
			this.alpha-=0.05;
			
			if(this.alpha>0.01){
				this.scaleX=this.scaleY+=0.05;
				this.y+=2;
			}else{
				this.visible=false;
			}
		}
		
	}
	
}
