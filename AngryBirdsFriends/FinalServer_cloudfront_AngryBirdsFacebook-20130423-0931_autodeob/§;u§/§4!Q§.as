package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§ !X§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §4!Q§ extends §+d§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §-"L§:§6!K§ = null;
      
      public function §4!Q§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §?l§.§'h§.background.§!!K§();
         this.§#!'§();
      }
      
      protected function §#!'§() : void
      {
         §2"@§.getItemByName("Button_Help").setVisibility(false);
         §2"@§.getItemByName("Button_Sound").setVisibility(false);
         §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §0`§() : void
      {
         if(this.§-"L§)
         {
            this.§-"L§.stop();
            this.§-"L§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§ T§ != null)
         {
            (§2"@§.getItemByName("TextField_LevelName") as §4"9§).§-" §.text = LevelManager.§ T§;
         }
         (§2"@§.getItemByName("Container_PauseMenu") as §0!Y§).x = OFFSCREEN_X;
         this.§&"$§(false);
         §?l§.pause();
         §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§6!,§());
         this.§0`§();
         this.§-"L§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_PauseMenu") as §0!Y§,{"x":0},null,0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_DarkBG") as §^n§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§-"L§.onComplete = this.§!"Y§;
         this.§-"L§.play();
      }
      
      protected function §!"Y§() : void
      {
         this.§&"$§(true);
         this.§0`§();
      }
      
      protected function §&"$§(param1:Boolean) : void
      {
         (§2"@§.getItemByName("Button_Resume") as §7"0§).setEnabled(param1);
         (§2"@§.getItemByName("Button_Replay") as §7"0§).setEnabled(param1);
         (§2"@§.getItemByName("Button_Menu") as §7"0§).setEnabled(param1);
         (§2"@§.getItemByName("Button_Help") as §7"0§).setEnabled(param1);
         (§2"@§.getItemByName("Button_Sound") as §7"0§).setEnabled(param1);
      }
      
      protected function §1!i§(param1:String) : void
      {
         (§2"@§.getItemByName("Button_Resume") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_Replay") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_Menu") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_Help") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_Sound") as §7"0§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§0`§();
         this.§-"L§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_PauseMenu") as §0!Y§,{"x":OFFSCREEN_X},null,0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_DarkBG") as §^n§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§-"L§.onComplete = this.§,"X§;
         this.§-"L§.play();
      }
      
      protected function §,"X§() : void
      {
         mNextState = this.getPlayState();
         this.§0`§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0`§();
         this.§1!i§(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§ !X§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §?l§.§'h§.slingshot.§9!L§)
               {
                  AngryBirdsFP11.sUserProgress.§?!q§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.getLevelLoadState();
               §-!v§.§^!$§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §@"M§.§3!s§();
               mNextState = this.getLevelSelectionState();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§6!,§();
               AngryBirdsFP11.§]"H§(_loc4_);
               §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§?l§.§'!R§();
               §?l§.§%"7§(_loc5_);
               §2"@§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §9"@§.STATE_NAME;
      }
   }
}
