package
{
   import §8"'§.§?!`§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §!l§ extends MovieClip
   {
      
      private static const §8!k§:int = 130;
       
      
      private var §&!%§:LoadingScreen;
      
      private var §+!k§:MovieClip;
      
      public function §!l§()
      {
         this.§&!%§ = new LoadingScreen();
         super();
         §?!`§.registerMethod("resize",this.§^!h§);
         addChild(this.§&!%§);
         this.§+!k§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
         this.§+!k§.gotoAndStop(1);
         addChild(this.§+!k§);
         addEventListener(Event.ENTER_FRAME,this.onResize);
         addEventListener(Event.ADDED_TO_STAGE,this.onResize);
      }
      
      public function §^!h§(param1:Object = null) : void
      {
         this.onResize(null);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(stage)
         {
            this.§&!%§.y = stage.stageHeight / 2 - this.§&!%§.height / 2 + §8!k§;
            this.§+!k§.y = this.§&!%§.y + this.§&!%§.height / 2 + 150;
            this.§&!%§.x = stage.stageWidth / 2 - this.§&!%§.width / 2;
            this.§+!k§.x = stage.stageWidth / 2 - this.§+!k§.width / 2 + 2;
            _loc2_ = stage.stageHeight;
            if(this.§&!%§.height > stage.stageHeight)
            {
               _loc2_ = this.§&!%§.height + §8!k§;
            }
            graphics.beginFill(16777215);
            graphics.drawRect(0,0,stage.stageWidth,_loc2_);
            graphics.endFill();
         }
      }
   }
}
