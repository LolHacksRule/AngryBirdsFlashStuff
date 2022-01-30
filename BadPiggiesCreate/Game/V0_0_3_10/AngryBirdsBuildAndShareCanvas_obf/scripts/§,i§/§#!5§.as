package §,i§
{
   import §!!+§.§4!l§;
   import §%!Z§.§;!c§;
   import §&!8§.§9v§;
   import §+!v§.§`!t§;
   import §-! §.§"A§;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §0!d§.§`G§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5!5§.§^e§;
   import §5^§.§ !x§;
   import §8"'§.§?!`§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import §]!N§.§7"3§;
   
   public class §#!5§ extends §0!K§
   {
      
      private static const §'2§:Number = -250;
      
      public static const §]"2§:String = "PauseStateBS";
       
      
      private var §@!Z§:§7"3§ = null;
      
      private var §'!B§:§;!c§;
      
      public function §#!5§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§]"2§;
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!V§.§!j§.background.§>"%§();
         this.§;!N§();
      }
      
      private function §;!N§() : void
      {
         if(§`!t§.§>t§ != null)
         {
            (§'K§.getItemByName("TextField_LevelName") as §`G§).§?B§.text = §`!t§.§>t§;
         }
         (§'K§.getItemByName("Container_PauseMenu") as §7!a§).x = §'2§;
         this.§<!%§(false);
         §"!V§.pause();
         §^e§.§,_§.isPaused = true;
         if(this.§@!Z§ != null)
         {
            this.§@!Z§.stop();
         }
         this.§@!Z§ = §"A§.§'9§(§"A§.§3!+§(§'K§.getItemByName("Container_PauseMenu") as §7!a§,{"x":0},null,0.25),§"A§.§3!+§((§'K§.getItemByName("MovieClip_DarkBG") as §%!9§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§@!Z§.addEventListener(§9v§.COMPLETE,this.§2S§);
         this.§@!Z§.play();
      }
      
      private function §2S§(param1:§9v§) : void
      {
         this.§@!Z§.removeEventListener(§9v§.COMPLETE,this.§2S§);
         this.§<!%§(true);
      }
      
      private function §<!%§(param1:Boolean) : void
      {
         (§'K§.getItemByName("Button_Resume") as §8!r§).setEnabled(param1);
         (§'K§.getItemByName("Button_Replay") as §8!r§).setEnabled(param1);
         (§'K§.getItemByName("Button_Help") as §8!r§).setEnabled(param1);
         (§'K§.getItemByName("Button_Sound") as §8!r§).setEnabled(param1);
      }
      
      private function §[!§() : void
      {
         if(this.§@!Z§ != null)
         {
            this.§@!Z§.stop();
         }
         this.§@!Z§ = §"A§.§'9§(§"A§.§3!+§(§'K§.getItemByName("Container_PauseMenu") as §7!a§,{"x":§'2§},null,0.25),§"A§.§3!+§((§'K§.getItemByName("MovieClip_DarkBG") as §%!9§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§@!Z§.addEventListener(§9v§.COMPLETE,this.§>j§);
         this.§@!Z§.play();
      }
      
      protected function §>j§(param1:§9v§) : void
      {
         this.§@!Z§.removeEventListener(§9v§.COMPLETE,this.§>j§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §^e§.§,_§.isPaused = false;
         (§'K§.getItemByName("Button_Resume") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'K§.getItemByName("Button_Replay") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'K§.getItemByName("Button_Help") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'K§.getItemByName("Button_Sound") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§'!B§ = new §;!c§(§'K§,§1!=§.§8X§.Views.PopupView_PlayHelp[0]);
               this.§'!B§.open();
               break;
            case "HELP_CLOSE":
               this.§'!B§.close();
               §"!V§.pause();
               break;
            case "RESTART_LEVEL":
               mNextState = §4!l§.§]"2§;
               §4!l§.§"l§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.§[!§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               if(_loc4_)
               {
                  (§'K§.getItemByName("Button_Sound") as §8!r§).setComponentState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§'K§.getItemByName("Button_Sound") as §8!r§).setComponentState(§"h§.§"!a§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§"!V§.§1!u§();
               §"!V§.§;!o§(_loc5_);
               §'K§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §?!`§.doJsCall("onFullscreenToggle");
               break;
            case "MENU":
               §?!`§.doJsCall("onLevelMenuOpened");
               mNextState = §8!0§.§]"2§;
               § !x§.§ X§();
         }
      }
   }
}
