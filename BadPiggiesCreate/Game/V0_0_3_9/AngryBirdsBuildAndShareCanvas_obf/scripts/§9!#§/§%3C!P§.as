package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=b§.§8",§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   
   public class §<!P§ extends §<"+§
   {
      
      public static const §;!>§:Number = -250;
      
      public static const §8G§:String = "PauseState";
       
      
      protected var §'",§:§^!#§ = null;
      
      public function §<!P§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§8"4§();
         §%s§.§`!f§.background.§,!t§();
         this.§'!w§();
      }
      
      protected function §'!w§() : void
      {
         §;i§.getItemByName("Button_Help").setVisibility(false);
         §;i§.getItemByName("Button_Sound").setVisibility(false);
         §;i§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §=!,§() : void
      {
         if(this.§'",§)
         {
            this.§'",§.stop();
            this.§'",§ = null;
         }
      }
      
      protected function §8"4§() : void
      {
         if(§1!c§.§'Z§ != null)
         {
            (§;i§.getItemByName("TextField_LevelName") as §7!N§).§"!_§.text = §1!c§.§'Z§;
         }
         (§;i§.getItemByName("Container_PauseMenu") as §>"-§).x = §;!>§;
         this.§#!'§(false);
         §%s§.pause();
         §;i§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         this.§=!,§();
         this.§'",§ = §"g§.§'!o§.§3!p§(§"g§.§'!o§.§while§(§;i§.getItemByName("Container_PauseMenu") as §>"-§,{"x":0},null,0.25),§"g§.§'!o§.§while§((§;i§.getItemByName("MovieClip_DarkBG") as §&5§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'",§.onComplete = this.§34§;
         this.§'",§.play();
      }
      
      protected function §34§() : void
      {
         this.§#!'§(true);
         this.§=!,§();
      }
      
      protected function §#!'§(param1:Boolean) : void
      {
         (§;i§.getItemByName("Button_Resume") as §="5§).setEnabled(param1);
         (§;i§.getItemByName("Button_Replay") as §="5§).setEnabled(param1);
         (§;i§.getItemByName("Button_Menu") as §="5§).setEnabled(param1);
         (§;i§.getItemByName("Button_Help") as §="5§).setEnabled(param1);
         (§;i§.getItemByName("Button_Sound") as §="5§).setEnabled(param1);
      }
      
      protected function §0i§(param1:String) : void
      {
         (§;i§.getItemByName("Button_Resume") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_Replay") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_Menu") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_Help") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_Sound") as §="5§).setComponentVisualState(param1);
      }
      
      protected function §<!!§() : void
      {
         this.§=!,§();
         this.§'",§ = §"g§.§'!o§.§3!p§(§"g§.§'!o§.§while§(§;i§.getItemByName("Container_PauseMenu") as §>"-§,{"x":§;!>§},null,0.25),§"g§.§'!o§.§while§((§;i§.getItemByName("MovieClip_DarkBG") as §&5§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'",§.onComplete = this.§1",§;
         this.§'",§.play();
      }
      
      protected function §1",§() : void
      {
         mNextState = this.getPlayState();
         this.§=!,§();
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
         this.§=!,§();
         this.§0i§(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§8",§ = null;
         switch(param2)
         {
            case "HELP":
               this.§<!!§();
               for each(_loc6_ in §%s§.§`!f§.slingshot.mBirds)
               {
                  AngryBirdsFP11.§5!c§.§=W§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§'!#§();
               §+0§.§2!2§();
               break;
            case "RESUME_LEVEL":
               this.§<!!§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §'!B§.§>T§();
               mNextState = this.§--§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               §;i§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§%s§.§!!6§();
               §%s§.§"l§(_loc5_);
               §;i§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§8G§;
      }
      
      protected function §'!#§() : String
      {
         return §+0§.§8G§;
      }
      
      protected function §--§() : String
      {
         return §#B§.§8G§;
      }
   }
}
