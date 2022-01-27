package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §4!-§.§;d§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import §8]§.§-u§;
   import §8]§.§93§;
   import §8]§.§?N§;
   import §;!!§.§0H§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   
   public class §8#§ extends §0H§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const §2`§:String = "PauseState";
       
      
      protected var §6j§:§<Q§ = null;
      
      public function §8#§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §[F§.§9u§.background.§4C§();
         this.setInitialButtonVisibilities();
      }
      
      protected function setInitialButtonVisibilities() : void
      {
         §<A§.getItemByName("Button_Help").setVisibility(false);
         §<A§.getItemByName("Button_Sound").setVisibility(false);
         §<A§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §+!'§() : void
      {
         if(this.§6j§)
         {
            this.§6j§.stop();
            this.§6j§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(§2h§.§,!P§ != null)
         {
            (§<A§.getItemByName("TextField_LevelName") as §?N§).§2W§.text = §2h§.§,!P§;
         }
         (§<A§.getItemByName("Container_PauseMenu") as §+a§).x = OFFSCREEN_X;
         this.setPauseMenuButtonsEnabled(false);
         §[F§.pause();
         §<A§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§ !Q§());
         this.§+!'§();
         this.§6j§ = §5^§.§<"§.§`5§(§5^§.§<"§.§^g§(§<A§.getItemByName("Container_PauseMenu") as §+a§,{"x":0},null,0.25),§5^§.§<"§.§^g§((§<A§.getItemByName("MovieClip_DarkBG") as §93§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§6j§.onComplete = this.§ !F§;
         this.§6j§.play();
      }
      
      protected function § !F§() : void
      {
         this.setPauseMenuButtonsEnabled(true);
         this.§+!'§();
      }
      
      protected function setPauseMenuButtonsEnabled(param1:Boolean) : void
      {
         (§<A§.getItemByName("Button_Resume") as §-u§).setEnabled(param1);
         (§<A§.getItemByName("Button_Replay") as §-u§).setEnabled(param1);
         (§<A§.getItemByName("Button_Menu") as §-u§).setEnabled(param1);
         (§<A§.getItemByName("Button_Help") as §-u§).setEnabled(param1);
         (§<A§.getItemByName("Button_Sound") as §-u§).setEnabled(param1);
      }
      
      protected function setPauseMenuButtonStates(param1:String) : void
      {
         (§<A§.getItemByName("Button_Resume") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Replay") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Menu") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Help") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Sound") as §-u§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§+!'§();
         this.§6j§ = §5^§.§<"§.§`5§(§5^§.§<"§.§^g§(§<A§.getItemByName("Container_PauseMenu") as §+a§,{"x":OFFSCREEN_X},null,0.25),§5^§.§<"§.§^g§((§<A§.getItemByName("MovieClip_DarkBG") as §93§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§6j§.onComplete = this.§4;§;
         this.§6j§.play();
      }
      
      protected function §4;§() : void
      {
         mNextState = this.§ !E§();
         this.§+!'§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+!'§();
         this.setPauseMenuButtonStates(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§;d§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §[F§.§9u§.slingshot.§?q§)
               {
                  AngryBirdsFP11.§ !-§.§-!P§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§6u§();
               §#u§.§<q§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §#-§.§[!>§();
               mNextState = this.§2E§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§ !Q§();
               AngryBirdsFP11.§0!E§(_loc4_);
               §<A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§[F§.§3!;§();
               §[F§.§'!%§(_loc5_);
               §<A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
      
      protected function § !E§() : String
      {
         return StatePlay.§2`§;
      }
      
      protected function §6u§() : String
      {
         return §#u§.§2`§;
      }
      
      protected function §2E§() : String
      {
         return §6!C§.§2`§;
      }
   }
}
