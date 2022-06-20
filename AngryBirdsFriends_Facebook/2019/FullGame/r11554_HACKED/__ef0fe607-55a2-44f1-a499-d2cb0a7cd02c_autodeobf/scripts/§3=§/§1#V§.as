package §3=§
{
   import § !D§.§;M§;
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   
   public class §1#V§ extends §-"4§
   {
      
      public static const §2_§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §!![§:§]%§ = null;
      
      public function §1#V§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§throw§();
         §%"T§.§;`§.background.stopAmbientSound();
         this.§]!h§();
      }
      
      protected function §]!h§() : void
      {
         §<"`§.getItemByName("Button_Help").setVisibility(false);
         §<"`§.getItemByName("Button_Sound").setVisibility(false);
         §<"`§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §2!]§() : void
      {
         if(this.§!![§)
         {
            this.§!![§.stop();
            this.§!![§ = null;
         }
      }
      
      protected function §throw§() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
            (§<"`§.getItemByName("TextField_LevelName") as §-#j§).§^g§.text = mLevelManager.currentLevelNumericName;
         }
         (§<"`§.getItemByName("Container_PauseMenu") as §<c§).x = §2_§;
         this.§%B§(false);
         §%"T§.pause();
         §<"`§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§!"4§());
         this.§2!]§();
         this.§!![§ = §'#n§.§?q§.§set §(§'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_PauseMenu") as §<c§,{"x":0},null,0.25),§'#n§.§?q§.§9!N§((§<"`§.getItemByName("MovieClip_DarkBG") as §>#8§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§!![§.onComplete = this.§"#I§;
         this.§!![§.play();
      }
      
      protected function §"#I§() : void
      {
         this.§%B§(true);
         this.§2!]§();
      }
      
      protected function §%B§(param1:Boolean) : void
      {
         (§<"`§.getItemByName("Button_Resume") as §"S§).setEnabled(param1);
         (§<"`§.getItemByName("Button_Replay") as §"S§).setEnabled(param1);
         (§<"`§.getItemByName("Button_Menu") as §"S§).setEnabled(param1);
         (§<"`§.getItemByName("Button_Help") as §"S§).setEnabled(param1);
         (§<"`§.getItemByName("Button_Sound") as §"S§).setEnabled(param1);
      }
      
      protected function §2"`§(param1:String) : void
      {
         (§<"`§.getItemByName("Button_Resume") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_Replay") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_Menu") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_Help") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_Sound") as §"S§).setComponentVisualState(param1);
      }
      
      protected function §]#n§() : void
      {
         this.§2!]§();
         this.§!![§ = §'#n§.§?q§.§set §(§'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_PauseMenu") as §<c§,{"x":§2_§},null,0.25),§'#n§.§?q§.§9!N§((§<"`§.getItemByName("MovieClip_DarkBG") as §>#8§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§!![§.onComplete = this.§-#`§;
         this.§!![§.play();
      }
      
      protected function §-#`§() : void
      {
         §%D§(this.getPlayState());
         this.§2!]§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§2!]§();
         this.§2"`§(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§;M§ = null;
         switch(param2)
         {
            case "HELP":
               this.§]#n§();
               for each(_loc6_ in §%"T§.§;`§.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.§`#M§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §%D§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§]#n§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §[#%§.§^L§();
               §%D§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsBase.§!"4§();
               AngryBirdsBase.§0!o§(_loc4_);
               §<"`§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§%"T§.§=!'§();
               §%"T§.§0"q§(_loc5_);
               §<"`§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§3'§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §#$@§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §8$8§.STATE_NAME;
      }
   }
}
