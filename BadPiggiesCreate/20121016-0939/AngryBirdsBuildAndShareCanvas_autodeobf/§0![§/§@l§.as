package §0![§
{
   import § "'§.§3@§;
   import § "@§.§%!3§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §2H§.§,J§;
   import §5"-§.§5y§;
   import §6p§.§?%§;
   import §="6§.§^"8§;
   import §@!G§.§5!!§;
   import §`!Y§.§&!H§;
   
   public class §@l§ extends §5y§
   {
      
      private static const §4",§:Number = -250;
      
      public static const §'=§:String = "PauseStateBS";
       
      
      private var § set§:§3@§ = null;
      
      private var §^-§:§,J§;
      
      public function §@l§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§'=§;
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!X§.§!'§.background.§#!'§();
         this.§`s§();
      }
      
      private function §`s§() : void
      {
         if(§^"8§.§2!b§ != null)
         {
            (§?E§.getItemByName("TextField_LevelName") as §`!<§).§&!w§.text = §^"8§.§2!b§;
         }
         (§?E§.getItemByName("Container_PauseMenu") as §`!T§).x = §4",§;
         this.§9T§(false);
         §=!X§.pause();
         §?%§.§",§.isPaused = true;
         if(this.§ set§ != null)
         {
            this.§ set§.stop();
         }
         this.§ set§ = §5!!§.§3">§(§5!!§.§3!b§(§?E§.getItemByName("Container_PauseMenu") as §`!T§,{"x":0},null,0.25),§5!!§.§3!b§((§?E§.getItemByName("MovieClip_DarkBG") as §%+§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§ set§.addEventListener(§&!H§.COMPLETE,this.§""!§);
         this.§ set§.play();
      }
      
      private function §""!§(param1:§&!H§) : void
      {
         this.§ set§.removeEventListener(§&!H§.COMPLETE,this.§""!§);
         this.§9T§(true);
      }
      
      private function §9T§(param1:Boolean) : void
      {
         (§?E§.getItemByName("Button_Resume") as §="#§).setEnabled(param1);
         (§?E§.getItemByName("Button_Replay") as §="#§).setEnabled(param1);
         (§?E§.getItemByName("Button_Help") as §="#§).setEnabled(param1);
         (§?E§.getItemByName("Button_Sound") as §="#§).setEnabled(param1);
      }
      
      private function §]!"§() : void
      {
         if(this.§ set§ != null)
         {
            this.§ set§.stop();
         }
         this.§ set§ = §5!!§.§3">§(§5!!§.§3!b§(§?E§.getItemByName("Container_PauseMenu") as §`!T§,{"x":§4",§},null,0.25),§5!!§.§3!b§((§?E§.getItemByName("MovieClip_DarkBG") as §%+§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§ set§.addEventListener(§&!H§.COMPLETE,this.§,!o§);
         this.§ set§.play();
      }
      
      protected function §,!o§(param1:§&!H§) : void
      {
         this.§ set§.removeEventListener(§&!H§.COMPLETE,this.§,!o§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?%§.§",§.isPaused = false;
         (§?E§.getItemByName("Button_Resume") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?E§.getItemByName("Button_Help") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?E§.getItemByName("Button_Sound") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§^-§ = new §,J§(§?E§,§`7§.§>"?§.Views.PopupView_PlayHelp[0]);
               this.§^-§.open();
               break;
            case "HELP_CLOSE":
               this.§^-§.close();
               §=!X§.pause();
               break;
            case "RESTART_LEVEL":
               mNextState = §%!3§.§'=§;
               §%!3§.§4[§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.§]!"§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               if(_loc4_)
               {
                  (§?E§.getItemByName("Button_Sound") as §="#§).setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§?E§.getItemByName("Button_Sound") as §="#§).setComponentState(§9!!§.§,!0§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§=!X§.§5$§();
               §=!X§.§]D§(_loc5_);
               §?E§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §4m§.doJsCall("onFullscreenToggle");
               break;
            case "MENU":
               §4m§.doJsCall("onLevelMenuOpened");
               mNextState = §^! §.§'=§;
               §5!U§.§9&§();
         }
      }
   }
}
