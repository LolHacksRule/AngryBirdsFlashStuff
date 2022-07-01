package
{
   import §,Q§.§="2§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §2#§ extends MovieClip
   {
      
      private static const §#"1§:int = 130;
       
      
      private var §-"!§:LoadingScreen;
      
      private var §>O§:MovieClip;
      
      public function §2#§()
      {
         this.§-"!§ = new LoadingScreen();
         super();
         §="2§.registerMethod("resize",this.§>e§);
         addChild(this.§-"!§);
         this.§>O§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
         this.§>O§.gotoAndStop(1);
         addChild(this.§>O§);
         addEventListener(Event.ENTER_FRAME,this.onResize);
         addEventListener(Event.ADDED_TO_STAGE,this.onResize);
      }
      
      public function §>e§(param1:Object = null) : void
      {
         this.onResize(null);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(stage)
         {
            this.§-"!§.y = stage.stageHeight / 2 - this.§-"!§.height / 2 + §#"1§;
            this.§>O§.y = this.§-"!§.y + this.§-"!§.height / 2 + 150;
            this.§-"!§.x = stage.stageWidth / 2 - this.§-"!§.width / 2;
            this.§>O§.x = stage.stageWidth / 2 - this.§>O§.width / 2 + 2;
            _loc2_ = stage.stageHeight;
            if(this.§-"!§.height > stage.stageHeight)
            {
               _loc2_ = this.§-"!§.height + §#"1§;
            }
            graphics.beginFill(16777215);
            graphics.drawRect(0,0,stage.stageWidth,_loc2_);
            graphics.endFill();
         }
      }
   }
}
