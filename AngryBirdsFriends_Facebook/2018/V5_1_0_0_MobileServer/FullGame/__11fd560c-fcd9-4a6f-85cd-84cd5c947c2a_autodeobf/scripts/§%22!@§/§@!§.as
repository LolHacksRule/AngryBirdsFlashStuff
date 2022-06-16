package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§%M§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §@!M§.§!"p§;
   import §@0§.§4!_§;
   
   public class §@!§ extends §@"S§
   {
      
      public static const §9"q§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §""P§:§4[§ = null;
      
      public function §@!§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4"2§();
         §3#U§.§#$4§.background.stopAmbientSound();
         this.§?#X§();
      }
      
      protected function §?#X§() : void
      {
         §`!H§.getItemByName("Button_Help").setVisibility(false);
         §`!H§.getItemByName("Button_Sound").setVisibility(false);
         §`!H§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §;$;§() : void
      {
         if(this.§""P§)
         {
            this.§""P§.stop();
            this.§""P§ = null;
         }
      }
      
      protected function §4"2§() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
            (§`!H§.getItemByName("TextField_LevelName") as §%M§).§4!"§.text = mLevelManager.currentLevelNumericName;
         }
         (§`!H§.getItemByName("Container_PauseMenu") as §[#K§).x = §9"q§;
         this.§6!5§(false);
         §3#U§.pause();
         §`!H§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§5!p§());
         this.§;$;§();
         this.§""P§ = §&"H§.§6!§.§5!j§(§&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_PauseMenu") as §[#K§,{"x":0},null,0.25),§&"H§.§6!§.§6C§((§`!H§.getItemByName("MovieClip_DarkBG") as §@N§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§""P§.onComplete = this.§=k§;
         this.§""P§.play();
      }
      
      protected function §=k§() : void
      {
         this.§6!5§(true);
         this.§;$;§();
      }
      
      protected function §6!5§(param1:Boolean) : void
      {
         (§`!H§.getItemByName("Button_Resume") as §>"0§).setEnabled(param1);
         (§`!H§.getItemByName("Button_Replay") as §>"0§).setEnabled(param1);
         (§`!H§.getItemByName("Button_Menu") as §>"0§).setEnabled(param1);
         (§`!H§.getItemByName("Button_Help") as §>"0§).setEnabled(param1);
         (§`!H§.getItemByName("Button_Sound") as §>"0§).setEnabled(param1);
      }
      
      protected function §]!S§(param1:String) : void
      {
         (§`!H§.getItemByName("Button_Resume") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_Replay") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_Menu") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_Help") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_Sound") as §>"0§).setComponentVisualState(param1);
      }
      
      protected function § N§() : void
      {
         this.§;$;§();
         this.§""P§ = §&"H§.§6!§.§5!j§(§&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_PauseMenu") as §[#K§,{"x":§9"q§},null,0.25),§&"H§.§6!§.§6C§((§`!H§.getItemByName("MovieClip_DarkBG") as §@N§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§""P§.onComplete = this.§[#l§;
         this.§""P§.play();
      }
      
      protected function §[#l§() : void
      {
         §1"h§(this.getPlayState());
         this.§;$;§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;$;§();
         this.§]!S§(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§4!_§ = null;
         switch(param2)
         {
            case "HELP":
               this.§ N§();
               for each(_loc6_ in §3#U§.§#$4§.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.§<!e§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §1"h§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§ N§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §!"p§.§>#p§();
               §1"h§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsBase.§5!p§();
               AngryBirdsBase.§,7§(_loc4_);
               §`!H§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§3#U§.§3#=§();
               §3#U§.§-#p§(_loc5_);
               §`!H§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§5#p§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §8"o§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §1S§.STATE_NAME;
      }
   }
}
