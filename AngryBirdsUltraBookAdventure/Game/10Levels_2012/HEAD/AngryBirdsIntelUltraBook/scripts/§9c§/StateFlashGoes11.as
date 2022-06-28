package §9c§
{
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class StateFlashGoes11 extends StateBase
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const STATE_DISPLAY_TIME_MS:Number = 6000;
       
      
      private var §]!h§:Number = -1;
      
      private var §9!d§:MovieClip = null;
      
      public function StateFlashGoes11(initState:Boolean = false, name:String = "FlashGoes11State")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var cls:Class = AssetCache.§,!k§("MovieClip_Animation");
         this.§9!d§ = new cls();
         §^,§.addChild(this.§9!d§);
         this.§9!d§.scaleY = 1.3;
         this.§9!d§.scaleX = 1.3;
         this.§9!d§.x = (1024 - 1024 * 1.3) / 2;
         this.§9!d§.y = (768 - 768 * 1.3) / 2;
         this.§]!h§ = getTimer();
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(this.§9!d§.currentFrame == this.§9!d§.totalFrames)
         {
            mNextState = StateStart.STATE_NAME;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
