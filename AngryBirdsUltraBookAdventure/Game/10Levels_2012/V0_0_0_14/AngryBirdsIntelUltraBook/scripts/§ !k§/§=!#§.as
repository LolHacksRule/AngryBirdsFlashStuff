package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §+&§.§`o§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   
   public class §=!#§ extends §+_§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §3F§:String = "PauseState";
       
      
      protected var §'!N§:§4F§ = null;
      
      public function §=!#§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §4!]§.§8C§.background.§&[§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §`-§.getItemByName("Button_Help").setVisibility(false);
         §`-§.getItemByName("Button_Sound").setVisibility(false);
         §`-§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §?6§() : void
      {
         if(this.§'!N§)
         {
            this.§'!N§.stop();
            this.§'!N§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§^!F§ != null)
         {
            (§`-§.getItemByName("TextField_LevelName") as §3!@§).§!!2§.text = LevelManager.§^!F§;
         }
         (§`-§.getItemByName("Container_PauseMenu") as §9!#§).x = OFFSCREEN_X;
         this.§"!f§(false);
         §4!]§.pause();
         §`-§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§`;§());
         this.§?6§();
         this.§'!N§ = §5+§.§^Z§.§>Y§(§5+§.§^Z§.§=!a§(§`-§.getItemByName("Container_PauseMenu") as §9!#§,{"x":0},null,0.25),§5+§.§^Z§.§=!a§((§`-§.getItemByName("MovieClip_DarkBG") as §&!G§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'!N§.onComplete = this.§"4§;
         this.§'!N§.play();
      }
      
      protected function §"4§() : void
      {
         this.§"!f§(true);
         this.§?6§();
      }
      
      protected function §"!f§(param1:Boolean) : void
      {
         (§`-§.getItemByName("Button_Resume") as §,c§).setEnabled(param1);
         (§`-§.getItemByName("Button_Replay") as §,c§).setEnabled(param1);
         (§`-§.getItemByName("Button_Menu") as §,c§).setEnabled(param1);
         (§`-§.getItemByName("Button_Help") as §,c§).setEnabled(param1);
         (§`-§.getItemByName("Button_Sound") as §,c§).setEnabled(param1);
      }
      
      protected function §6!h§(param1:String) : void
      {
         (§`-§.getItemByName("Button_Resume") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_Help") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_Sound") as §,c§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§?6§();
         this.§'!N§ = §5+§.§^Z§.§>Y§(§5+§.§^Z§.§=!a§(§`-§.getItemByName("Container_PauseMenu") as §9!#§,{"x":OFFSCREEN_X},null,0.25),§5+§.§^Z§.§=!a§((§`-§.getItemByName("MovieClip_DarkBG") as §&!G§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'!N§.onComplete = this.§91§;
         this.§'!N§.play();
      }
      
      protected function §91§() : void
      {
         mNextState = this.§^Q§();
         this.§?6§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?6§();
         this.§6!h§(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§`o§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §4!]§.§8C§.slingshot.§9q§)
               {
                  AngryBirdsFP11.sUserProgress.§`!I§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.set();
               §%]§.§=>§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §6!H§.§[!W§();
               mNextState = this.§"q§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§`;§();
               AngryBirdsFP11.§0S§(_loc4_);
               §`-§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§4!]§.§;!;§();
               §4!]§.§0g§(_loc5_);
               §`-§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
      
      protected function §^Q§() : String
      {
         return StatePlay.§3F§;
      }
      
      protected function set() : String
      {
         return §%]§.§3F§;
      }
      
      protected function §"q§() : String
      {
         return §6!U§.§3F§;
      }
   }
}
