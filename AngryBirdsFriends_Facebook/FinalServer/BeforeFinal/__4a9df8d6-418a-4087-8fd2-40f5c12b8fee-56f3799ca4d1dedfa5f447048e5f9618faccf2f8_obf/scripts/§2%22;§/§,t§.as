package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §8#K§.§3Z§;
   import §>2§.§>#!§;
   import §`#@§.§7n§;
   
   public class §,t§ extends §7!z§
   {
      
      public static const §&#<§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §8$6§:§7$C§ = null;
      
      public function §,t§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§=$%§();
         §7n§.§6#K§.background.stopAmbientSound();
         this.§!#Q§();
      }
      
      protected function §!#Q§() : void
      {
         §[$5§.getItemByName("Button_Help").setVisibility(false);
         §[$5§.getItemByName("Button_Sound").setVisibility(false);
         §[$5§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §+"7§() : void
      {
         if(this.§8$6§)
         {
            this.§8$6§.stop();
            this.§8$6§ = null;
         }
      }
      
      protected function §=$%§() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
            (§[$5§.getItemByName("TextField_LevelName") as §`"$§).§2"<§.text = mLevelManager.currentLevelNumericName;
         }
         (§[$5§.getItemByName("Container_PauseMenu") as §]$+§).x = §&#<§;
         this.§=#%§(false);
         §7n§.pause();
         §[$5§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§"!v§());
         this.§+"7§();
         this.§8$6§ = §"!&§.§`"H§.§;#r§(§"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_PauseMenu") as §]$+§,{"x":0},null,0.25),§"!&§.§`"H§.§1"W§((§[$5§.getItemByName("MovieClip_DarkBG") as §'!`§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§8$6§.onComplete = this.§;!O§;
         this.§8$6§.play();
      }
      
      protected function §;!O§() : void
      {
         this.§=#%§(true);
         this.§+"7§();
      }
      
      protected function §=#%§(param1:Boolean) : void
      {
         (§[$5§.getItemByName("Button_Resume") as § !>§).setEnabled(param1);
         (§[$5§.getItemByName("Button_Replay") as § !>§).setEnabled(param1);
         (§[$5§.getItemByName("Button_Menu") as § !>§).setEnabled(param1);
         (§[$5§.getItemByName("Button_Help") as § !>§).setEnabled(param1);
         (§[$5§.getItemByName("Button_Sound") as § !>§).setEnabled(param1);
      }
      
      protected function §];§(param1:String) : void
      {
         (§[$5§.getItemByName("Button_Resume") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_Replay") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_Menu") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_Help") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_Sound") as § !>§).setComponentVisualState(param1);
      }
      
      protected function §9"-§() : void
      {
         this.§+"7§();
         this.§8$6§ = §"!&§.§`"H§.§;#r§(§"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_PauseMenu") as §]$+§,{"x":§&#<§},null,0.25),§"!&§.§`"H§.§1"W§((§[$5§.getItemByName("MovieClip_DarkBG") as §'!`§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§8$6§.onComplete = this.§4#+§;
         this.§8$6§.play();
      }
      
      protected function §4#+§() : void
      {
         §1!L§(this.getPlayState());
         this.§+"7§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+"7§();
         this.§];§(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§>#!§ = null;
         switch(param2)
         {
            case "HELP":
               this.§9"-§();
               for each(_loc6_ in §7n§.§6#K§.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.§`"B§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §1!L§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§9"-§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §3Z§.§3j§();
               §1!L§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsBase.§"!v§();
               AngryBirdsBase.§^"?§(_loc4_);
               §[$5§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§7n§.§?$5§();
               §7n§.§4#P§(_loc5_);
               §[$5§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§1a§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §9!R§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §9#7§.STATE_NAME;
      }
   }
}
