package
{
   import §=e§.§1!@§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class § !L§ extends MovieClip
   {
      
      private static const §7=§:int = 130;
       
      
      private var §4!5§:LoadingScreen;
      
      private var §^P§:MovieClip;
      
      public function § !L§()
      {
         this.§4!5§ = new LoadingScreen();
         super();
         §1!@§.registerMethod("resize",this.§0"§);
         addChild(this.§4!5§);
         this.§^P§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
         this.§^P§.gotoAndStop(1);
         addChild(this.§^P§);
         addEventListener(Event.ENTER_FRAME,this.onResize);
         addEventListener(Event.ADDED_TO_STAGE,this.onResize);
      }
      
      public function §0"§(param1:Object = null) : void
      {
         this.onResize(null);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(stage)
         {
            this.§4!5§.y = stage.stageHeight / 2 - this.§4!5§.height / 2 + §7=§;
            this.§^P§.y = this.§4!5§.y + this.§4!5§.height / 2 + 150;
            this.§4!5§.x = stage.stageWidth / 2 - this.§4!5§.width / 2;
            this.§^P§.x = stage.stageWidth / 2 - this.§^P§.width / 2 + 2;
            _loc2_ = stage.stageHeight;
            if(this.§4!5§.height > stage.stageHeight)
            {
               _loc2_ = this.§4!5§.height + §7=§;
            }
            graphics.beginFill(16777215);
            graphics.drawRect(0,0,stage.stageWidth,_loc2_);
            graphics.endFill();
         }
      }
   }
}
