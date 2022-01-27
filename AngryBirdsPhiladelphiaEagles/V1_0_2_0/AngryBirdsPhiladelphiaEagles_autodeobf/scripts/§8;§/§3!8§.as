package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §%"§.§96§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §9c§.§6P§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §=!H§.§=<§;
   import §=!H§.§[R§;
   import §=!H§.§`S§;
   import §?!;§.§6H§;
   
   public class §3!8§ extends §!L§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §"Z§:String = "PauseState";
       
      
      protected var §-7§:§ !4§ = null;
      
      public function §3!8§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §5!+§.§6!§.background.§37§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §>2§.getItemByName("Button_Help").setVisibility(false);
         §>2§.getItemByName("Button_Sound").setVisibility(false);
         §>2§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §1Q§() : void
      {
         if(this.§-7§)
         {
            this.§-7§.stop();
            this.§-7§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§6H§.§"Q§ != null)
         {
            (§>2§.getItemByName("TextField_LevelName") as §`S§).§'Z§.text = §6H§.§"Q§;
         }
         (§>2§.getItemByName("Container_PauseMenu") as §9V§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §5!+§.pause();
         §>2§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§![§());
         this.§1Q§();
         this.§-7§ = §49§.§&y§.§&7§(§49§.§&y§.§=!3§(§>2§.getItemByName("Container_PauseMenu") as §9V§,{"x":0},null,0.25),§49§.§&y§.§=!3§((§>2§.getItemByName("MovieClip_DarkBG") as §[R§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§-7§.onComplete = this.§?! §;
         this.§-7§.play();
      }
      
      protected function §?! §() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§1Q§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§>2§.getItemByName("Button_Resume") as §=<§).setEnabled(param1);
         (§>2§.getItemByName("Button_Replay") as §=<§).setEnabled(param1);
         (§>2§.getItemByName("Button_Menu") as §=<§).setEnabled(param1);
         (§>2§.getItemByName("Button_Help") as §=<§).setEnabled(param1);
         (§>2§.getItemByName("Button_Sound") as §=<§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§>2§.getItemByName("Button_Resume") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Replay") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Menu") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Help") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Sound") as §=<§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§1Q§();
         this.§-7§ = §49§.§&y§.§&7§(§49§.§&y§.§=!3§(§>2§.getItemByName("Container_PauseMenu") as §9V§,{"x":OFFSCREEN_X},null,0.25),§49§.§&y§.§=!3§((§>2§.getItemByName("MovieClip_DarkBG") as §[R§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§-7§.onComplete = this.§#2§;
         this.§-7§.play();
      }
      
      protected function §#2§() : void
      {
         mNextState = this.§7y§();
         this.§1Q§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§1Q§();
         this.setPauseMenuButtonStates(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§96§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §5!+§.§6!§.slingshot.§4D§)
               {
                  AngryBirdsFP11.§^O§.§"!"§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§,<§();
               §8^§.§1!"§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §3V§.§0x§();
               mNextState = this.§5o§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§![§();
               AngryBirdsFP11.§`1§(_loc4_);
               §>2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§5!+§.§4!!§();
               §5!+§.§#U§(_loc5_);
               §>2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
      
      protected function §7y§() : String
      {
         return StatePlay.§"Z§;
      }
      
      protected function §,<§() : String
      {
         return §8^§.§"Z§;
      }
      
      protected function §5o§() : String
      {
         return §!!6§.§"Z§;
      }
   }
}
