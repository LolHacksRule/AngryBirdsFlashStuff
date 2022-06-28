package §`!%§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §%x§.§0Y§;
   import §'X§.§9[§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§ p§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   
   public class §77§ extends §9[§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §0!7§:String = "PauseState";
       
      
      protected var §6!G§:§ !5§ = null;
      
      public function §77§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §,!!§.§;4§.background.§!M§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §#!4§.getItemByName("Button_Help").setVisibility(false);
         §#!4§.getItemByName("Button_Sound").setVisibility(false);
         §#!4§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §7!E§() : void
      {
         if(this.§6!G§)
         {
            this.§6!G§.stop();
            this.§6!G§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§6M§.§[z§ != null)
         {
            (§#!4§.getItemByName("TextField_LevelName") as § p§).§!"§.text = §6M§.§[z§;
         }
         (§#!4§.getItemByName("Container_PauseMenu") as §`f§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §,!!§.pause();
         §#!4§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§[l§());
         this.§7!E§();
         this.§6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_PauseMenu") as §`f§,{"x":0},null,0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("MovieClip_DarkBG") as §[!B§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§6!G§.onComplete = this.§%M§;
         this.§6!G§.play();
      }
      
      protected function §%M§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§7!E§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§#!4§.getItemByName("Button_Resume") as §]P§).setEnabled(param1);
         (§#!4§.getItemByName("Button_Replay") as §]P§).setEnabled(param1);
         (§#!4§.getItemByName("Button_Menu") as §]P§).setEnabled(param1);
         (§#!4§.getItemByName("Button_Help") as §]P§).setEnabled(param1);
         (§#!4§.getItemByName("Button_Sound") as §]P§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§#!4§.getItemByName("Button_Resume") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_Replay") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_Menu") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_Help") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_Sound") as §]P§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§7!E§();
         this.§6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_PauseMenu") as §`f§,{"x":OFFSCREEN_X},null,0.25),§%!>§.§-]§.§?U§((§#!4§.getItemByName("MovieClip_DarkBG") as §[!B§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§6!G§.onComplete = this.§for§;
         this.§6!G§.play();
      }
      
      protected function §for§() : void
      {
         mNextState = this.§]r§();
         this.§7!E§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7!E§();
         this.setPauseMenuButtonStates(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§0Y§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §,!!§.§;4§.slingshot.§"_§)
               {
                  AngryBirdsFP11.sUserProgress.§ G§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§,7§();
               § @§.§'d§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §3!E§.§#'§();
               mNextState = this.§&N§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§[l§();
               AngryBirdsFP11.§-E§(_loc4_);
               §#!4§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§,!!§.§1q§();
               §,!!§.§#,§(_loc5_);
               §#!4§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      protected function §]r§() : String
      {
         return StatePlay.§0!7§;
      }
      
      protected function §,7§() : String
      {
         return § @§.§0!7§;
      }
      
      protected function §&N§() : String
      {
         return §!,§.§0!7§;
      }
   }
}
