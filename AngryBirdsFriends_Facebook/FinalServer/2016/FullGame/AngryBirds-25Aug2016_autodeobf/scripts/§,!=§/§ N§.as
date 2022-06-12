package §,!=§
{
   import §#v§.§#!?§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §52§.§5!&§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §8§.§#$+§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   
   public class § N§ extends §7"S§
   {
      
      public static const §2$8§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §1x§:§+,§ = null;
      
      public function § N§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§'!G§();
         §>"$§.§3#'§.background.stopAmbientSound();
         this.§2+§();
      }
      
      protected function §2+§() : void
      {
         §!$§.getItemByName("Button_Help").setVisibility(false);
         §!$§.getItemByName("Button_Sound").setVisibility(false);
         §!$§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §<!Q§() : void
      {
         if(this.§1x§)
         {
            this.§1x§.stop();
            this.§1x§ = null;
         }
      }
      
      protected function §'!G§() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
            (§!$§.getItemByName("TextField_LevelName") as §]$!§).§@]§.text = mLevelManager.currentLevelNumericName;
         }
         (§!$§.getItemByName("Container_PauseMenu") as §0"<§).x = §2$8§;
         this.§#"'§(false);
         §>"$§.pause();
         §!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§-"W§());
         this.§<!Q§();
         this.§1x§ = §""Z§.§3!]§.§[$2§(§""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_PauseMenu") as §0"<§,{"x":0},null,0.25),§""Z§.§3!]§.§5"0§((§!$§.getItemByName("MovieClip_DarkBG") as §="T§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§1x§.onComplete = this.§#!T§;
         this.§1x§.play();
      }
      
      protected function §#!T§() : void
      {
         this.§#"'§(true);
         this.§<!Q§();
      }
      
      protected function §#"'§(param1:Boolean) : void
      {
         (§!$§.getItemByName("Button_Resume") as §=O§).setEnabled(param1);
         (§!$§.getItemByName("Button_Replay") as §=O§).setEnabled(param1);
         (§!$§.getItemByName("Button_Menu") as §=O§).setEnabled(param1);
         (§!$§.getItemByName("Button_Help") as §=O§).setEnabled(param1);
         (§!$§.getItemByName("Button_Sound") as §=O§).setEnabled(param1);
      }
      
      protected function §4,§(param1:String) : void
      {
         (§!$§.getItemByName("Button_Resume") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_Replay") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_Menu") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_Help") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_Sound") as §=O§).setComponentVisualState(param1);
      }
      
      protected function §-#Q§() : void
      {
         this.§<!Q§();
         this.§1x§ = §""Z§.§3!]§.§[$2§(§""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_PauseMenu") as §0"<§,{"x":§2$8§},null,0.25),§""Z§.§3!]§.§5"0§((§!$§.getItemByName("MovieClip_DarkBG") as §="T§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§1x§.onComplete = this.§>"I§;
         this.§1x§.play();
      }
      
      protected function §>"I§() : void
      {
         §7P§(this.getPlayState());
         this.§<!Q§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<!Q§();
         this.§4,§(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§5!&§ = null;
         switch(param2)
         {
            case "HELP":
               this.§-#Q§();
               for each(_loc6_ in §>"$§.§3#'§.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.§?!p§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §7P§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§-#Q§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §#$+§.§#$-§();
               §7P§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsBase.§-"W§();
               AngryBirdsBase.§<#K§(_loc4_);
               §!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§>"$§.§-$5§();
               §>"$§.§,#K§(_loc5_);
               §!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§&f§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §@#j§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §<!B§.STATE_NAME;
      }
   }
}
