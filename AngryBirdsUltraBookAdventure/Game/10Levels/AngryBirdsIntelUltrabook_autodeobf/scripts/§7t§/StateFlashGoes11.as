package §7t§
{
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class StateFlashGoes11 extends StateBase
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const STATE_DISPLAY_TIME_MS:Number = 6000;
       
      
      private var §;I§:Number = -1;
      
      private var §;]§:MovieClip = null;
      
      public function StateFlashGoes11(initState:Boolean = false, name:String = "FlashGoes11State")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var cls:Class = AssetCache.§%p§("MovieClip_Animation");
         this.§;]§ = new cls();
         §`=§.addChild(this.§;]§);
         this.§;]§.scaleY = 1.3;
         this.§;]§.scaleX = 1.3;
         this.§;]§.x = (1024 - 1024 * 1.3) / 2;
         this.§;]§.y = (768 - 768 * 1.3) / 2;
         this.§;I§ = getTimer();
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(this.§;]§.currentFrame == this.§;]§.totalFrames)
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
