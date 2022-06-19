package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§"Z§;
   import §"",§.§+§;
   import §"",§.§<+§;
   import §"",§.§<?§;
   import §+I§.§9!%§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§ F§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §3,§.§-!K§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   
   public class §-!M§ extends §,-§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §<n§:§-!F§ = null;
      
      public function §-!M§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §9!%§.§!!M§.background.§+!3§();
         this.§[!q§();
      }
      
      protected function §[!q§() : void
      {
         §2"-§.getItemByName("Button_Help").setVisibility(false);
         §2"-§.getItemByName("Button_Sound").setVisibility(false);
         §2"-§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §]!-§() : void
      {
         if(this.§<n§)
         {
            this.§<n§.stop();
            this.§<n§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§[!<§ != null)
         {
            (§2"-§.getItemByName("TextField_LevelName") as §+§).§"<§.text = LevelManager.§[!<§;
         }
         (§2"-§.getItemByName("Container_PauseMenu") as §<+§).x = OFFSCREEN_X;
         this.§6!^§(false);
         §9!%§.pause();
         §2"-§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§0!+§());
         this.§]!-§();
         this.§<n§ = §7!b§.§8c§.§,H§(§7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_PauseMenu") as §<+§,{"x":0},null,0.25),§7!b§.§8c§.§4&§((§2"-§.getItemByName("MovieClip_DarkBG") as §"Z§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§<n§.onComplete = this.§case §;
         this.§<n§.play();
      }
      
      protected function §case §() : void
      {
         this.§6!^§(true);
         this.§]!-§();
      }
      
      protected function §6!^§(param1:Boolean) : void
      {
         (§2"-§.getItemByName("Button_Resume") as §<?§).setEnabled(param1);
         (§2"-§.getItemByName("Button_Replay") as §<?§).setEnabled(param1);
         (§2"-§.getItemByName("Button_Menu") as §<?§).setEnabled(param1);
         (§2"-§.getItemByName("Button_Help") as §<?§).setEnabled(param1);
         (§2"-§.getItemByName("Button_Sound") as §<?§).setEnabled(param1);
      }
      
      protected function §7!g§(param1:String) : void
      {
         (§2"-§.getItemByName("Button_Resume") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_Replay") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_Menu") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_Help") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_Sound") as §<?§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§]!-§();
         this.§<n§ = §7!b§.§8c§.§,H§(§7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_PauseMenu") as §<+§,{"x":OFFSCREEN_X},null,0.25),§7!b§.§8c§.§4&§((§2"-§.getItemByName("MovieClip_DarkBG") as §"Z§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§<n§.onComplete = this.§,!O§;
         this.§<n§.play();
      }
      
      protected function §,!O§() : void
      {
         mNextState = this.getPlayState();
         this.§]!-§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]!-§();
         this.§7!g§(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§-!K§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §9!%§.§!!M§.slingshot.§&!L§)
               {
                  AngryBirdsFP11.sUserProgress.§?$§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.getLevelLoadState();
               §"c§.§@!z§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §%4§.§9!0§();
               mNextState = this.getLevelSelectionState();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§0!+§();
               AngryBirdsFP11.§#u§(_loc4_);
               §2"-§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§9!%§.§3"%§();
               §9!%§.§!`§(_loc5_);
               §2"-§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §"c§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §=B§.STATE_NAME;
      }
   }
}
