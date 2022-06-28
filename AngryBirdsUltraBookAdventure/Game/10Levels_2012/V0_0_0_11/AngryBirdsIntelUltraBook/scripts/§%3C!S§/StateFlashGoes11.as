package §<!S§
{
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §>!-§.UIEventListenerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class StateFlashGoes11 extends StateBase
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const STATE_DISPLAY_TIME_MS:Number = 6000;
       
      
      private var §^!!§:Number = -1;
      
      private var §=n§:MovieClip = null;
      
      public function StateFlashGoes11(initState:Boolean = false, name:String = "FlashGoes11State")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var cls:Class = AssetCache.§-9§("MovieClip_Animation");
         this.§=n§ = new cls();
         §5!M§.addChild(this.§=n§);
         this.§=n§.scaleY = 1.3;
         this.§=n§.scaleX = 1.3;
         this.§=n§.x = (1024 - 1024 * 1.3) / 2;
         this.§=n§.y = (768 - 768 * 1.3) / 2;
         this.§^!!§ = getTimer();
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(this.§=n§.currentFrame == this.§=n§.totalFrames)
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
