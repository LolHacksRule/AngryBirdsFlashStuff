package §=0§
{
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import com.rovio.assets.§53§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §,y§ extends §`U§
   {
      
      public static const §?1§:String = "FlashGoes11State";
      
      public static const §@;§:Number = 6000;
       
      
      private var §!K§:Number = -1;
      
      private var §=>§:MovieClip = null;
      
      public function §,y§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §53§.§[N§("MovieClip_Animation");
         this.§=>§ = new _loc1_();
         §4G§.addChild(this.§=>§);
         this.§=>§.scaleY = 1.3;
         this.§=>§.scaleX = 1.3;
         this.§=>§.x = (1024 - 1024 * 1.3) / 2;
         this.§=>§.y = (768 - 768 * 1.3) / 2;
         this.§!K§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§=>§.currentFrame == this.§=>§.totalFrames)
         {
            mNextState = §[!$§.§?1§;
         }
         if(mNextState.length > 0)
         {
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§?1§;
         }
      }
   }
}
