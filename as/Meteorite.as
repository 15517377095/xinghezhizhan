package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Meteorite extends MovieClip {
		
		var xRan:int=0;
		public var life:int;
		public var lifeB:int;
		
		var die:Boolean=false;
		
		public function Meteorite(lev:Number) {
			if(Math.random()<lev){	//出小陨石的概率
				life=Math.random()*(30-20)+20;
			}else{
				life=Math.random()*(90-60)+60;
			}
			lifeB=life;
			
			//每帧移动
			addEventListener(Event.ENTER_FRAME,moveTo);
			//每帧检测生命值
			addEventListener(Event.ENTER_FRAME,ck);
			this.t.text=String(life);
		}
		
		function moveTo(e:Event):void{
			if(!die){
			this.y++;
			if(this.x<=500-this.width/2 && this.x>=this.width/2){
				this.x-=xRan;
			}else{
				xRan=-xRan;
				this.x-=xRan;
			}}
		}
		
		function ck(e:Event):void{
			if(life>=1){
			if(life<25)	this.t.textColor=0xffff00;
			if(life<10)	this.t.textColor=0x00ff00;}
		}
		
		public function setPosition(){
			this.x=Math.random()*(500-this.width*2)+this.width;
			this.y=-50;
			xRan=Math.random()*(0.5+0.5)+0.5;
			this.scaleX=this.scaleY=life/100+0.8;
		}
		
		public function cutLife():void{
			life--;
			if(life>0){
				this.t.text=String(int(this.t.text)-1);
			}
		}
		
		public function cls():void{
			addEventListener(Event.ENTER_FRAME,clsE);
		}
		
		//清出屏幕
		function clsE(e:Event):void{
			this.x-=10;
			this.y-=50;	//防止再次游戏时y低于界限造成误结束
		}
		
	}
	
}
