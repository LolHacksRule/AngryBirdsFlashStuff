package §-P§
{
   import §!!T§.§"!S§;
   import §!",§.§"F§;
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§3!6§;
   import §!D§.§<!5§;
   import §&T§.§,!0§;
   import §0!F§.§^d§;
   import §1S§.§<!n§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §;!+§.§`!#§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §?"1§.§1"%§;
   import §`"5§.§ !J§;
   import §`%§.§8!0§;
   
   public class §"c§ extends §4E§
   {
      
      private static const §"m§:Number = -250;
      
      public static const §#!w§:String = "PauseStateBS";
       
      
      private var §?_§:§ !J§ = null;
      
      private var §1V§:§<!n§;
      
      public function §"c§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§#!w§;
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!0§.§?2§.background.§ !G§();
         this.§2H§();
      }
      
      private function §2H§() : void
      {
         if(§`!#§.§^!,§ != null)
         {
            (§1!j§.getItemByName("TextField_LevelName") as §%c§).§3v§.text = §`!#§.§^!,§;
         }
         (§1!j§.getItemByName("Container_PauseMenu") as § use§).x = §"m§;
         this.§+!a§(false);
         §8!0§.pause();
         §^d§.§,"'§.isPaused = true;
         if(this.§?_§ != null)
         {
            this.§?_§.stop();
         }
         this.§?_§ = §,!0§.§?!z§(§,!0§.§#t§(§1!j§.getItemByName("Container_PauseMenu") as § use§,{"x":0},null,0.25),§,!0§.§#t§((§1!j§.getItemByName("MovieClip_DarkBG") as §<!5§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§?_§.addEventListener(§1"%§.COMPLETE,this.§@O§);
         this.§?_§.play();
      }
      
      private function §@O§(param1:§1"%§) : void
      {
         this.§?_§.removeEventListener(§1"%§.COMPLETE,this.§@O§);
         this.§+!a§(true);
      }
      
      private function §+!a§(param1:Boolean) : void
      {
         (§1!j§.getItemByName("Button_Resume") as §3!6§).setEnabled(param1);
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setEnabled(param1);
         (§1!j§.getItemByName("Button_Help") as §3!6§).setEnabled(param1);
         (§1!j§.getItemByName("Button_Sound") as §3!6§).setEnabled(param1);
      }
      
      private function §7K§() : void
      {
         if(this.§?_§ != null)
         {
            this.§?_§.stop();
         }
         this.§?_§ = §,!0§.§?!z§(§,!0§.§#t§(§1!j§.getItemByName("Container_PauseMenu") as § use§,{"x":§"m§},null,0.25),§,!0§.§#t§((§1!j§.getItemByName("MovieClip_DarkBG") as §<!5§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§?_§.addEventListener(§1"%§.COMPLETE,this.§4!e§);
         this.§?_§.play();
      }
      
      protected function §4!e§(param1:§1"%§) : void
      {
         this.§?_§.removeEventListener(§1"%§.COMPLETE,this.§4!e§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §^d§.§,"'§.isPaused = false;
         (§1!j§.getItemByName("Button_Resume") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§1!j§.getItemByName("Button_Help") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§1!j§.getItemByName("Button_Sound") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§1V§ = new §<!n§(§1!j§,§"a§.§-!g§.Views.PopupView_PlayHelp[0]);
               this.§1V§.open();
               break;
            case "HELP_CLOSE":
               this.§1V§.close();
               §8!0§.pause();
               break;
            case "RESTART_LEVEL":
               mNextState = §"F§.§#!w§;
               §"F§.§%!,§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.§7K§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               if(_loc4_)
               {
                  (§1!j§.getItemByName("Button_Sound") as §3!6§).setComponentState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§1!j§.getItemByName("Button_Sound") as §3!6§).setComponentState(§6"0§.§ B§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§8!0§.§9!n§();
               §8!0§.§4s§(_loc5_);
               §1!j§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.doJsCall("onFullscreenToggle");
               break;
            case "MENU":
               §"!S§.doJsCall("onLevelMenuOpened");
               mNextState = §1Z§.§#!w§;
               §?!7§.§@"!§();
         }
      }
   }
}
