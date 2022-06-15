package §]§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § "L§.§23§;
   import § "L§.§7`§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §#g§.§1§;
   import §+`§.§%"q§;
   import §3"V§.§ b§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   
   public class §1#p§ extends §1$?§
   {
      
      public static const §0#B§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §0!k§:§@$-§ = null;
      
      public function §1#p§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§"#^§();
         §]$?§.§2#§.background.stopAmbientSound();
         this.§?$9§();
      }
      
      protected function §?$9§() : void
      {
         §;!w§.getItemByName("Button_Help").setVisibility(false);
         §;!w§.getItemByName("Button_Sound").setVisibility(false);
         §;!w§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §&#y§() : void
      {
         if(this.§0!k§)
         {
            this.§0!k§.stop();
            this.§0!k§ = null;
         }
      }
      
      protected function §"#^§() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
            (§;!w§.getItemByName("TextField_LevelName") as §7`§).§%!8§.text = mLevelManager.currentLevelNumericName;
         }
         (§;!w§.getItemByName("Container_PauseMenu") as §23§).x = §0#B§;
         this.§6#_§(false);
         §]$?§.pause();
         §;!w§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§;!Q§());
         this.§&#y§();
         this.§0!k§ = §6"W§.§+!,§.§8$>§(§6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_PauseMenu") as §23§,{"x":0},null,0.25),§6"W§.§+!,§.§9!n§((§;!w§.getItemByName("MovieClip_DarkBG") as §"!A§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§0!k§.onComplete = this.§1"k§;
         this.§0!k§.play();
      }
      
      protected function §1"k§() : void
      {
         this.§6#_§(true);
         this.§&#y§();
      }
      
      protected function §6#_§(param1:Boolean) : void
      {
         (§;!w§.getItemByName("Button_Resume") as §1"r§).setEnabled(param1);
         (§;!w§.getItemByName("Button_Replay") as §1"r§).setEnabled(param1);
         (§;!w§.getItemByName("Button_Menu") as §1"r§).setEnabled(param1);
         (§;!w§.getItemByName("Button_Help") as §1"r§).setEnabled(param1);
         (§;!w§.getItemByName("Button_Sound") as §1"r§).setEnabled(param1);
      }
      
      protected function §^h§(param1:String) : void
      {
         (§;!w§.getItemByName("Button_Resume") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_Replay") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_Menu") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_Help") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_Sound") as §1"r§).setComponentVisualState(param1);
      }
      
      protected function §&!_§() : void
      {
         this.§&#y§();
         this.§0!k§ = §6"W§.§+!,§.§8$>§(§6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_PauseMenu") as §23§,{"x":§0#B§},null,0.25),§6"W§.§+!,§.§9!n§((§;!w§.getItemByName("MovieClip_DarkBG") as §"!A§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§0!k§.onComplete = this.§,#s§;
         this.§0!k§.play();
      }
      
      protected function §,#s§() : void
      {
         §3#§(this.getPlayState());
         this.§&#y§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&#y§();
         this.§^h§(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§1#0§ = null;
         switch(param2)
         {
            case "HELP":
               this.§&!_§();
               for each(_loc6_ in §]$?§.§2#§.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.§=W§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §3#§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§&!_§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               § b§.§#! §();
               §3#§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsBase.§;!Q§();
               AngryBirdsBase.§"#R§(_loc4_);
               §;!w§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§]$?§.§4!q§();
               §]$?§.§-!$§(_loc5_);
               §;!w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§`<§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §8$C§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §#!$§.STATE_NAME;
      }
   }
}
