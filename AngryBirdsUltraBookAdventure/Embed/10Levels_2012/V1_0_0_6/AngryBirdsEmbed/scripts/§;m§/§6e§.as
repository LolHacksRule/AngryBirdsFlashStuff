package §;m§
{
   import §#h§.§ !H§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §3G§.§6A§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   
   public class §6e§ extends §>3§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §-!A§:String = "PauseState";
       
      
      protected var §'!%§:§3_§ = null;
      
      public function §6e§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §"h§.§1C§.background.§!#§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §-f§.getItemByName("Button_Help").setVisibility(false);
         §-f§.getItemByName("Button_Sound").setVisibility(false);
         §-f§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §]!3§() : void
      {
         if(this.§'!%§)
         {
            this.§'!%§.stop();
            this.§'!%§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§59§.§%j§ != null)
         {
            (§-f§.getItemByName("TextField_LevelName") as §<k§).§5+§.text = §59§.§%j§;
         }
         (§-f§.getItemByName("Container_PauseMenu") as §1!=§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §"h§.pause();
         §-f§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§@6§());
         this.§]!3§();
         this.§'!%§ = §,!G§.§@j§.§2!'§(§,!G§.§@j§.§47§(§-f§.getItemByName("Container_PauseMenu") as §1!=§,{"x":0},null,0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("MovieClip_DarkBG") as §"m§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'!%§.onComplete = this.§7!D§;
         this.§'!%§.play();
      }
      
      protected function §7!D§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§]!3§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§-f§.getItemByName("Button_Resume") as §6<§).setEnabled(param1);
         (§-f§.getItemByName("Button_Replay") as §6<§).setEnabled(param1);
         (§-f§.getItemByName("Button_Menu") as §6<§).setEnabled(param1);
         (§-f§.getItemByName("Button_Help") as §6<§).setEnabled(param1);
         (§-f§.getItemByName("Button_Sound") as §6<§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§-f§.getItemByName("Button_Resume") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_Menu") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_Help") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_Sound") as §6<§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§]!3§();
         this.§'!%§ = §,!G§.§@j§.§2!'§(§,!G§.§@j§.§47§(§-f§.getItemByName("Container_PauseMenu") as §1!=§,{"x":OFFSCREEN_X},null,0.25),§,!G§.§@j§.§47§((§-f§.getItemByName("MovieClip_DarkBG") as §"m§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'!%§.onComplete = this.§<I§;
         this.§'!%§.play();
      }
      
      protected function §<I§() : void
      {
         mNextState = this.§&!$§();
         this.§]!3§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]!3§();
         this.setPauseMenuButtonStates(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§6A§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §"h§.§1C§.slingshot.§'@§)
               {
                  AngryBirdsFP11.sUserProgress.§=c§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§2J§();
               §3'§.§;3§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               § !H§.§[!<§();
               mNextState = this.§<r§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§@6§();
               AngryBirdsFP11.§0R§(_loc4_);
               §-f§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§"h§.§"+§();
               §"h§.§=K§(_loc5_);
               §-f§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
      
      protected function §&!$§() : String
      {
         return StatePlay.§-!A§;
      }
      
      protected function §2J§() : String
      {
         return §3'§.§-!A§;
      }
      
      protected function §<r§() : String
      {
         return §>!B§.§-!A§;
      }
   }
}
