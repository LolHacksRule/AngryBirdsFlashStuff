package §^U§
{
   import §#";§.§0"#§;
   import §%!0§.§%Q§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   
   public class §@!y§ extends §'B§
   {
      
      public static const §0"1§:Number = -250;
      
      public static const §%!Q§:String = "PauseState";
       
      
      protected var §0H§:§=!r§ = null;
      
      public function §@!y§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§94§();
         §'_§.§=M§.background.§?!e§();
         this.§<Z§();
      }
      
      protected function §<Z§() : void
      {
         §`!v§.getItemByName("Button_Help").setVisibility(false);
         §`!v§.getItemByName("Button_Sound").setVisibility(false);
         §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §'I§() : void
      {
         if(this.§0H§)
         {
            this.§0H§.stop();
            this.§0H§ = null;
         }
      }
      
      protected function §94§() : void
      {
         if(§`!r§.§0B§ != null)
         {
            (§`!v§.getItemByName("TextField_LevelName") as §!!]§).§<!g§.text = §`!r§.§0B§;
         }
         (§`!v§.getItemByName("Container_PauseMenu") as §6W§).x = §0"1§;
         this.§'!N§(false);
         §'_§.pause();
         §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         this.§'I§();
         this.§0H§ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(§`!v§.getItemByName("Container_PauseMenu") as §6W§,{"x":0},null,0.25),§7I§.§[E§.§ ";§((§`!v§.getItemByName("MovieClip_DarkBG") as §@u§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§0H§.onComplete = this.§<!b§;
         this.§0H§.play();
      }
      
      protected function §<!b§() : void
      {
         this.§'!N§(true);
         this.§'I§();
      }
      
      protected function §'!N§(param1:Boolean) : void
      {
         (§`!v§.getItemByName("Button_Resume") as §9"8§).setEnabled(param1);
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setEnabled(param1);
         (§`!v§.getItemByName("Button_Menu") as §9"8§).setEnabled(param1);
         (§`!v§.getItemByName("Button_Help") as §9"8§).setEnabled(param1);
         (§`!v§.getItemByName("Button_Sound") as §9"8§).setEnabled(param1);
      }
      
      protected function §!!§(param1:String) : void
      {
         (§`!v§.getItemByName("Button_Resume") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_Menu") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_Help") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_Sound") as §9"8§).setComponentVisualState(param1);
      }
      
      protected function §[!,§() : void
      {
         this.§'I§();
         this.§0H§ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(§`!v§.getItemByName("Container_PauseMenu") as §6W§,{"x":§0"1§},null,0.25),§7I§.§[E§.§ ";§((§`!v§.getItemByName("MovieClip_DarkBG") as §@u§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§0H§.onComplete = this.§>!L§;
         this.§0H§.play();
      }
      
      protected function §>!L§() : void
      {
         mNextState = this.getPlayState();
         this.§'I§();
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
         this.§'I§();
         this.§!!§(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§%Q§ = null;
         switch(param2)
         {
            case "HELP":
               this.§[!,§();
               for each(_loc6_ in §'_§.§=M§.slingshot.mBirds)
               {
                  AngryBirdsFP11.§>!7§.§^!l§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§"!0§();
               §`!;§.§%P§();
               break;
            case "RESUME_LEVEL":
               this.§[!,§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §0"#§.§4"#§();
               mNextState = this.§>!9§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§'_§.§&R§();
               §'_§.§?R§(_loc5_);
               §`!v§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§%!Q§;
      }
      
      protected function §"!0§() : String
      {
         return §`!;§.§%!Q§;
      }
      
      protected function §>!9§() : String
      {
         return §1!i§.§%!Q§;
      }
   }
}
