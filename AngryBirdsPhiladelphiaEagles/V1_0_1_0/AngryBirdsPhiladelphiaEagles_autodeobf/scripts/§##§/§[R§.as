package §##§
{
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §5=§.§^n§;
   import §=8§.§&H§;
   import §=8§.§'^§;
   import §=8§.§,!%§;
   import §=8§.dynamic;
   import §>2§.§#!<§;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   
   public class §[R§ extends §6!M§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §=,§:String = "PauseState";
       
      
      protected var §8!M§:§]H§ = null;
      
      public function §[R§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §2G§.§7!,§.background.§5!"§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         § §.getItemByName("Button_Help").setVisibility(false);
         § §.getItemByName("Button_Sound").setVisibility(false);
         § §.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §;S§() : void
      {
         if(this.§8!M§)
         {
            this.§8!M§.stop();
            this.§8!M§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§^n§.§-7§ != null)
         {
            (§ §.getItemByName("TextField_LevelName") as §&H§).§%!"§.text = §^n§.§-7§;
         }
         (§ §.getItemByName("Container_PauseMenu") as §'^§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §2G§.pause();
         § §.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"7§());
         this.§;S§();
         this.§8!M§ = §<t§.§4J§.§;!0§(§<t§.§4J§.§#q§(§ §.getItemByName("Container_PauseMenu") as §'^§,{"x":0},null,0.25),§<t§.§4J§.§#q§((§ §.getItemByName("MovieClip_DarkBG") as §,!%§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§8!M§.onComplete = this.§[9§;
         this.§8!M§.play();
      }
      
      protected function §[9§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§;S§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§ §.getItemByName("Button_Resume") as dynamic).setEnabled(param1);
         (§ §.getItemByName("Button_Replay") as dynamic).setEnabled(param1);
         (§ §.getItemByName("Button_Menu") as dynamic).setEnabled(param1);
         (§ §.getItemByName("Button_Help") as dynamic).setEnabled(param1);
         (§ §.getItemByName("Button_Sound") as dynamic).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§ §.getItemByName("Button_Resume") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Replay") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Menu") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Help") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Sound") as dynamic).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§;S§();
         this.§8!M§ = §<t§.§4J§.§;!0§(§<t§.§4J§.§#q§(§ §.getItemByName("Container_PauseMenu") as §'^§,{"x":OFFSCREEN_X},null,0.25),§<t§.§4J§.§#q§((§ §.getItemByName("MovieClip_DarkBG") as §,!%§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§8!M§.onComplete = this.§&!4§;
         this.§8!M§.play();
      }
      
      protected function §&!4§() : void
      {
         mNextState = this.§>L§();
         this.§;S§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;S§();
         this.setPauseMenuButtonStates(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§#!<§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §2G§.§7!,§.slingshot.§^j§)
               {
                  AngryBirdsFP11.§ ;§.§6&§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§2!>§();
               §6l§.§"w§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §9k§.§return§();
               mNextState = this.§3a§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§"7§();
               AngryBirdsFP11.§<!H§(_loc4_);
               § §.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§2G§.§6y§();
               §2G§.§38§(_loc5_);
               § §.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
      
      protected function §>L§() : String
      {
         return StatePlay.§=,§;
      }
      
      protected function §2!>§() : String
      {
         return §6l§.§=,§;
      }
      
      protected function §3a§() : String
      {
         return §5!E§.§=,§;
      }
   }
}
