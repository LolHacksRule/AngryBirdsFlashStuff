package §2>§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §'0§.§]!2§;
   import §2T§.§&M§;
   import §2T§.§2H§;
   import §2T§.§5@§;
   import §2T§.§[l§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §9s§.§1!6§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   
   public class §?!1§ extends §9Y§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §]! §:String = "PauseState";
       
      
      protected var §6!K§:§9;§ = null;
      
      public function §?!1§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §[!4§.§continue§.background.§74§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §!s§.getItemByName("Button_Help").setVisibility(false);
         §!s§.getItemByName("Button_Sound").setVisibility(false);
         §!s§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §8!4§() : void
      {
         if(this.§6!K§)
         {
            this.§6!K§.stop();
            this.§6!K§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§'?§.§"t§ != null)
         {
            (§!s§.getItemByName("TextField_LevelName") as §5@§).§[!J§.text = §'?§.§"t§;
         }
         (§!s§.getItemByName("Container_PauseMenu") as §&M§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[!4§.pause();
         §!s§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3§());
         this.§8!4§();
         this.§6!K§ = §'!A§.§5+§.§@v§(§'!A§.§5+§.§;h§(§!s§.getItemByName("Container_PauseMenu") as §&M§,{"x":0},null,0.25),§'!A§.§5+§.§;h§((§!s§.getItemByName("MovieClip_DarkBG") as §[l§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§6!K§.onComplete = this.§ !+§;
         this.§6!K§.play();
      }
      
      protected function § !+§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§8!4§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§!s§.getItemByName("Button_Resume") as §2H§).setEnabled(param1);
         (§!s§.getItemByName("Button_Replay") as §2H§).setEnabled(param1);
         (§!s§.getItemByName("Button_Menu") as §2H§).setEnabled(param1);
         (§!s§.getItemByName("Button_Help") as §2H§).setEnabled(param1);
         (§!s§.getItemByName("Button_Sound") as §2H§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§!s§.getItemByName("Button_Resume") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_Replay") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_Menu") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_Help") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_Sound") as §2H§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§8!4§();
         this.§6!K§ = §'!A§.§5+§.§@v§(§'!A§.§5+§.§;h§(§!s§.getItemByName("Container_PauseMenu") as §&M§,{"x":OFFSCREEN_X},null,0.25),§'!A§.§5+§.§;h§((§!s§.getItemByName("MovieClip_DarkBG") as §[l§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§6!K§.onComplete = this.§85§;
         this.§6!K§.play();
      }
      
      protected function §85§() : void
      {
         mNextState = this.§6!§();
         this.§8!4§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§8!4§();
         this.setPauseMenuButtonStates(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§1!6§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §[!4§.§continue§.slingshot.§@s§)
               {
                  AngryBirdsFP11.sUserProgress.§2!M§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§+e§();
               §9$§.§9g§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §]!2§.§^F§();
               mNextState = this.§`"§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§3§();
               AngryBirdsFP11.§true §(_loc4_);
               §!s§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§[!4§.§-u§();
               §[!4§.§=!F§(_loc5_);
               §!s§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
      
      protected function §6!§() : String
      {
         return StatePlay.§]! §;
      }
      
      protected function §+e§() : String
      {
         return §9$§.§]! §;
      }
      
      protected function §`"§() : String
      {
         return §0!O§.§]! §;
      }
   }
}
