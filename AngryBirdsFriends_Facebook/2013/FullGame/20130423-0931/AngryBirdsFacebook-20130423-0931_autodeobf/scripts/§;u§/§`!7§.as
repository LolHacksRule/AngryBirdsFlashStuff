package §;u§
{
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §`!7§ extends §+d§
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const §6!P§:Number = 6000;
       
      
      private var §^!9§:Number = -1;
      
      private var §4",§:MovieClip = null;
      
      public function §`!7§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §?q§.§ q§("MovieClip_Animation");
         this.§4",§ = new _loc1_();
         §2"@§.addChild(this.§4",§);
         this.§4",§.scaleY = 1.3;
         this.§4",§.scaleX = 1.3;
         this.§4",§.x = (1024 - 1024 * 1.3) / 2;
         this.§4",§.y = (768 - 768 * 1.3) / 2;
         this.§^!9§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§4",§.currentFrame == this.§4",§.totalFrames)
         {
            mNextState = §5!+§.STATE_NAME;
         }
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
