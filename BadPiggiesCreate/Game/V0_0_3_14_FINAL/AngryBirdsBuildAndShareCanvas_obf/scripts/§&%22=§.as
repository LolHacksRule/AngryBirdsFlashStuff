package
{
   import §%_§.§4m§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §&"=§ extends MovieClip
   {
      
      private static const §7!u§:int = 130;
       
      
      private var §]"6§:LoadingScreen;
      
      private var §'§:MovieClip;
      
      public function §&"=§()
      {
         this.§]"6§ = new LoadingScreen();
         super();
         §4m§.registerMethod("resize",this.§5!y§);
         addChild(this.§]"6§);
         this.§'§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
         this.§'§.gotoAndStop(1);
         addChild(this.§'§);
         addEventListener(Event.ENTER_FRAME,this.onResize);
         addEventListener(Event.ADDED_TO_STAGE,this.onResize);
      }
      
      public function §5!y§(param1:Object = null) : void
      {
         this.onResize(null);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(stage)
         {
            this.§]"6§.y = stage.stageHeight / 2 - this.§]"6§.height / 2 + §7!u§;
            this.§'§.y = this.§]"6§.y + this.§]"6§.height / 2 + 150;
            this.§]"6§.x = stage.stageWidth / 2 - this.§]"6§.width / 2;
            this.§'§.x = stage.stageWidth / 2 - this.§'§.width / 2 + 2;
            _loc2_ = stage.stageHeight;
            if(this.§]"6§.height > stage.stageHeight)
            {
               _loc2_ = this.§]"6§.height + §7!u§;
            }
            graphics.beginFill(16777215);
            graphics.drawRect(0,0,stage.stageWidth,_loc2_);
            graphics.endFill();
         }
      }
   }
}
