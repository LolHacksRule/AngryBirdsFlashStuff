package §!$§
{
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §'N§.§^]§;
   import §-!'§.§&!H§;
   import §-!'§.§;f§;
   import §-!'§.§@D§;
   import §-!'§.§in §;
   import §-!C§.§#!G§;
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import §`i§.§6+§;
   
   public class §[q§ extends §3!'§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §9"§:String = "PauseState";
       
      
      protected var §%!,§:§`!-§ = null;
      
      public function §[q§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §]3§.§;v§.background.§@%§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §+!2§.getItemByName("Button_Help").setVisibility(false);
         §+!2§.getItemByName("Button_Sound").setVisibility(false);
         §+!2§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §0!?§() : void
      {
         if(this.§%!,§)
         {
            this.§%!,§.stop();
            this.§%!,§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§#!G§.§9C§ != null)
         {
            (§+!2§.getItemByName("TextField_LevelName") as §&!H§).§#C§.text = §#!G§.§9C§;
         }
         (§+!2§.getItemByName("Container_PauseMenu") as §in §).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §]3§.pause();
         §+!2§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§1!9§());
         this.§0!?§();
         this.§%!,§ = §;q§.§9r§.§6&§(§;q§.§9r§.§%!#§(§+!2§.getItemByName("Container_PauseMenu") as §in §,{"x":0},null,0.25),§;q§.§9r§.§%!#§((§+!2§.getItemByName("MovieClip_DarkBG") as §@D§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§%!,§.onComplete = this.§=!"§;
         this.§%!,§.play();
      }
      
      protected function §=!"§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§0!?§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§+!2§.getItemByName("Button_Resume") as §;f§).setEnabled(param1);
         (§+!2§.getItemByName("Button_Replay") as §;f§).setEnabled(param1);
         (§+!2§.getItemByName("Button_Menu") as §;f§).setEnabled(param1);
         (§+!2§.getItemByName("Button_Help") as §;f§).setEnabled(param1);
         (§+!2§.getItemByName("Button_Sound") as §;f§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§+!2§.getItemByName("Button_Resume") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_Replay") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_Menu") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_Help") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_Sound") as §;f§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§0!?§();
         this.§%!,§ = §;q§.§9r§.§6&§(§;q§.§9r§.§%!#§(§+!2§.getItemByName("Container_PauseMenu") as §in §,{"x":OFFSCREEN_X},null,0.25),§;q§.§9r§.§%!#§((§+!2§.getItemByName("MovieClip_DarkBG") as §@D§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§%!,§.onComplete = this.§5E§;
         this.§%!,§.play();
      }
      
      protected function §5E§() : void
      {
         mNextState = this.§3n§();
         this.§0!?§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!?§();
         this.setPauseMenuButtonStates(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§6+§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §]3§.§;v§.slingshot.§"D§)
               {
                  AngryBirdsFP11.sUserProgress.§=U§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§]!0§();
               § W§.§ =§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §^]§.§@n§();
               mNextState = this.§2`§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§1!9§();
               AngryBirdsFP11.§[7§(_loc4_);
               §+!2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§]3§.§[L§();
               §]3§.§@S§(_loc5_);
               §+!2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
      
      protected function §3n§() : String
      {
         return StatePlay.§9"§;
      }
      
      protected function §]!0§() : String
      {
         return § W§.§9"§;
      }
      
      protected function §2`§() : String
      {
         return §#u§.§9"§;
      }
   }
}
