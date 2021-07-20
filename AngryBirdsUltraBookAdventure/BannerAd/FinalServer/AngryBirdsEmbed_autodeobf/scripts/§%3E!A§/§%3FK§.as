package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §?b§.§+$§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   
   public class §?K§ extends §#!,§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §?x§:String = "PauseState";
       
      
      protected var §function§:§?!3§ = null;
      
      public function §?K§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §[k§.§&@§.background.§]I§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §[=§.getItemByName("Button_Help").setVisibility(false);
         §[=§.getItemByName("Button_Sound").setVisibility(false);
         §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §+]§() : void
      {
         if(this.§function§)
         {
            this.§function§.stop();
            this.§function§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§5j§.§%V§ != null)
         {
            (§[=§.getItemByName("TextField_LevelName") as §3D§).§7=§.text = §5j§.§%V§;
         }
         (§[=§.getItemByName("Container_PauseMenu") as §3C§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[k§.pause();
         §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§,`§());
         this.§+]§();
         this.§function§ = §,B§.§^n§.§!g§(§,B§.§^n§.§2E§(§[=§.getItemByName("Container_PauseMenu") as §3C§,{"x":0},null,0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§function§.onComplete = this.§%!1§;
         this.§function§.play();
      }
      
      protected function §%!1§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§+]§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§[=§.getItemByName("Button_Resume") as §?q§).setEnabled(param1);
         (§[=§.getItemByName("Button_Replay") as §?q§).setEnabled(param1);
         (§[=§.getItemByName("Button_Menu") as §?q§).setEnabled(param1);
         (§[=§.getItemByName("Button_Help") as §?q§).setEnabled(param1);
         (§[=§.getItemByName("Button_Sound") as §?q§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§[=§.getItemByName("Button_Resume") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_Menu") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_Help") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_Sound") as §?q§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§+]§();
         this.§function§ = §,B§.§^n§.§!g§(§,B§.§^n§.§2E§(§[=§.getItemByName("Container_PauseMenu") as §3C§,{"x":OFFSCREEN_X},null,0.25),§,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_DarkBG") as §`!6§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§function§.onComplete = this.§?!?§;
         this.§function§.play();
      }
      
      protected function §?!?§() : void
      {
         mNextState = this.§?G§();
         this.§+]§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+]§();
         this.setPauseMenuButtonStates(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§+$§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §[k§.§&@§.slingshot.§,!&§)
               {
                  AngryBirdsFP11.sUserProgress.§@j§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§#! §();
               §,w§.§9!D§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §6I§.§%,§();
               mNextState = this.§"^§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§,`§();
               AngryBirdsFP11.§4C§(_loc4_);
               §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§[k§.§,V§();
               §[k§.§^v§(_loc5_);
               §[=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
      
      protected function §?G§() : String
      {
         return StatePlay.§?x§;
      }
      
      protected function §#! §() : String
      {
         return §,w§.§?x§;
      }
      
      protected function §"^§() : String
      {
         return §5O§.§?x§;
      }
   }
}
