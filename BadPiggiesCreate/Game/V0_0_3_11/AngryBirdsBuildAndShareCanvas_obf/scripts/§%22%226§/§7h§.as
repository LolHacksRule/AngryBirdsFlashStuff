package §""6§
{
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §1!v§.§!,§;
   import §2!O§.§,w§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   
   public class §7h§ extends §,w§
   {
      
      public static const §]!I§:Number = -250;
      
      public static const §^z§:String = "PauseState";
       
      
      protected var §!J§:§8!K§ = null;
      
      public function §7h§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-!8§();
         §?z§.§=7§.background.§1!9§();
         this.§6j§();
      }
      
      protected function §6j§() : void
      {
         §%""§.getItemByName("Button_Help").setVisibility(false);
         §%""§.getItemByName("Button_Sound").setVisibility(false);
         §%""§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §`!=§() : void
      {
         if(this.§!J§)
         {
            this.§!J§.stop();
            this.§!J§ = null;
         }
      }
      
      protected function §-!8§() : void
      {
         if(§+"%§.§9!'§ != null)
         {
            (§%""§.getItemByName("TextField_LevelName") as § !F§).§1!k§.text = §+"%§.§9!'§;
         }
         (§%""§.getItemByName("Container_PauseMenu") as §;!u§).x = §]!I§;
         this.§6!i§(false);
         §?z§.pause();
         §%""§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         this.§`!=§();
         this.§!J§ = §%!Z§.§if §.§"U§(§%!Z§.§if §.§"<§(§%""§.getItemByName("Container_PauseMenu") as §;!u§,{"x":0},null,0.25),§%!Z§.§if §.§"<§((§%""§.getItemByName("MovieClip_DarkBG") as §%!`§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§!J§.onComplete = this.§0w§;
         this.§!J§.play();
      }
      
      protected function §0w§() : void
      {
         this.§6!i§(true);
         this.§`!=§();
      }
      
      protected function §6!i§(param1:Boolean) : void
      {
         (§%""§.getItemByName("Button_Resume") as §2v§).setEnabled(param1);
         (§%""§.getItemByName("Button_Replay") as §2v§).setEnabled(param1);
         (§%""§.getItemByName("Button_Menu") as §2v§).setEnabled(param1);
         (§%""§.getItemByName("Button_Help") as §2v§).setEnabled(param1);
         (§%""§.getItemByName("Button_Sound") as §2v§).setEnabled(param1);
      }
      
      protected function §";§(param1:String) : void
      {
         (§%""§.getItemByName("Button_Resume") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_Replay") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_Menu") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_Help") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_Sound") as §2v§).setComponentVisualState(param1);
      }
      
      protected function §=!o§() : void
      {
         this.§`!=§();
         this.§!J§ = §%!Z§.§if §.§"U§(§%!Z§.§if §.§"<§(§%""§.getItemByName("Container_PauseMenu") as §;!u§,{"x":§]!I§},null,0.25),§%!Z§.§if §.§"<§((§%""§.getItemByName("MovieClip_DarkBG") as §%!`§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§!J§.onComplete = this.§%$§;
         this.§!J§.play();
      }
      
      protected function §%$§() : void
      {
         mNextState = this.getPlayState();
         this.§`!=§();
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
         this.§`!=§();
         this.§";§(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§!,§ = null;
         switch(param2)
         {
            case "HELP":
               this.§=!o§();
               for each(_loc6_ in §?z§.§=7§.slingshot.mBirds)
               {
                  AngryBirdsFP11.§8!I§.§6!L§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§2!v§();
               §!Z§.§0!f§();
               break;
            case "RESUME_LEVEL":
               this.§=!o§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §0!t§.§,!S§();
               mNextState = this.§%J§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               §%""§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§?z§.§3R§();
               §?z§.§'8§(_loc5_);
               §%""§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§^z§;
      }
      
      protected function §2!v§() : String
      {
         return §!Z§.§^z§;
      }
      
      protected function §%J§() : String
      {
         return §`!%§.§^z§;
      }
   }
}
