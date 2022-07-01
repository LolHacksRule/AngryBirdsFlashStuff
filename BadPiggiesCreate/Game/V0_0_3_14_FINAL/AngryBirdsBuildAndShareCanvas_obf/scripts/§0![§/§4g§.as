package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5!V§.§>n§;
   import §5"-§.§5y§;
   
   public class §4g§ extends §5y§
   {
      
      public static const §4",§:Number = -250;
      
      public static const §'=§:String = "PauseState";
       
      
      protected var § set§:§3^§ = null;
      
      public function §4g§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§`s§();
         §=!X§.§!'§.background.§#!'§();
         this.§<"0§();
      }
      
      protected function §<"0§() : void
      {
         §?E§.getItemByName("Button_Help").setVisibility(false);
         §?E§.getItemByName("Button_Sound").setVisibility(false);
         §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §[!9§() : void
      {
         if(this.§ set§)
         {
            this.§ set§.stop();
            this.§ set§ = null;
         }
      }
      
      protected function §`s§() : void
      {
         if(§3!w§.§%n§ != null)
         {
            (§?E§.getItemByName("TextField_LevelName") as §`!<§).§&!w§.text = §3!w§.§%n§;
         }
         (§?E§.getItemByName("Container_PauseMenu") as §`!T§).x = §4",§;
         this.§9T§(false);
         §=!X§.pause();
         §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         this.§[!9§();
         this.§ set§ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(§?E§.getItemByName("Container_PauseMenu") as §`!T§,{"x":0},null,0.25),§7!E§.§2=§.§<!C§((§?E§.getItemByName("MovieClip_DarkBG") as §%+§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§ set§.onComplete = this.§""!§;
         this.§ set§.play();
      }
      
      protected function §""!§() : void
      {
         this.§9T§(true);
         this.§[!9§();
      }
      
      protected function §9T§(param1:Boolean) : void
      {
         (§?E§.getItemByName("Button_Resume") as §="#§).setEnabled(param1);
         (§?E§.getItemByName("Button_Replay") as §="#§).setEnabled(param1);
         (§?E§.getItemByName("Button_Menu") as §="#§).setEnabled(param1);
         (§?E§.getItemByName("Button_Help") as §="#§).setEnabled(param1);
         (§?E§.getItemByName("Button_Sound") as §="#§).setEnabled(param1);
      }
      
      protected function §!"2§(param1:String) : void
      {
         (§?E§.getItemByName("Button_Resume") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_Help") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_Sound") as §="#§).setComponentVisualState(param1);
      }
      
      protected function §]!"§() : void
      {
         this.§[!9§();
         this.§ set§ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(§?E§.getItemByName("Container_PauseMenu") as §`!T§,{"x":§4",§},null,0.25),§7!E§.§2=§.§<!C§((§?E§.getItemByName("MovieClip_DarkBG") as §%+§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§ set§.onComplete = this.§,!o§;
         this.§ set§.play();
      }
      
      protected function §,!o§() : void
      {
         mNextState = this.getPlayState();
         this.§[!9§();
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
         this.§[!9§();
         this.§!"2§(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§>n§ = null;
         switch(param2)
         {
            case "HELP":
               this.§]!"§();
               for each(_loc6_ in §=!X§.§!'§.slingshot.mBirds)
               {
                  AngryBirdsFP11.§>" §.§>"1§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§]!W§();
               §0!v§.§4[§();
               break;
            case "RESUME_LEVEL":
               this.§]!"§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §5!U§.§9&§();
               mNextState = this.§1"&§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               §?E§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§=!X§.§5$§();
               §=!X§.§]D§(_loc5_);
               §?E§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§'=§;
      }
      
      protected function §]!W§() : String
      {
         return §0!v§.§'=§;
      }
      
      protected function §1"&§() : String
      {
         return §7B§.§'=§;
      }
   }
}
