package §;H§
{
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §2_§.§>-§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   
   public class §-!X§ extends §,!E§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §"!s§:String = "PauseState";
       
      
      protected var §<!K§:§!q§ = null;
      
      public function §-!X§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §^!c§.§5!Y§.background.§5!e§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §&!m§.getItemByName("Button_Help").setVisibility(false);
         §&!m§.getItemByName("Button_Sound").setVisibility(false);
         §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §3!1§() : void
      {
         if(this.§<!K§)
         {
            this.§<!K§.stop();
            this.§<!K§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§%n§ != null)
         {
            (§&!m§.getItemByName("TextField_LevelName") as §?!x§).§,!F§.text = LevelManager.§%n§;
         }
         (§&!m§.getItemByName("Container_PauseMenu") as §#?§).x = OFFSCREEN_X;
         this.§3$§(false);
         §^!c§.pause();
         §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§0!b§());
         this.§3!1§();
         this.§<!K§ = §-!,§.§7!j§.§+B§(§-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_PauseMenu") as §#?§,{"x":0},null,0.25),§-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_DarkBG") as §1!=§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§<!K§.onComplete = this.§^!-§;
         this.§<!K§.play();
      }
      
      protected function §^!-§() : void
      {
         this.§3$§(true);
         this.§3!1§();
      }
      
      protected function §3$§(param1:Boolean) : void
      {
         (§&!m§.getItemByName("Button_Resume") as §==§).setEnabled(param1);
         (§&!m§.getItemByName("Button_Replay") as §==§).setEnabled(param1);
         (§&!m§.getItemByName("Button_Menu") as §==§).setEnabled(param1);
         (§&!m§.getItemByName("Button_Help") as §==§).setEnabled(param1);
         (§&!m§.getItemByName("Button_Sound") as §==§).setEnabled(param1);
      }
      
      protected function §9!%§(param1:String) : void
      {
         (§&!m§.getItemByName("Button_Resume") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_Help") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_Sound") as §==§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§3!1§();
         this.§<!K§ = §-!,§.§7!j§.§+B§(§-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_PauseMenu") as §#?§,{"x":OFFSCREEN_X},null,0.25),§-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_DarkBG") as §1!=§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§<!K§.onComplete = this.§6!1§;
         this.§<!K§.play();
      }
      
      protected function §6!1§() : void
      {
         mNextState = this.§2!Y§();
         this.§3!1§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§3!1§();
         this.§9!%§(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§>-§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §^!c§.§5!Y§.slingshot.§]!^§)
               {
                  AngryBirdsFP11.sUserProgress.§,!j§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§`[§();
               §;W§.§&!5§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §9'§.§0D§();
               mNextState = this.§`!n§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§0!b§();
               AngryBirdsFP11.§5!C§(_loc4_);
               §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§^!c§.§ !?§();
               §^!c§.§9!p§(_loc5_);
               §&!m§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
      
      protected function §2!Y§() : String
      {
         return StatePlay.§"!s§;
      }
      
      protected function §`[§() : String
      {
         return §;W§.§"!s§;
      }
      
      protected function §`!n§() : String
      {
         return §!y§.§"!s§;
      }
   }
}
