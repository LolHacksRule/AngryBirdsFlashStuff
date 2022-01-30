package §^U§
{
   import §#";§.§0"#§;
   import §%!j§.§%K§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §-"'§.§&"#§;
   import §-y§.§]D§;
   import §05§.§?s§;
   import §5u§.§-"#§;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import §]6§.§[f§;
   import §^!1§.§`!N§;
   
   public class §4!T§ extends §'B§
   {
      
      private static const §0"1§:Number = -250;
      
      public static const §%!Q§:String = "PauseStateBS";
       
      
      private var §0H§:§[f§ = null;
      
      private var §#!q§:§&"#§;
      
      public function §4!T§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§%!Q§;
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'_§.§=M§.background.§?!e§();
         this.§94§();
      }
      
      private function §94§() : void
      {
         if(§-"#§.§!#§ != null)
         {
            (§`!v§.getItemByName("TextField_LevelName") as §!!]§).§<!g§.text = §-"#§.§!#§;
         }
         (§`!v§.getItemByName("Container_PauseMenu") as §6W§).x = §0"1§;
         this.§'!N§(false);
         §'_§.pause();
         §%K§.§^!d§.isPaused = true;
         if(this.§0H§ != null)
         {
            this.§0H§.stop();
         }
         this.§0H§ = §]D§.§2!r§(§]D§.§@! §(§`!v§.getItemByName("Container_PauseMenu") as §6W§,{"x":0},null,0.25),§]D§.§@! §((§`!v§.getItemByName("MovieClip_DarkBG") as §@u§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§0H§.addEventListener(§`!N§.COMPLETE,this.§<!b§);
         this.§0H§.play();
      }
      
      private function §<!b§(param1:§`!N§) : void
      {
         this.§0H§.removeEventListener(§`!N§.COMPLETE,this.§<!b§);
         this.§'!N§(true);
      }
      
      private function §'!N§(param1:Boolean) : void
      {
         (§`!v§.getItemByName("Button_Resume") as §9"8§).setEnabled(param1);
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setEnabled(param1);
         (§`!v§.getItemByName("Button_Help") as §9"8§).setEnabled(param1);
         (§`!v§.getItemByName("Button_Sound") as §9"8§).setEnabled(param1);
      }
      
      private function §[!,§() : void
      {
         if(this.§0H§ != null)
         {
            this.§0H§.stop();
         }
         this.§0H§ = §]D§.§2!r§(§]D§.§@! §(§`!v§.getItemByName("Container_PauseMenu") as §6W§,{"x":§0"1§},null,0.25),§]D§.§@! §((§`!v§.getItemByName("MovieClip_DarkBG") as §@u§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§0H§.addEventListener(§`!N§.COMPLETE,this.§>!L§);
         this.§0H§.play();
      }
      
      protected function §>!L§(param1:§`!N§) : void
      {
         this.§0H§.removeEventListener(§`!N§.COMPLETE,this.§>!L§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §%K§.§^!d§.isPaused = false;
         (§`!v§.getItemByName("Button_Resume") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`!v§.getItemByName("Button_Help") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`!v§.getItemByName("Button_Sound") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§#!q§ = new §&"#§(§`!v§,§]!M§.§"!V§.Views.PopupView_PlayHelp[0]);
               this.§#!q§.open();
               break;
            case "HELP_CLOSE":
               this.§#!q§.close();
               §'_§.pause();
               break;
            case "RESTART_LEVEL":
               mNextState = §@"0§.§%!Q§;
               §@"0§.§%P§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.§[!,§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               if(_loc4_)
               {
                  (§`!v§.getItemByName("Button_Sound") as §9"8§).setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§`!v§.getItemByName("Button_Sound") as §9"8§).setComponentState(§>!D§.§;!M§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§'_§.§&R§();
               §'_§.§?R§(_loc5_);
               §`!v§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §?s§.doJsCall("onFullscreenToggle");
               break;
            case "MENU":
               §?s§.doJsCall("onLevelMenuOpened");
               mNextState = §&y§.§%!Q§;
               §0"#§.§4"#§();
         }
      }
   }
}
