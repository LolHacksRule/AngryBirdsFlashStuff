package §9!5§
{
   import §"R§.§ !Q§;
   import §,!5§.§7!,§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import §true§.§ _§;
   
   public class §%@§ extends §?Y§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §?h§:String = "PauseState";
       
      
      protected var §74§:§4!Z§ = null;
      
      public function §%@§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         § _§.§!6§.background.§>G§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §5!P§.getItemByName("Button_Help").setVisibility(false);
         §5!P§.getItemByName("Button_Sound").setVisibility(false);
         §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §&q§() : void
      {
         if(this.§74§)
         {
            this.§74§.stop();
            this.§74§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§4Y§ != null)
         {
            (§5!P§.getItemByName("TextField_LevelName") as §"j§).§"E§.text = LevelManager.§4Y§;
         }
         (§5!P§.getItemByName("Container_PauseMenu") as §8;§).x = OFFSCREEN_X;
         this.§`!^§(false);
         § _§.pause();
         §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"!u§());
         this.§&q§();
         this.§74§ = §,!b§.§<d§.§=!o§(§,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_PauseMenu") as §8;§,{"x":0},null,0.25),§,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_DarkBG") as §[I§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§74§.onComplete = this.§]Z§;
         this.§74§.play();
      }
      
      protected function §]Z§() : void
      {
         this.§`!^§(true);
         this.§&q§();
      }
      
      protected function §`!^§(param1:Boolean) : void
      {
         (§5!P§.getItemByName("Button_Resume") as §5!I§).setEnabled(param1);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setEnabled(param1);
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setEnabled(param1);
         (§5!P§.getItemByName("Button_Help") as §5!I§).setEnabled(param1);
         (§5!P§.getItemByName("Button_Sound") as §5!I§).setEnabled(param1);
      }
      
      protected function §7!k§(param1:String) : void
      {
         (§5!P§.getItemByName("Button_Resume") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_Help") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_Sound") as §5!I§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§&q§();
         this.§74§ = §,!b§.§<d§.§=!o§(§,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_PauseMenu") as §8;§,{"x":OFFSCREEN_X},null,0.25),§,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_DarkBG") as §[I§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§74§.onComplete = this.§8w§;
         this.§74§.play();
      }
      
      protected function §8w§() : void
      {
         mNextState = this.§,w§();
         this.§&q§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&q§();
         this.§7!k§(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§7!,§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in § _§.§!6§.slingshot.§?$§)
               {
                  AngryBirdsFP11.sUserProgress.§#_§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§[!Z§();
               §#!c§.§6d§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               § !Q§.§"!"§();
               mNextState = this.§&X§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§"!u§();
               AngryBirdsFP11.§-#§(_loc4_);
               §5!P§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§ _§.§1_§();
               § _§.§"$§(_loc5_);
               §5!P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
      
      protected function §,w§() : String
      {
         return StatePlay.§?h§;
      }
      
      protected function §[!Z§() : String
      {
         return §#!c§.§?h§;
      }
      
      protected function §&X§() : String
      {
         return § B§.§?h§;
      }
   }
}
