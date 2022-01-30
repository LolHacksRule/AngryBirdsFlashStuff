package
{
   import §!!T§.§"!S§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §`o§ extends MovieClip
   {
      
      private static const §]"1§:int = 130;
       
      
      private var §7!1§:LoadingScreen;
      
      private var §9F§:MovieClip;
      
      public function §`o§()
      {
         this.§7!1§ = new LoadingScreen();
         super();
         §"!S§.registerMethod("resize",this.§&!E§);
         addChild(this.§7!1§);
         this.§9F§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
         this.§9F§.gotoAndStop(1);
         addChild(this.§9F§);
         addEventListener(Event.ENTER_FRAME,this.onResize);
         addEventListener(Event.ADDED_TO_STAGE,this.onResize);
      }
      
      public function §&!E§(param1:Object = null) : void
      {
         this.onResize(null);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(stage)
         {
            this.§7!1§.y = stage.stageHeight / 2 - this.§7!1§.height / 2 + §]"1§;
            this.§9F§.y = this.§7!1§.y + this.§7!1§.height / 2 + 150;
            this.§7!1§.x = stage.stageWidth / 2 - this.§7!1§.width / 2;
            this.§9F§.x = stage.stageWidth / 2 - this.§9F§.width / 2 + 2;
            _loc2_ = stage.stageHeight;
            if(this.§7!1§.height > stage.stageHeight)
            {
               _loc2_ = this.§7!1§.height + §]"1§;
            }
            graphics.beginFill(16777215);
            graphics.drawRect(0,0,stage.stageWidth,_loc2_);
            graphics.endFill();
         }
      }
   }
}
