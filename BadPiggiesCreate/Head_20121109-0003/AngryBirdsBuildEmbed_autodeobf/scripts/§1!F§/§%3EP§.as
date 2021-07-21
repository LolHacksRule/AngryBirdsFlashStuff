package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §1?§.§+!§;
   import §1j§.§=q§;
   import §2!s§.§>!D§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!4§.§=Y§;
   import §@!X§.§7j§;
   import §@!i§.§@!n§;
   import §]!q§.§=;§;
   import §false§.§0!4§;
   
   public class §>P§ extends §;!!§
   {
      
      private static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseStateBS";
       
      
      private var §%!&§:§=Y§ = null;
      
      private var §&!E§:§0!4§;
      
      public function §>P§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.STATE_NAME;
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!V§.§1!2§.background.§8!n§();
         this.openPauseMenu();
      }
      
      private function openPauseMenu() : void
      {
         if(§=q§.§+!T§ != null)
         {
            (§+!$§.getItemByName("TextField_LevelName") as §;!j§).§!D§.text = §=q§.§+!T§;
         }
         (§+!$§.getItemByName("Container_PauseMenu") as §[!s§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §'!V§.pause();
         §7j§.§&t§.§=!A§ = true;
         if(this.§%!&§ != null)
         {
            this.§%!&§.stop();
         }
         this.§%!&§ = §>!D§.§+a§(§>!D§.§-8§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":0},null,0.25),§>!D§.§-8§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§%!&§.addEventListener(§=;§.COMPLETE,this.§[!e§);
         this.§%!&§.play();
      }
      
      private function §[!e§(param1:§=;§) : void
      {
         this.§%!&§.removeEventListener(§=;§.COMPLETE,this.§[!e§);
         this.setPauseMenuButtonsEnabled(true);
      }
      
      private function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§+!$§.getItemByName("Button_Resume") as §#!'§).setEnabled(param1);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setEnabled(param1);
         (§+!$§.getItemByName("Button_Help") as §#!'§).setEnabled(param1);
         (§+!$§.getItemByName("Button_Sound") as §#!'§).setEnabled(param1);
      }
      
      private function closePauseMenu() : void
      {
         if(this.§%!&§ != null)
         {
            this.§%!&§.stop();
         }
         this.§%!&§ = §>!D§.§+a§(§>!D§.§-8§(§+!$§.getItemByName("Container_PauseMenu") as §[!s§,{"x":OFFSCREEN_X},null,0.25),§>!D§.§-8§((§+!$§.getItemByName("MovieClip_DarkBG") as §%O§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§%!&§.addEventListener(§=;§.COMPLETE,this.§7!T§);
         this.§%!&§.play();
      }
      
      protected function §7!T§(param1:§=;§) : void
      {
         this.§%!&§.removeEventListener(§=;§.COMPLETE,this.§7!T§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §7j§.§&t§.§=!A§ = false;
         (§+!$§.getItemByName("Button_Resume") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!$§.getItemByName("Button_Help") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!$§.getItemByName("Button_Sound") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§&!E§ = new §0!4§(§+!$§,§=!Z§.§;K§.Views.PopupView_PlayHelp[0]);
               this.§&!E§.open();
               break;
            case "HELP_CLOSE":
               this.§&!E§.close();
               break;
            case "RESTART_LEVEL":
               mNextState = §@!n§.STATE_NAME;
               §@!n§.§!=§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§;!f§();
               AngryBirdsFP11.§;z§(_loc4_);
               if(_loc4_)
               {
                  (§+!$§.getItemByName("Button_Sound") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§+!$§.getItemByName("Button_Sound") as §#!'§).setComponentState(§<f§.§`O§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§'!V§.§'V§();
               §'!V§.§6!Y§(_loc5_);
               §+!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
               AngryBirdsFP11.§`!d§.§!5§();
               break;
            case "MENU":
               §-!D§.§?5§("onLevelMenuOpened");
               mNextState = §6+§.STATE_NAME;
               §+!§.§'!Q§();
         }
      }
   }
}
