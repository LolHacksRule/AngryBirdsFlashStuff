package §""6§
{
   import § J§.§6"6§;
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §,Q§.§="2§;
   import §0P§.§!!l§;
   import §1g§.§4T§;
   import §2!O§.§,w§;
   import §4s§.§>P§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;!K§.§-`§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §?!k§.§0!t§;
   import §[!G§.§>,§;
   import §]X§.§<!-§;
   
   public class §!"1§ extends §,w§
   {
      
      private static const §]!I§:Number = -250;
      
      public static const §^z§:String = "PauseStateBS";
       
      
      private var §!J§:§>P§ = null;
      
      private var §@P§:§4T§;
      
      public function §!"1§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§^z§;
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §?z§.§=7§.background.§1!9§();
         this.§-!8§();
      }
      
      private function §-!8§() : void
      {
         if(§<!-§.§4!^§ != null)
         {
            (§%""§.getItemByName("TextField_LevelName") as § !F§).§1!k§.text = §<!-§.§4!^§;
         }
         (§%""§.getItemByName("Container_PauseMenu") as §;!u§).x = §]!I§;
         this.§6!i§(false);
         §?z§.pause();
         §!!l§.§]<§.isPaused = true;
         if(this.§!J§ != null)
         {
            this.§!J§.stop();
         }
         this.§!J§ = §-`§.§0!o§(§-`§.§4!E§(§%""§.getItemByName("Container_PauseMenu") as §;!u§,{"x":0},null,0.25),§-`§.§4!E§((§%""§.getItemByName("MovieClip_DarkBG") as §%!`§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§!J§.addEventListener(§>,§.COMPLETE,this.§0w§);
         this.§!J§.play();
      }
      
      private function §0w§(param1:§>,§) : void
      {
         this.§!J§.removeEventListener(§>,§.COMPLETE,this.§0w§);
         this.§6!i§(true);
      }
      
      private function §6!i§(param1:Boolean) : void
      {
         (§%""§.getItemByName("Button_Resume") as §2v§).setEnabled(param1);
         (§%""§.getItemByName("Button_Replay") as §2v§).setEnabled(param1);
         (§%""§.getItemByName("Button_Help") as §2v§).setEnabled(param1);
         (§%""§.getItemByName("Button_Sound") as §2v§).setEnabled(param1);
      }
      
      private function §=!o§() : void
      {
         if(this.§!J§ != null)
         {
            this.§!J§.stop();
         }
         this.§!J§ = §-`§.§0!o§(§-`§.§4!E§(§%""§.getItemByName("Container_PauseMenu") as §;!u§,{"x":§]!I§},null,0.25),§-`§.§4!E§((§%""§.getItemByName("MovieClip_DarkBG") as §%!`§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§!J§.addEventListener(§>,§.COMPLETE,this.§%$§);
         this.§!J§.play();
      }
      
      protected function §%$§(param1:§>,§) : void
      {
         this.§!J§.removeEventListener(§>,§.COMPLETE,this.§%$§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §!!l§.§]<§.isPaused = false;
         (§%""§.getItemByName("Button_Resume") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%""§.getItemByName("Button_Replay") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%""§.getItemByName("Button_Help") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%""§.getItemByName("Button_Sound") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§@P§ = new §4T§(§%""§,§8!O§.§'!J§.Views.PopupView_PlayHelp[0]);
               this.§@P§.open();
               break;
            case "HELP_CLOSE":
               this.§@P§.close();
               §?z§.pause();
               break;
            case "RESTART_LEVEL":
               mNextState = §6"6§.§^z§;
               §6"6§.§0!f§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.§=!o§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               if(_loc4_)
               {
                  (§%""§.getItemByName("Button_Sound") as §2v§).setComponentState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§%""§.getItemByName("Button_Sound") as §2v§).setComponentState(§"r§.§5!D§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§?z§.§3R§();
               §?z§.§'8§(_loc5_);
               §%""§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §="2§.doJsCall("onFullscreenToggle");
               break;
            case "MENU":
               §="2§.doJsCall("onLevelMenuOpened");
               mNextState = §1f§.§^z§;
               §0!t§.§,!S§();
         }
      }
   }
}
