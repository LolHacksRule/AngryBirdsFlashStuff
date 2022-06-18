package §@!%§
{
   import § "§.§8!3§;
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §4-§.§'J§;
   import §4-§.§;g§;
   import §4-§.§>Z§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §9!?§.;
   import §]5§.§,G§;
   import §]5§.§1^§;
   
   public class §9B§ extends §1!,§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §5%§:String = "PauseState";
       
      
      protected var §;&§:§1^§ = null;
      
      public function §9B§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §#!4§.§^Y§.background.§[r§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §`k§.getItemByName("Button_Help").setVisibility(false);
         §`k§.getItemByName("Button_Sound").setVisibility(false);
         §`k§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §@!,§() : void
      {
         if(this.§;&§)
         {
            this.§;&§.stop();
            this.§;&§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§8!3§.§-[§ != null)
         {
            (§`k§.getItemByName("TextField_LevelName") as §>Z§).§23§.text = §8!3§.§-[§;
         }
         (§`k§.getItemByName("Container_PauseMenu") as §'J§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §#!4§.pause();
         §`k§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§>!6§());
         this.§@!,§();
         this.§;&§ = §,G§.§+S§.§,+§(§,G§.§+S§.§1u§(§`k§.getItemByName("Container_PauseMenu") as §'J§,{"x":0},null,0.25),§,G§.§+S§.§1u§((§`k§.getItemByName("MovieClip_DarkBG") as §;g§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§;&§.onComplete = this.§0!-§;
         this.§;&§.play();
      }
      
      protected function §0!-§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§@!,§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§`k§.getItemByName("Button_Resume") as §%+§).setEnabled(param1);
         (§`k§.getItemByName("Button_Replay") as §%+§).setEnabled(param1);
         (§`k§.getItemByName("Button_Menu") as §%+§).setEnabled(param1);
         (§`k§.getItemByName("Button_Help") as §%+§).setEnabled(param1);
         (§`k§.getItemByName("Button_Sound") as §%+§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§`k§.getItemByName("Button_Resume") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_Replay") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_Menu") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_Help") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_Sound") as §%+§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§@!,§();
         this.§;&§ = §,G§.§+S§.§,+§(§,G§.§+S§.§1u§(§`k§.getItemByName("Container_PauseMenu") as §'J§,{"x":OFFSCREEN_X},null,0.25),§,G§.§+S§.§1u§((§`k§.getItemByName("MovieClip_DarkBG") as §;g§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§;&§.onComplete = this.§2§;
         this.§;&§.play();
      }
      
      protected function §2§() : void
      {
         mNextState = this.§`!%§();
         this.§@!,§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@!,§();
         this.setPauseMenuButtonStates(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§#1§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §#!4§.§^Y§.slingshot.§0r§)
               {
                  AngryBirdsFP11.sUserProgress.§!O§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§1!#§();
               §2!"§.§`!B§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §7_§.§@l§();
               mNextState = this.§-E§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§>!6§();
               AngryBirdsFP11.§@d§(_loc4_);
               §`k§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§#!4§.§9!A§();
               §#!4§.§>R§(_loc5_);
               §`k§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?,§.§do§();
         }
      }
      
      protected function §`!%§() : String
      {
         return StatePlay.§5%§;
      }
      
      protected function §1!#§() : String
      {
         return §2!"§.§5%§;
      }
      
      protected function §-E§() : String
      {
         return §]V§.§5%§;
      }
   }
}
