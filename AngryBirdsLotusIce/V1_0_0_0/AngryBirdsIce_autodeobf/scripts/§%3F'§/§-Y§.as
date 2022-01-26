package §?'§
{
   import §"o§.§]?§;
   import §%S§.§%X§;
   import §%S§.§,1§;
   import §%S§.§7g§;
   import §%S§.§;!5§;
   import §+N§.§!j§;
   import §+N§.§]G§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §`<§.§,!6§;
   import §in§.§%K§;
   import §in§.§9c§;
   
   public class §-Y§ extends §,!6§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §`%§:String = "PauseState";
       
      
      protected var §'a§:§]G§ = null;
      
      public function §-Y§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §8[§.§import§.background.§^Y§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §<o§.getItemByName("Button_Help").setVisibility(false);
         §<o§.getItemByName("Button_Sound").setVisibility(false);
         §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §@t§() : void
      {
         if(this.§'a§)
         {
            this.§'a§.stop();
            this.§'a§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§&#§.§<Y§ != null)
         {
            (§<o§.getItemByName("TextField_LevelName") as §7g§).§1p§.text = §&#§.§<Y§;
         }
         (§<o§.getItemByName("Container_PauseMenu") as §,1§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §8[§.pause();
         §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"]§());
         this.§@t§();
         this.§'a§ = §!j§.§5!B§.§!a§(§!j§.§5!B§.§+I§(§<o§.getItemByName("Container_PauseMenu") as §,1§,{"x":0},null,0.25),§!j§.§5!B§.§+I§((§<o§.getItemByName("MovieClip_DarkBG") as §;!5§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'a§.onComplete = this.§ 5§;
         this.§'a§.play();
      }
      
      protected function § 5§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§@t§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§<o§.getItemByName("Button_Resume") as §%X§).setEnabled(param1);
         (§<o§.getItemByName("Button_Replay") as §%X§).setEnabled(param1);
         (§<o§.getItemByName("Button_Menu") as §%X§).setEnabled(param1);
         (§<o§.getItemByName("Button_Help") as §%X§).setEnabled(param1);
         (§<o§.getItemByName("Button_Sound") as §%X§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§<o§.getItemByName("Button_Resume") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Replay") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Menu") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Help") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Sound") as §%X§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§@t§();
         this.§'a§ = §!j§.§5!B§.§!a§(§!j§.§5!B§.§+I§(§<o§.getItemByName("Container_PauseMenu") as §,1§,{"x":OFFSCREEN_X},null,0.25),§!j§.§5!B§.§+I§((§<o§.getItemByName("MovieClip_DarkBG") as §;!5§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'a§.onComplete = this.§%7§;
         this.§'a§.play();
      }
      
      protected function §%7§() : void
      {
         mNextState = this.§+!§();
         this.§@t§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@t§();
         this.setPauseMenuButtonStates(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§]?§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §8[§.§import§.slingshot.§0A§)
               {
                  AngryBirdsFP11.§[l§.§=$§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§0,§();
               §`0§.§#T§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §2;§.§'T§();
               mNextState = this.§#F§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§"]§();
               AngryBirdsFP11.§2t§(_loc4_);
               §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§8[§.§ set§();
               §8[§.§"3§(_loc5_);
               §<o§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
      
      protected function §+!§() : String
      {
         return StatePlay.§`%§;
      }
      
      protected function §0,§() : String
      {
         return §`0§.§`%§;
      }
      
      protected function §#F§() : String
      {
         return §8m§.§`%§;
      }
   }
}
