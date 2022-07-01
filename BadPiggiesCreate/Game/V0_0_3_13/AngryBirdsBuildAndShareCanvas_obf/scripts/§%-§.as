package
{
   import §#!8§.§&!'§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §%-§ extends MovieClip
   {
      
      private static const §1N§:int = 130;
       
      
      private var §"!9§:LoadingScreen;
      
      private var §1!u§:MovieClip;
      
      public function §%-§()
      {
         this.§"!9§ = new LoadingScreen();
         super();
         §&!'§.registerMethod("resize",this.§;!L§);
         addChild(this.§"!9§);
         this.§1!u§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
         this.§1!u§.gotoAndStop(1);
         addChild(this.§1!u§);
         addEventListener(Event.ENTER_FRAME,this.onResize);
         addEventListener(Event.ADDED_TO_STAGE,this.onResize);
      }
      
      public function §;!L§(param1:Object = null) : void
      {
         this.onResize(null);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(stage)
         {
            this.§"!9§.y = stage.stageHeight / 2 - this.§"!9§.height / 2 + §1N§;
            this.§1!u§.y = this.§"!9§.y + this.§"!9§.height / 2 + 150;
            this.§"!9§.x = stage.stageWidth / 2 - this.§"!9§.width / 2;
            this.§1!u§.x = stage.stageWidth / 2 - this.§1!u§.width / 2 + 2;
            _loc2_ = stage.stageHeight;
            if(this.§"!9§.height > stage.stageHeight)
            {
               _loc2_ = this.§"!9§.height + §1N§;
            }
            graphics.beginFill(16777215);
            graphics.drawRect(0,0,stage.stageWidth,_loc2_);
            graphics.endFill();
         }
      }
   }
}
