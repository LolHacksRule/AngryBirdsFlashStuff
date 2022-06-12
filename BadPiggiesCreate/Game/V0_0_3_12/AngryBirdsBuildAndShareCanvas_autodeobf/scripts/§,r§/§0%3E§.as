package §,r§
{
   import §#U§.§^!5§;
   import §%!,§.§,v§;
   import §%!D§.§,h§;
   import §%B§.§^k§;
   import §3",§.§0"<§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §7!%§.§]j§;
   import §7"1§.§%W§;
   import §7N§.§@!x§;
   import §=e§.§1!@§;
   import §>!#§.§-""§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §]z§.§]u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   
   public class §0>§ extends §,v§
   {
      
      private static const §'"-§:Number = -250;
      
      public static const §8n§:String = "PauseStateBS";
       
      
      private var §?"+§:§,h§ = null;
      
      private var §2!^§:§]j§;
      
      public function §0>§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§8n§;
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §%W§.§5"8§.background.§;-§();
         this.§@t§();
      }
      
      private function §@t§() : void
      {
         if(§-""§.§<5§ != null)
         {
            (§?F§.getItemByName("TextField_LevelName") as §6m§).§<"§.text = §-""§.§<5§;
         }
         (§?F§.getItemByName("Container_PauseMenu") as §+!?§).x = §'"-§;
         this.§^!+§(false);
         §%W§.pause();
         §0"<§.§1!G§.isPaused = true;
         if(this.§?"+§ != null)
         {
            this.§?"+§.stop();
         }
         this.§?"+§ = §]u§.§;!i§(§]u§.§'!H§(§?F§.getItemByName("Container_PauseMenu") as §+!?§,{"x":0},null,0.25),§]u§.§'!H§((§?F§.getItemByName("MovieClip_DarkBG") as §;!P§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§?"+§.addEventListener(§^!5§.COMPLETE,this.§@!u§);
         this.§?"+§.play();
      }
      
      private function §@!u§(param1:§^!5§) : void
      {
         this.§?"+§.removeEventListener(§^!5§.COMPLETE,this.§@!u§);
         this.§^!+§(true);
      }
      
      private function §^!+§(param1:Boolean) : void
      {
         (§?F§.getItemByName("Button_Resume") as §;!Z§).setEnabled(param1);
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setEnabled(param1);
         (§?F§.getItemByName("Button_Help") as §;!Z§).setEnabled(param1);
         (§?F§.getItemByName("Button_Sound") as §;!Z§).setEnabled(param1);
      }
      
      private function §<k§() : void
      {
         if(this.§?"+§ != null)
         {
            this.§?"+§.stop();
         }
         this.§?"+§ = §]u§.§;!i§(§]u§.§'!H§(§?F§.getItemByName("Container_PauseMenu") as §+!?§,{"x":§'"-§},null,0.25),§]u§.§'!H§((§?F§.getItemByName("MovieClip_DarkBG") as §;!P§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§?"+§.addEventListener(§^!5§.COMPLETE,this.§>!a§);
         this.§?"+§.play();
      }
      
      protected function §>!a§(param1:§^!5§) : void
      {
         this.§?"+§.removeEventListener(§^!5§.COMPLETE,this.§>!a§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §0"<§.§1!G§.isPaused = false;
         (§?F§.getItemByName("Button_Resume") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?F§.getItemByName("Button_Help") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?F§.getItemByName("Button_Sound") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§2!^§ = new §]j§(§?F§,§#! §.§5!;§.Views.PopupView_PlayHelp[0]);
               this.§2!^§.open();
               break;
            case "HELP_CLOSE":
               this.§2!^§.close();
               §%W§.pause();
               break;
            case "RESTART_LEVEL":
               mNextState = §@!x§.§8n§;
               §@!x§.§8U§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.§<k§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               if(_loc4_)
               {
                  (§?F§.getItemByName("Button_Sound") as §;!Z§).setComponentState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§?F§.getItemByName("Button_Sound") as §;!Z§).setComponentState(§;_§.§ "2§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§%W§.§,4§();
               §%W§.§;!v§(_loc5_);
               §?F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §1!@§.doJsCall("onFullscreenToggle");
               break;
            case "MENU":
               §1!@§.doJsCall("onLevelMenuOpened");
               mNextState = §5!L§.§8n§;
               §^k§.§3,§();
         }
      }
   }
}
