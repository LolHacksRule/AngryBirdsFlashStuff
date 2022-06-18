package §=0§
{
   import §#;§.§0#§;
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §3'§.§5I§;
   import §3'§.§6k§;
   import §3'§.§8I§;
   import §3'§.§?-§;
   import §8!G§.§-Z§;
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   
   public class §-v§ extends §`U§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §?1§:String = "PauseState";
       
      
      protected var §[w§:§7I§ = null;
      
      public function §-v§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §^?§.§]!%§.background.§79§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §4G§.getItemByName("Button_Help").setVisibility(false);
         §4G§.getItemByName("Button_Sound").setVisibility(false);
         §4G§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §+!'§() : void
      {
         if(this.§[w§)
         {
            this.§[w§.stop();
            this.§[w§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§-Z§.§%s§ != null)
         {
            (§4G§.getItemByName("TextField_LevelName") as §6k§).§#Y§.text = §-Z§.§%s§;
         }
         (§4G§.getItemByName("Container_PauseMenu") as §8I§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §^?§.pause();
         §4G§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§7H§());
         this.§+!'§();
         this.§[w§ = §>!2§.§72§.§7!0§(§>!2§.§72§.§-z§(§4G§.getItemByName("Container_PauseMenu") as §8I§,{"x":0},null,0.25),§>!2§.§72§.§-z§((§4G§.getItemByName("MovieClip_DarkBG") as §?-§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§[w§.onComplete = this.§+s§;
         this.§[w§.play();
      }
      
      protected function §+s§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§+!'§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§4G§.getItemByName("Button_Resume") as §5I§).setEnabled(param1);
         (§4G§.getItemByName("Button_Replay") as §5I§).setEnabled(param1);
         (§4G§.getItemByName("Button_Menu") as §5I§).setEnabled(param1);
         (§4G§.getItemByName("Button_Help") as §5I§).setEnabled(param1);
         (§4G§.getItemByName("Button_Sound") as §5I§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§4G§.getItemByName("Button_Resume") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_Replay") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_Menu") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_Help") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_Sound") as §5I§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§+!'§();
         this.§[w§ = §>!2§.§72§.§7!0§(§>!2§.§72§.§-z§(§4G§.getItemByName("Container_PauseMenu") as §8I§,{"x":OFFSCREEN_X},null,0.25),§>!2§.§72§.§-z§((§4G§.getItemByName("MovieClip_DarkBG") as §?-§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§[w§.onComplete = this.§<Z§;
         this.§[w§.play();
      }
      
      protected function §<Z§() : void
      {
         mNextState = this.§%i§();
         this.§+!'§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
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
         this.§+!'§();
         this.setPauseMenuButtonStates(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§0#§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §^?§.§]!%§.slingshot.§%h§)
               {
                  AngryBirdsFP11.sUserProgress.§8y§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§;!<§();
               § !2§.§-9§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §9!0§.§"P§();
               mNextState = this.§+L§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§7H§();
               AngryBirdsFP11.§^!4§(_loc4_);
               §4G§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§^?§.§8! §();
               §^?§.§6!<§(_loc5_);
               §4G§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
      
      protected function §%i§() : String
      {
         return StatePlay.§?1§;
      }
      
      protected function §;!<§() : String
      {
         return § !2§.§?1§;
      }
      
      protected function §+L§() : String
      {
         return §33§.§?1§;
      }
   }
}
