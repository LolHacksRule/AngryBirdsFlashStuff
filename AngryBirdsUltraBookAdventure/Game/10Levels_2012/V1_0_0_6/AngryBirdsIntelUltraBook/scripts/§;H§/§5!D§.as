package §;H§
{
   import §+0§.§,!E§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §5!D§ extends §,!E§
   {
      
      public static const §"!s§:String = "FlashGoes11State";
      
      public static const § p§:Number = 6000;
       
      
      private var §`!N§:Number = -1;
      
      private var §'P§:MovieClip = null;
      
      public function §5!D§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §`!t§.§=J§("MovieClip_Animation");
         this.§'P§ = new _loc1_();
         §&!m§.addChild(this.§'P§);
         this.§'P§.scaleY = 1.3;
         this.§'P§.scaleX = 1.3;
         this.§'P§.x = (1024 - 1024 * 1.3) / 2;
         this.§'P§.y = (768 - 768 * 1.3) / 2;
         this.§`!N§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§'P§.currentFrame == this.§'P§.totalFrames)
         {
            mNextState = §%!R§.§"!s§;
         }
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§"!s§;
         }
      }
   }
}
