package §2x§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §8!E§.§'4§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   
   public class §-"1§ extends §>!T§
   {
      
      public static const §0!c§:Number = -250;
      
      public static const §>H§:String = "PauseState";
       
      
      protected var §'[§:§-!m§ = null;
      
      public function §-"1§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§4"<§();
         §5!U§.§,!E§.background.§&A§();
         this.§3!_§();
      }
      
      protected function §3!_§() : void
      {
         §3?§.getItemByName("Button_Help").setVisibility(false);
         §3?§.getItemByName("Button_Sound").setVisibility(false);
         §3?§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §+">§() : void
      {
         if(this.§'[§)
         {
            this.§'[§.stop();
            this.§'[§ = null;
         }
      }
      
      protected function §4"<§() : void
      {
         if(§8!z§.§>!&§ != null)
         {
            (§3?§.getItemByName("TextField_LevelName") as §<"-§).§7!n§.text = §8!z§.§>!&§;
         }
         (§3?§.getItemByName("Container_PauseMenu") as §1H§).x = §0!c§;
         this.§0!3§(false);
         §5!U§.pause();
         §3?§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         this.§+">§();
         this.§'[§ = §"L§.§7!?§.§#!x§(§"L§.§7!?§.§4!P§(§3?§.getItemByName("Container_PauseMenu") as §1H§,{"x":0},null,0.25),§"L§.§7!?§.§4!P§((§3?§.getItemByName("MovieClip_DarkBG") as §%!7§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'[§.onComplete = this.§]!A§;
         this.§'[§.play();
      }
      
      protected function §]!A§() : void
      {
         this.§0!3§(true);
         this.§+">§();
      }
      
      protected function §0!3§(param1:Boolean) : void
      {
         (§3?§.getItemByName("Button_Resume") as §8K§).setEnabled(param1);
         (§3?§.getItemByName("Button_Replay") as §8K§).setEnabled(param1);
         (§3?§.getItemByName("Button_Menu") as §8K§).setEnabled(param1);
         (§3?§.getItemByName("Button_Help") as §8K§).setEnabled(param1);
         (§3?§.getItemByName("Button_Sound") as §8K§).setEnabled(param1);
      }
      
      protected function §]!Y§(param1:String) : void
      {
         (§3?§.getItemByName("Button_Resume") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_Replay") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_Menu") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_Help") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_Sound") as §8K§).setComponentVisualState(param1);
      }
      
      protected function §-!g§() : void
      {
         this.§+">§();
         this.§'[§ = §"L§.§7!?§.§#!x§(§"L§.§7!?§.§4!P§(§3?§.getItemByName("Container_PauseMenu") as §1H§,{"x":§0!c§},null,0.25),§"L§.§7!?§.§4!P§((§3?§.getItemByName("MovieClip_DarkBG") as §%!7§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'[§.onComplete = this.§6!C§;
         this.§'[§.play();
      }
      
      protected function §6!C§() : void
      {
         mNextState = this.getPlayState();
         this.§+">§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+">§();
         this.§]!Y§(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§'4§ = null;
         switch(param2)
         {
            case "HELP":
               this.§-!g§();
               for each(_loc6_ in §5!U§.§,!E§.slingshot.mBirds)
               {
                  AngryBirdsFP11.§"!c§.§]!o§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§>E§();
               §8D§.§+!u§();
               break;
            case "RESUME_LEVEL":
               this.§-!g§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §5;§.§8X§();
               mNextState = this.§2">§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               §3?§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§5!U§.§7!A§();
               §5!U§.§ 5§(_loc5_);
               §3?§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§>H§;
      }
      
      protected function §>E§() : String
      {
         return §8D§.§>H§;
      }
      
      protected function §2">§() : String
      {
         return §8";§.§>H§;
      }
   }
}
