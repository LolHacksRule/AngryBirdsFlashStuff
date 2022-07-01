package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §<!<§.§]K§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   
   public class §^r§ extends §;!!§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §%!&§:§0Y§ = null;
      
      public function §^r§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §'!V§.§1!2§.background.§8!n§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §+!$§.getItemByName("Button_Help").setVisibility(false);
         §+!$§.getItemByName("Button_Sound").setVisibility(false);
         §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §3b§() : void
      {
         if(this.§%!&§)
         {
            this.§%!&§.stop();
            this.§%!&§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§1^§.§ ]§ != null)
         {
            (§+!$§.getItemByName("TextField_LevelName") as §;!j§).§!D§.text = §1^§.§ ]§;
         }
         (§+!$§.getItemByName("Container_PauseMenu") as §[!s§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §'!V§.pause();
         §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;!f§());
         this.§3b§();
         this.§%!&§ = §@!T§.§`!t§.§0!s§(§@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":0},null,0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§%!&§.onComplete = this.§[!e§;
         this.§%!&§.play();
      }
      
      protected function §[!e§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§3b§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§+!$§.getItemByName("Button_Resume") as §#!'§).setEnabled(param1);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setEnabled(param1);
         (§+!$§.getItemByName("Button_Menu") as §#!'§).setEnabled(param1);
         (§+!$§.getItemByName("Button_Help") as §#!'§).setEnabled(param1);
         (§+!$§.getItemByName("Button_Sound") as §#!'§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§+!$§.getItemByName("Button_Resume") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_Help") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_Sound") as §#!'§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§3b§();
         this.§%!&§ = §@!T§.§`!t§.§0!s§(§@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":OFFSCREEN_X},null,0.25),§@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§%!&§.onComplete = this.§7!T§;
         this.§%!&§.play();
      }
      
      protected function §7!T§() : void
      {
         mNextState = this.getPlayState();
         this.§3b§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§3b§();
         this.setPauseMenuButtonStates(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§]K§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §'!V§.§1!2§.slingshot.mBirds)
               {
                  AngryBirdsFP11.sUserProgress.§#+§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§0H§();
               §26§.§!=§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §+!§.§'!Q§();
               mNextState = this.§ try§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§;!f§();
               AngryBirdsFP11.§;z§(_loc4_);
               §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§'!V§.§'V§();
               §'!V§.§6!Y§(_loc5_);
               §+!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §0H§() : String
      {
         return §26§.STATE_NAME;
      }
      
      protected function § try§() : String
      {
         return §?&§.STATE_NAME;
      }
   }
}
