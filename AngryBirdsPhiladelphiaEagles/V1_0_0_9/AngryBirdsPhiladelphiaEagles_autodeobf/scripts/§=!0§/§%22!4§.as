package §=!0§
{
   import §5F§.§+!O§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §^w§.§-!,§;
   import com.rovio.assets.§[G§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §"!4§ extends §-!,§
   {
      
      public static const §@§:String = "FlashGoes11State";
      
      public static const §class§:Number = 6000;
       
      
      private var §7!5§:Number = -1;
      
      private var §;T§:MovieClip = null;
      
      public function §"!4§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §[G§.§6u§("MovieClip_Animation");
         this.§;T§ = new _loc1_();
         §;I§.addChild(this.§;T§);
         this.§;T§.scaleY = 1.3;
         this.§;T§.scaleX = 1.3;
         this.§;T§.x = (1024 - 1024 * 1.3) / 2;
         this.§;T§.y = (768 - 768 * 1.3) / 2;
         this.§7!5§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§;T§.currentFrame == this.§;T§.totalFrames)
         {
            mNextState = §"Y§.§@§;
         }
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§@§;
         }
      }
   }
}
