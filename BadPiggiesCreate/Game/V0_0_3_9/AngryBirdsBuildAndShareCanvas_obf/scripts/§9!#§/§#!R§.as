package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §&!P§.§#!5§;
   import §&"&§.§8!"§;
   import §-N§.§=!]§;
   import §3!S§.§%s§;
   import §6p§.§'!B§;
   import §8""§.§,"!§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=!^§.§9!V§;
   import §=;§.§=!"§;
   import §>a§.§!!D§;
   import §]'§.§0r§;
   
   public class §#!R§ extends §<"+§
   {
      
      private static const §;!>§:Number = -250;
      
      public static const §8G§:String = "PauseStateBS";
       
      
      private var §'",§:§9!V§ = null;
      
      private var §^=§:§#!5§;
      
      public function §#!R§(param1:Boolean = false, param2:String = "PauseStateBS")
      {
         super(param1,param2);
      }
      
      protected function getPlayState() : String
      {
         return StatePlayBS.§8G§;
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelPauseBS[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §%s§.§`!f§.background.§,!t§();
         this.§8"4§();
      }
      
      private function §8"4§() : void
      {
         if(§0r§.§'k§ != null)
         {
            (§;i§.getItemByName("TextField_LevelName") as §7!N§).§"!_§.text = §0r§.§'k§;
         }
         (§;i§.getItemByName("Container_PauseMenu") as §>"-§).x = §;!>§;
         this.§#!'§(false);
         §%s§.pause();
         §=!]§.§@!,§.isPaused = true;
         if(this.§'",§ != null)
         {
            this.§'",§.stop();
         }
         this.§'",§ = §,"!§.§2!K§(§,"!§.§`?§(§;i§.getItemByName("Container_PauseMenu") as §>"-§,{"x":0},null,0.25),§,"!§.§`?§((§;i§.getItemByName("MovieClip_DarkBG") as §&5§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'",§.addEventListener(§!!D§.COMPLETE,this.§34§);
         this.§'",§.play();
      }
      
      private function §34§(param1:§!!D§) : void
      {
         this.§'",§.removeEventListener(§!!D§.COMPLETE,this.§34§);
         this.§#!'§(true);
      }
      
      private function §#!'§(param1:Boolean) : void
      {
         (§;i§.getItemByName("Button_Resume") as §="5§).setEnabled(param1);
         (§;i§.getItemByName("Button_Replay") as §="5§).setEnabled(param1);
         (§;i§.getItemByName("Button_Help") as §="5§).setEnabled(param1);
         (§;i§.getItemByName("Button_Sound") as §="5§).setEnabled(param1);
      }
      
      private function §<!!§() : void
      {
         if(this.§'",§ != null)
         {
            this.§'",§.stop();
         }
         this.§'",§ = §,"!§.§2!K§(§,"!§.§`?§(§;i§.getItemByName("Container_PauseMenu") as §>"-§,{"x":§;!>§},null,0.25),§,"!§.§`?§((§;i§.getItemByName("MovieClip_DarkBG") as §&5§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'",§.addEventListener(§!!D§.COMPLETE,this.§1",§);
         this.§'",§.play();
      }
      
      protected function §1",§(param1:§!!D§) : void
      {
         this.§'",§.removeEventListener(§!!D§.COMPLETE,this.§1",§);
         mNextState = this.getPlayState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §=!]§.§@!,§.isPaused = false;
         (§;i§.getItemByName("Button_Resume") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;i§.getItemByName("Button_Replay") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;i§.getItemByName("Button_Help") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;i§.getItemByName("Button_Sound") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "HELP":
               this.§^=§ = new §#!5§(§;i§,§"!f§.§%!1§.Views.PopupView_PlayHelp[0]);
               this.§^=§.open();
               break;
            case "HELP_CLOSE":
               this.§^=§.close();
               §%s§.pause();
               break;
            case "RESTART_LEVEL":
               mNextState = §=!"§.§8G§;
               §=!"§.§2!2§(this.getPlayState());
               break;
            case "RESUME_LEVEL":
               this.§<!!§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               if(_loc4_)
               {
                  (§;i§.getItemByName("Button_Sound") as §="5§).setComponentState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  (§;i§.getItemByName("Button_Sound") as §="5§).setComponentState(§+!A§.§5"6§);
               }
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§%s§.§!!6§();
               §%s§.§"l§(_loc5_);
               §;i§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §8!"§.doJsCall("onFullscreenToggle");
               break;
            case "MENU":
               §8!"§.doJsCall("onLevelMenuOpened");
               mNextState = §?w§.§8G§;
               §'!B§.§>T§();
         }
      }
   }
}
