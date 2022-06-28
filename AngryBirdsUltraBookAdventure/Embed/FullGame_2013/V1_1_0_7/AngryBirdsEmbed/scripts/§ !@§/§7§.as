package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §%4§.§`a§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §6A§.§!!'§;
   import §7g§.§1Q§;
   
   public class §7§ extends §1Q§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §>9§:String = "PauseState";
       
      
      protected var §!e§:§ !=§ = null;
      
      public function §7§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §=w§.§ o§.background.§ ! §();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §]F§.getItemByName("Button_Help").setVisibility(false);
         §]F§.getItemByName("Button_Sound").setVisibility(false);
         §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §+§() : void
      {
         if(this.§!e§)
         {
            this.§!e§.stop();
            this.§!e§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§[4§.§"!>§ != null)
         {
            (§]F§.getItemByName("TextField_LevelName") as §`a§).§@w§.text = §[4§.§"!>§;
         }
         (§]F§.getItemByName("Container_PauseMenu") as §4!=§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §=w§.pause();
         §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§<!G§());
         this.§+§();
         this.§!e§ = §@7§.§@6§.§'!@§(§@7§.§@6§.§3!%§(§]F§.getItemByName("Container_PauseMenu") as §4!=§,{"x":0},null,0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§!e§.onComplete = this.§super§;
         this.§!e§.play();
      }
      
      protected function §super§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§+§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§]F§.getItemByName("Button_Resume") as §7-§).setEnabled(param1);
         (§]F§.getItemByName("Button_Replay") as §7-§).setEnabled(param1);
         (§]F§.getItemByName("Button_Menu") as §7-§).setEnabled(param1);
         (§]F§.getItemByName("Button_Help") as §7-§).setEnabled(param1);
         (§]F§.getItemByName("Button_Sound") as §7-§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§]F§.getItemByName("Button_Resume") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_Menu") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_Help") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_Sound") as §7-§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§+§();
         this.§!e§ = §@7§.§@6§.§'!@§(§@7§.§@6§.§3!%§(§]F§.getItemByName("Container_PauseMenu") as §4!=§,{"x":OFFSCREEN_X},null,0.25),§@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_DarkBG") as §9O§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§!e§.onComplete = this.§!Q§;
         this.§!e§.play();
      }
      
      protected function §!Q§() : void
      {
         mNextState = this.§=!-§();
         this.§+§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+§();
         this.setPauseMenuButtonStates(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§!!'§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §=w§.§ o§.slingshot.§,B§)
               {
                  AngryBirdsFP11.sUserProgress.§-l§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§]!-§();
               §^!K§.§@!<§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §,!F§.§?X§();
               mNextState = this.§[A§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§<!G§();
               AngryBirdsFP11.§%!H§(_loc4_);
               §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§=w§.§-!;§();
               §=w§.§9C§(_loc5_);
               §]F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
      
      protected function §=!-§() : String
      {
         return StatePlay.§>9§;
      }
      
      protected function §]!-§() : String
      {
         return §^!K§.§>9§;
      }
      
      protected function §[A§() : String
      {
         return §6!@§.§>9§;
      }
   }
}
