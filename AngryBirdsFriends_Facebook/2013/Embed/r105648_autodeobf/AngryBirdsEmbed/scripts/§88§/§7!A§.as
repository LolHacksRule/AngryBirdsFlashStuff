package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §&U§.§ 3§;
   import §&U§.§!X§;
   import §&U§.§05§;
   import §&U§.§^!@§;
   import §1t§.§-!M§;
   import §1t§.§`!B§;
   import §8T§.§@o§;
   import §;'§.§%!,§;
   import §<!M§.§[i§;
   import §@q§.§+!B§;
   import §@q§.§6;§;
   
   public class §7!A§ extends §2q§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §&! §:String = "PauseState";
       
      
      protected var §"d§:§+!B§ = null;
      
      public function §7!A§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §'5§.§^;§.background.§^'§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §=V§.getItemByName("Button_Help").setVisibility(false);
         §=V§.getItemByName("Button_Sound").setVisibility(false);
         §=V§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §7_§() : void
      {
         if(this.§"d§)
         {
            this.§"d§.stop();
            this.§"d§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§[i§.§0A§ != null)
         {
            (§=V§.getItemByName("TextField_LevelName") as § 3§).set.text = §[i§.§0A§;
         }
         (§=V§.getItemByName("Container_PauseMenu") as §05§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §'5§.pause();
         §=V§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§[!0§());
         this.§7_§();
         this.§"d§ = §6;§.§&e§.§=!>§(§6;§.§&e§.§42§(§=V§.getItemByName("Container_PauseMenu") as §05§,{"x":0},null,0.25),§6;§.§&e§.§42§((§=V§.getItemByName("MovieClip_DarkBG") as §!X§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§"d§.onComplete = this.§`F§;
         this.§"d§.play();
      }
      
      protected function §`F§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§7_§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§=V§.getItemByName("Button_Resume") as §^!@§).setEnabled(param1);
         (§=V§.getItemByName("Button_Replay") as §^!@§).setEnabled(param1);
         (§=V§.getItemByName("Button_Menu") as §^!@§).setEnabled(param1);
         (§=V§.getItemByName("Button_Help") as §^!@§).setEnabled(param1);
         (§=V§.getItemByName("Button_Sound") as §^!@§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§=V§.getItemByName("Button_Resume") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_Replay") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_Menu") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_Help") as §^!@§).setComponentVisualState(param1);
         (§=V§.getItemByName("Button_Sound") as §^!@§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§7_§();
         this.§"d§ = §6;§.§&e§.§=!>§(§6;§.§&e§.§42§(§=V§.getItemByName("Container_PauseMenu") as §05§,{"x":OFFSCREEN_X},null,0.25),§6;§.§&e§.§42§((§=V§.getItemByName("MovieClip_DarkBG") as §!X§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§"d§.onComplete = this.§+!$§;
         this.§"d§.play();
      }
      
      protected function §+!$§() : void
      {
         mNextState = this.§9&§();
         this.§7_§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7_§();
         this.setPauseMenuButtonStates(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§%!,§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §'5§.§^;§.slingshot.§7j§)
               {
                  AngryBirdsFP11.sUserProgress.§>W§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.static();
               §`!J§.§@J§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §@o§.§#!;§();
               mNextState = this.§'V§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§[!0§();
               AngryBirdsFP11.§;1§(_loc4_);
               §=V§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§'5§.§`M§();
               §'5§.§4!K§(_loc5_);
               §=V§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
      
      protected function §9&§() : String
      {
         return StatePlay.§&! §;
      }
      
      protected function static() : String
      {
         return §`!J§.§&! §;
      }
      
      protected function §'V§() : String
      {
         return §!G§.§&! §;
      }
   }
}
