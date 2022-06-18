package §@!%§
{
   import §0m§.§1!,§;
   import §0u§.§&]§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import com.rovio.assets.§ 3§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §>X§ extends §1!,§
   {
      
      public static const §5%§:String = "FlashGoes11State";
      
      public static const §%!"§:Number = 6000;
       
      
      private var §-O§:Number = -1;
      
      private var §"!+§:MovieClip = null;
      
      public function §>X§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = § 3§.§+i§("MovieClip_Animation");
         this.§"!+§ = new _loc1_();
         §`k§.addChild(this.§"!+§);
         this.§"!+§.scaleY = 1.3;
         this.§"!+§.scaleX = 1.3;
         this.§"!+§.x = (1024 - 1024 * 1.3) / 2;
         this.§"!+§.y = (768 - 768 * 1.3) / 2;
         this.§-O§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§"!+§.currentFrame == this.§"!+§.totalFrames)
         {
            mNextState = §4P§.§5%§;
         }
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§5%§;
         }
      }
   }
}
