package
{
   import §&"&§.§8!"§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §2!l§ extends MovieClip
   {
      
      private static const §in§:int = 130;
       
      
      private var §,H§:LoadingScreen;
      
      private var §=!!§:MovieClip;
      
      public function §2!l§()
      {
         this.§,H§ = new LoadingScreen();
         super();
         §8!"§.registerMethod("resize",this.§ +§);
         addChild(this.§,H§);
         this.§=!!§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
         this.§=!!§.gotoAndStop(1);
         addChild(this.§=!!§);
         addEventListener(Event.ENTER_FRAME,this.onResize);
         addEventListener(Event.ADDED_TO_STAGE,this.onResize);
      }
      
      public function § +§(param1:Object = null) : void
      {
         this.onResize(null);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(stage)
         {
            this.§,H§.y = stage.stageHeight / 2 - this.§,H§.height / 2 + §in§;
            this.§=!!§.y = this.§,H§.y + this.§,H§.height / 2 + 150;
            this.§,H§.x = stage.stageWidth / 2 - this.§,H§.width / 2;
            this.§=!!§.x = stage.stageWidth / 2 - this.§=!!§.width / 2 + 2;
            _loc2_ = stage.stageHeight;
            if(this.§,H§.height > stage.stageHeight)
            {
               _loc2_ = this.§,H§.height + §in§;
            }
            graphics.beginFill(16777215);
            graphics.drawRect(0,0,stage.stageWidth,_loc2_);
            graphics.endFill();
         }
      }
   }
}
