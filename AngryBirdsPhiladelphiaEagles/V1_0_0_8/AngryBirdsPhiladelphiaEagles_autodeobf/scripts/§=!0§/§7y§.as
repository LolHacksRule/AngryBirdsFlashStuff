package §=!0§
{
   import §!t§.§5b§;
   import §!t§.§;1§;
   import §!t§.§>B§;
   import §!t§.§?g§;
   import §,!1§.§]e§;
   import §,T§.§4!<§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   
   public class §7y§ extends §-!,§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §@§:String = "PauseState";
       
      
      protected var §3!I§:§!l§ = null;
      
      public function §7y§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §0!E§.§9!B§.background.§?4§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §;I§.getItemByName("Button_Help").setVisibility(false);
         §;I§.getItemByName("Button_Sound").setVisibility(false);
         §;I§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function § !>§() : void
      {
         if(this.§3!I§)
         {
            this.§3!I§.stop();
            this.§3!I§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§&u§.§ !+§ != null)
         {
            (§;I§.getItemByName("TextField_LevelName") as §>B§).§ !$§.text = §&u§.§ !+§;
         }
         (§;I§.getItemByName("Container_PauseMenu") as §;1§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §0!E§.pause();
         §;I§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§?!L§());
         this.§ !>§();
         this.§3!I§ = §5!&§.§@!&§.§?!D§(§5!&§.§@!&§.§9!4§(§;I§.getItemByName("Container_PauseMenu") as §;1§,{"x":0},null,0.25),§5!&§.§@!&§.§9!4§((§;I§.getItemByName("MovieClip_DarkBG") as §?g§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§3!I§.onComplete = this.§1[§;
         this.§3!I§.play();
      }
      
      protected function §1[§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§ !>§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§;I§.getItemByName("Button_Resume") as §5b§).setEnabled(param1);
         (§;I§.getItemByName("Button_Replay") as §5b§).setEnabled(param1);
         (§;I§.getItemByName("Button_Menu") as §5b§).setEnabled(param1);
         (§;I§.getItemByName("Button_Help") as §5b§).setEnabled(param1);
         (§;I§.getItemByName("Button_Sound") as §5b§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§;I§.getItemByName("Button_Resume") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Replay") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Menu") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Help") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Sound") as §5b§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§ !>§();
         this.§3!I§ = §5!&§.§@!&§.§?!D§(§5!&§.§@!&§.§9!4§(§;I§.getItemByName("Container_PauseMenu") as §;1§,{"x":OFFSCREEN_X},null,0.25),§5!&§.§@!&§.§9!4§((§;I§.getItemByName("MovieClip_DarkBG") as §?g§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§3!I§.onComplete = this.§]x§;
         this.§3!I§.play();
      }
      
      protected function §]x§() : void
      {
         mNextState = this.§;!=§();
         this.§ !>§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ !>§();
         this.setPauseMenuButtonStates(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§4!<§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §0!E§.§9!B§.slingshot.§3h§)
               {
                  AngryBirdsFP11.§5@§.§'!L§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§8U§();
               §1!F§.§4W§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §]e§.§>$§();
               mNextState = this.§6R§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§?!L§();
               AngryBirdsFP11.§6x§(_loc4_);
               §;I§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§0!E§.§5H§();
               §0!E§.§!_§(_loc5_);
               §;I§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
      
      protected function §;!=§() : String
      {
         return StatePlay.§@§;
      }
      
      protected function §8U§() : String
      {
         return §1!F§.§@§;
      }
      
      protected function §6R§() : String
      {
         return §?!G§.§@§;
      }
   }
}
