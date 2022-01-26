package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §[x§.§,1§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   
   public class §,§ extends §-§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §?B§:String = "PauseState";
       
      
      protected var §,w§:§?A§ = null;
      
      public function §,§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §[o§.§='§.background.§1!>§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §,R§.getItemByName("Button_Help").setVisibility(false);
         §,R§.getItemByName("Button_Sound").setVisibility(false);
         §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §]W§() : void
      {
         if(this.§,w§)
         {
            this.§,w§.stop();
            this.§,w§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§0$§.§[C§ != null)
         {
            (§,R§.getItemByName("TextField_LevelName") as §'4§).§8?§.text = §0$§.§[C§;
         }
         (§,R§.getItemByName("Container_PauseMenu") as §&F§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[o§.pause();
         §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;9§());
         this.§]W§();
         this.§,w§ = §";§.§[8§.§9!8§(§";§.§[8§.§6!$§(§,R§.getItemByName("Container_PauseMenu") as §&F§,{"x":0},null,0.25),§";§.§[8§.§6!$§((§,R§.getItemByName("MovieClip_DarkBG") as §=!=§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§,w§.onComplete = this.§%x§;
         this.§,w§.play();
      }
      
      protected function §%x§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§]W§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§,R§.getItemByName("Button_Resume") as §^P§).setEnabled(param1);
         (§,R§.getItemByName("Button_Replay") as §^P§).setEnabled(param1);
         (§,R§.getItemByName("Button_Menu") as §^P§).setEnabled(param1);
         (§,R§.getItemByName("Button_Help") as §^P§).setEnabled(param1);
         (§,R§.getItemByName("Button_Sound") as §^P§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§,R§.getItemByName("Button_Resume") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Help") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Sound") as §^P§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§]W§();
         this.§,w§ = §";§.§[8§.§9!8§(§";§.§[8§.§6!$§(§,R§.getItemByName("Container_PauseMenu") as §&F§,{"x":OFFSCREEN_X},null,0.25),§";§.§[8§.§6!$§((§,R§.getItemByName("MovieClip_DarkBG") as §=!=§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§,w§.onComplete = this.§2g§;
         this.§,w§.play();
      }
      
      protected function §2g§() : void
      {
         mNextState = this.§<!$§();
         this.§]W§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]W§();
         this.setPauseMenuButtonStates(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§,1§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §[o§.§='§.slingshot.§]<§)
               {
                  AngryBirdsFP11.§64§.§6§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§`^§();
               §7!6§.§<!G§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §@6§.§&t§();
               mNextState = this.§[9§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§;9§();
               AngryBirdsFP11.§-!9§(_loc4_);
               §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§[o§.§%!!§();
               §[o§.§#i§(_loc5_);
               §,R§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
      
      protected function §<!$§() : String
      {
         return StatePlay.§?B§;
      }
      
      protected function §`^§() : String
      {
         return §7!6§.§?B§;
      }
      
      protected function §[9§() : String
      {
         return §4t§.§?B§;
      }
   }
}
