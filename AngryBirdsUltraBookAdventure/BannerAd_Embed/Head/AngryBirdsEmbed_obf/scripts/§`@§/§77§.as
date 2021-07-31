package §`@§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §%x§.§0Y§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§ use§;
   import §1h§.§@s§;
   import §2!<§.§?!?§;
   import §>!C§.§6M§;
   import §^@§.§!"§;
   import §^@§.§2q§;
   import §^@§.§=^§;
   import §^@§.§`Y§;
   
   public class §77§ extends §0!5§
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
         §#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_LevelPause[0]);
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
         §#Z§.getItemByName("Button_Help").setVisibility(false);
         §#Z§.getItemByName("Button_Sound").setVisibility(false);
         §#Z§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
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
            (§#Z§.getItemByName("TextField_LevelName") as §`Y§).§ p§.text = §6M§.§[z§;
         }
         (§#Z§.getItemByName("Container_PauseMenu") as §2q§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §,!!§.pause();
         §#Z§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§[l§());
         this.§7!E§();
         this.§6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#Z§.getItemByName("Container_PauseMenu") as §2q§,{"x":0},null,0.25),§%!>§.§-]§.§?U§((§#Z§.getItemByName("MovieClip_DarkBG") as §!"§).mClip,{"alpha":1},{"alpha":0},0.25));
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
         (§#Z§.getItemByName("Button_Resume") as §=^§).setEnabled(param1);
         (§#Z§.getItemByName("Button_Replay") as §=^§).setEnabled(param1);
         (§#Z§.getItemByName("Button_Menu") as §=^§).setEnabled(param1);
         (§#Z§.getItemByName("Button_Help") as §=^§).setEnabled(param1);
         (§#Z§.getItemByName("Button_Sound") as §=^§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§#Z§.getItemByName("Button_Resume") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_Replay") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_Menu") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_Help") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_Sound") as §=^§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§7!E§();
         this.§6!G§ = §%!>§.§-]§.§&0§(§%!>§.§-]§.§?U§(§#Z§.getItemByName("Container_PauseMenu") as §2q§,{"x":OFFSCREEN_X},null,0.25),§%!>§.§-]§.§?U§((§#Z§.getItemByName("MovieClip_DarkBG") as §!"§).mClip,{"alpha":0},{"alpha":1},0.25));
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
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7!E§();
         this.setPauseMenuButtonStates(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
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
               mNextState = this.§^J§();
               § @§.§'d§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §?!?§.§%!%§();
               mNextState = this.§,7§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§[l§();
               AngryBirdsFP11.§-E§(_loc4_);
               §#Z§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§,!!§.§1q§();
               §,!!§.§#,§(_loc5_);
               §#Z§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      protected function §]r§() : String
      {
         return StatePlay.§0!7§;
      }
      
      protected function §^J§() : String
      {
         return § @§.§0!7§;
      }
      
      protected function §,7§() : String
      {
         return §!,§.§0!7§;
      }
   }
}
