package § true§
{
   import §"!B§.§"t§;
   import §"!B§.§+!9§;
   import §"!B§.§58§;
   import §"!B§.§6!"§;
   import §+[§.§%G§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import §`!4§.§?!M§;
   
   public class §5z§ extends §,!?§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §`W§:String = "PauseState";
       
      
      protected var §&T§:§'a§ = null;
      
      public function §5z§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §[+§.§,!&§.background.§ 8§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §while§.getItemByName("Button_Help").setVisibility(false);
         §while§.getItemByName("Button_Sound").setVisibility(false);
         §while§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §=3§() : void
      {
         if(this.§&T§)
         {
            this.§&T§.stop();
            this.§&T§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§`R§.§7S§ != null)
         {
            (§while§.getItemByName("TextField_LevelName") as §6!"§).§#!B§.text = §`R§.§7S§;
         }
         (§while§.getItemByName("Container_PauseMenu") as §58§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[+§.pause();
         §while§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3!D§());
         this.§=3§();
         this.§&T§ = §-!&§.§;R§.§>!+§(§-!&§.§;R§.§2w§(§while§.getItemByName("Container_PauseMenu") as §58§,{"x":0},null,0.25),§-!&§.§;R§.§2w§((§while§.getItemByName("MovieClip_DarkBG") as §"t§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§&T§.onComplete = this.§3!#§;
         this.§&T§.play();
      }
      
      protected function §3!#§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§=3§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§while§.getItemByName("Button_Resume") as §+!9§).setEnabled(param1);
         (§while§.getItemByName("Button_Replay") as §+!9§).setEnabled(param1);
         (§while§.getItemByName("Button_Menu") as §+!9§).setEnabled(param1);
         (§while§.getItemByName("Button_Help") as §+!9§).setEnabled(param1);
         (§while§.getItemByName("Button_Sound") as §+!9§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§while§.getItemByName("Button_Resume") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_Replay") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_Menu") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_Help") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_Sound") as §+!9§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§=3§();
         this.§&T§ = §-!&§.§;R§.§>!+§(§-!&§.§;R§.§2w§(§while§.getItemByName("Container_PauseMenu") as §58§,{"x":OFFSCREEN_X},null,0.25),§-!&§.§;R§.§2w§((§while§.getItemByName("MovieClip_DarkBG") as §"t§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§&T§.onComplete = this.§=!,§;
         this.§&T§.play();
      }
      
      protected function §=!,§() : void
      {
         mNextState = this.§-!2§();
         this.§=3§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=3§();
         this.setPauseMenuButtonStates(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§?!M§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §[+§.§,!&§.slingshot.§,D§)
               {
                  AngryBirdsFP11.sUserProgress.§+L§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§6F§();
               §case §.§"n§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §%G§.§^R§();
               mNextState = this.§#d§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§3!D§();
               AngryBirdsFP11.§-!A§(_loc4_);
               §while§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§[+§.§1!8§();
               §[+§.§?m§(_loc5_);
               §while§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
      
      protected function §-!2§() : String
      {
         return StatePlay.§`W§;
      }
      
      protected function §6F§() : String
      {
         return §case §.§`W§;
      }
      
      protected function §#d§() : String
      {
         return §&!F§.§`W§;
      }
   }
}
