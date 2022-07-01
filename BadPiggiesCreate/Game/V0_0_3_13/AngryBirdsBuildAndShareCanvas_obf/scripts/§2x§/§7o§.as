package §2x§
{
   import § K§.§6"4§;
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import §#!8§.§&!'§;
   import §-!+§.§6"6§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §07§.§^P§;
   import §1!5§.§1&§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §7[§.§0!`§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §?I§.§-!b§;
   import §^^§.§1§;
   
   public class §7o§ extends §>!T§
   {
      
      private static const §0!c§:Number = -250;
      
      public static const §>H§:String = "PauseStateBS";
       
      
      private var §'[§:§0!`§ = null;
      
      private var §3"<§:§1&§;
      
      public function §7o§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§>H§;
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!U§.§,!E§.background.§&A§();
         this.§4"<§();
      }
      
      private function §4"<§() : void
      {
         if(§^P§.§%#§ != null)
         {
            (§3?§.getItemByName("TextField_LevelName") as §<"-§).§7!n§.text = §^P§.§%#§;
         }
         (§3?§.getItemByName("Container_PauseMenu") as §1H§).x = §0!c§;
         this.§0!3§(false);
         §5!U§.pause();
         §6"6§.§4H§.isPaused = true;
         if(this.§'[§ != null)
         {
            this.§'[§.stop();
         }
         this.§'[§ = §-!b§.§;"=§(§-!b§.§,z§(§3?§.getItemByName("Container_PauseMenu") as §1H§,{"x":0},null,0.25),§-!b§.§,z§((§3?§.getItemByName("MovieClip_DarkBG") as §%!7§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'[§.addEventListener(§6"4§.COMPLETE,this.§]!A§);
         this.§'[§.play();
      }
      
      private function §]!A§(param1:§6"4§) : void
      {
         this.§'[§.removeEventListener(§6"4§.COMPLETE,this.§]!A§);
         this.§0!3§(true);
      }
      
      private function §0!3§(param1:Boolean) : void
      {
         (§3?§.getItemByName("Button_Resume") as §8K§).setEnabled(param1);
         (§3?§.getItemByName("Button_Replay") as §8K§).setEnabled(param1);
         (§3?§.getItemByName("Button_Help") as §8K§).setEnabled(param1);
         (§3?§.getItemByName("Button_Sound") as §8K§).setEnabled(param1);
      }
      
      private function §-!g§() : void
      {
         if(this.§'[§ != null)
         {
            this.§'[§.stop();
         }
         this.§'[§ = §-!b§.§;"=§(§-!b§.§,z§(§3?§.getItemByName("Container_PauseMenu") as §1H§,{"x":§0!c§},null,0.25),§-!b§.§,z§((§3?§.getItemByName("MovieClip_DarkBG") as §%!7§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'[§.addEventListener(§6"4§.COMPLETE,this.§6!C§);
         this.§'[§.play();
      }
      
      protected function §6!C§(param1:§6"4§) : void
      {
         this.§'[§.removeEventListener(§6"4§.COMPLETE,this.§6!C§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §6"6§.§4H§.isPaused = false;
         (§3?§.getItemByName("Button_Resume") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3?§.getItemByName("Button_Replay") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3?§.getItemByName("Button_Help") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3?§.getItemByName("Button_Sound") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§3"<§ = new §1&§(§3?§,§,!h§.§`C§.Views.PopupView_PlayHelp[0]);
               this.§3"<§.open();
               break;
            case "HELP_CLOSE":
               this.§3"<§.close();
               §5!U§.pause();
               break;
            case "RESTART_LEVEL":
               mNextState = §1§.§>H§;
               §1§.§+!u§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.§-!g§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               if(_loc4_)
               {
                  (§3?§.getItemByName("Button_Sound") as §8K§).setComponentState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§3?§.getItemByName("Button_Sound") as §8K§).setComponentState(§""3§.§!`§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§5!U§.§7!A§();
               §5!U§.§ 5§(_loc5_);
               §3?§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §&!'§.doJsCall("onFullscreenToggle");
               break;
            case "MENU":
               §&!'§.doJsCall("onLevelMenuOpened");
               mNextState = §!!6§.§>H§;
               §5;§.§8X§();
         }
      }
   }
}
