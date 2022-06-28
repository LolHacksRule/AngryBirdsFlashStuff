package §2!U§
{
   import §"!i§.LevelManager;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §40§.§<!P§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   
   public class §@!A§ extends §9![§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §'!q§:String = "PauseState";
       
      
      protected var § !d§:§^v§ = null;
      
      public function §@!A§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §,!s§.§=!I§.background.§4!=§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §'!Q§.getItemByName("Button_Help").setVisibility(false);
         §'!Q§.getItemByName("Button_Sound").setVisibility(false);
         §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §%!!§() : void
      {
         if(this.§ !d§)
         {
            this.§ !d§.stop();
            this.§ !d§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§"L§ != null)
         {
            (§'!Q§.getItemByName("TextField_LevelName") as §54§).§5!B§.text = LevelManager.§"L§;
         }
         (§'!Q§.getItemByName("Container_PauseMenu") as §^! §).x = OFFSCREEN_X;
         this.§3^§(false);
         §,!s§.pause();
         §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"C§());
         this.§%!!§();
         this.§ !d§ = §`!G§.§[U§.§`h§(§`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_PauseMenu") as §^! §,{"x":0},null,0.25),§`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_DarkBG") as §7!p§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§ !d§.onComplete = this.§^R§;
         this.§ !d§.play();
      }
      
      protected function §^R§() : void
      {
         this.§3^§(true);
         this.§%!!§();
      }
      
      protected function §3^§(param1:Boolean) : void
      {
         (§'!Q§.getItemByName("Button_Resume") as §[!i§).setEnabled(param1);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setEnabled(param1);
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setEnabled(param1);
         (§'!Q§.getItemByName("Button_Help") as §[!i§).setEnabled(param1);
         (§'!Q§.getItemByName("Button_Sound") as §[!i§).setEnabled(param1);
      }
      
      protected function §-@§(param1:String) : void
      {
         (§'!Q§.getItemByName("Button_Resume") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_Help") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_Sound") as §[!i§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§%!!§();
         this.§ !d§ = §`!G§.§[U§.§`h§(§`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_PauseMenu") as §^! §,{"x":OFFSCREEN_X},null,0.25),§`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_DarkBG") as §7!p§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§ !d§.onComplete = this.§7g§;
         this.§ !d§.play();
      }
      
      protected function §7g§() : void
      {
         mNextState = this.§>!A§();
         this.§%!!§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§%!!§();
         this.§-@§(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§<!P§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §,!s§.§=!I§.slingshot.§ Y§)
               {
                  AngryBirdsFP11.sUserProgress.§0^§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§[!Q§();
               §3!;§.§0!1§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §-!Q§.§4!$§();
               mNextState = this.§8!X§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§"C§();
               AngryBirdsFP11.§]!G§(_loc4_);
               §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§,!s§.§^@§();
               §,!s§.§'6§(_loc5_);
               §'!Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
      
      protected function §>!A§() : String
      {
         return StatePlay.§'!q§;
      }
      
      protected function §[!Q§() : String
      {
         return §3!;§.§'!q§;
      }
      
      protected function §8!X§() : String
      {
         return §2!=§.§'!q§;
      }
   }
}
