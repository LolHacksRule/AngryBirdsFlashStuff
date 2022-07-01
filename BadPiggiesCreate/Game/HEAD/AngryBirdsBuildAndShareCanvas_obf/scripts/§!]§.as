package
{
   import §05§.§?s§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §!]§ extends MovieClip
   {
      
      private static const §&!U§:int = 130;
       
      
      private var §-"7§:LoadingScreen;
      
      private var §3!<§:MovieClip;
      
      private var §,!o§:MovieClip;
      
      public function §!]§()
      {
         this.§-"7§ = new LoadingScreen();
         super();
         §?s§.registerMethod("resize",this.§ !f§);
         addChild(this.§-"7§);
         this.§3!<§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
         this.§3!<§.gotoAndStop(1);
         addChild(this.§3!<§);
         this.§,!o§ = this.§-"7§.getChildByName("MovieClip_Background") as MovieClip;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
         this.x = 0;
         this.y = 0;
      }
      
      protected function §8!_§(param1:Event) : void
      {
         if(stage)
         {
            stage.color = 0;
         }
         removeEventListener(Event.ENTER_FRAME,this.onResize);
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         addEventListener(Event.ENTER_FRAME,this.onResize);
         if(stage)
         {
            stage.color = 16777215;
         }
      }
      
      public function § !f§(param1:Object = null) : void
      {
         this.onResize(null);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(stage)
         {
            this.§-"7§.y = stage.stageHeight / 2 - this.§-"7§.height / 2;
            this.§3!<§.y = this.§-"7§.y + this.§-"7§.height / 2 + 150;
            this.§-"7§.x = stage.stageWidth / 2 - this.§-"7§.width / 2;
            this.§3!<§.x = stage.stageWidth / 2 - this.§3!<§.width / 2 + 2;
            _loc2_ = stage.stageHeight;
            if(this.§-"7§.height > stage.stageHeight)
            {
               _loc2_ = this.§-"7§.height + §&!U§;
            }
            this.x = 0;
         }
      }
   }
}
