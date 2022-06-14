package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §9"!§.§;!M§;
   import §]!A§.;
   
   public class §7l§ extends §1-§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §+;§:§"m§ = null;
      
      public function §7l§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §#6§.§6!z§.background.§^!P§();
         this.§@!-§();
      }
      
      protected function §@!-§() : void
      {
         §6w§.getItemByName("Button_Help").setVisibility(false);
         §6w§.getItemByName("Button_Sound").setVisibility(false);
         §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §7%§() : void
      {
         if(this.§+;§)
         {
            this.§+;§.stop();
            this.§+;§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§'!O§ != null)
         {
            (§6w§.getItemByName("TextField_LevelName") as §-"E§).§5!=§.text = LevelManager.§'!O§;
         }
         (§6w§.getItemByName("Container_PauseMenu") as §08§).x = OFFSCREEN_X;
         this.§'d§(false);
         §#6§.pause();
         §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3>§());
         this.§7%§();
         this.§+;§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_PauseMenu") as §08§,{"x":0},null,0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_DarkBG") as §7"-§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§+;§.onComplete = this.§4R§;
         this.§+;§.play();
      }
      
      protected function §4R§() : void
      {
         this.§'d§(true);
         this.§7%§();
      }
      
      protected function §'d§(param1:Boolean) : void
      {
         (§6w§.getItemByName("Button_Resume") as §^!D§).setEnabled(param1);
         (§6w§.getItemByName("Button_Replay") as §^!D§).setEnabled(param1);
         (§6w§.getItemByName("Button_Menu") as §^!D§).setEnabled(param1);
         (§6w§.getItemByName("Button_Help") as §^!D§).setEnabled(param1);
         (§6w§.getItemByName("Button_Sound") as §^!D§).setEnabled(param1);
      }
      
      protected function §0l§(param1:String) : void
      {
         (§6w§.getItemByName("Button_Resume") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_Replay") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_Menu") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_Help") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_Sound") as §^!D§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§7%§();
         this.§+;§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_PauseMenu") as §08§,{"x":OFFSCREEN_X},null,0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_DarkBG") as §7"-§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§+;§.onComplete = this.§&!%§;
         this.§+;§.play();
      }
      
      protected function §&!%§() : void
      {
         mNextState = this.getPlayState();
         this.§7%§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7%§();
         this.§0l§(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§;!M§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §#6§.§6!z§.slingshot.§ L§)
               {
                  AngryBirdsFP11.sUserProgress.§5x§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.getLevelLoadState();
               §!!7§.§-V§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §>!E§.§&!^§();
               mNextState = this.getLevelSelectionState();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§3>§();
               AngryBirdsFP11.§@i§(_loc4_);
               §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§#6§.§&9§();
               §#6§.§'h§(_loc5_);
               §6w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §8"D§.STATE_NAME;
      }
   }
}
