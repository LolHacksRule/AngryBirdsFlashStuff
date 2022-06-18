package §94§
{
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §%#A§.§^!4§;
   import §&$!§.§+#!§;
   import §+!C§.§@"@§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §@#§.§^#Q§;
   
   public class §`"m§ extends §`"z§
   {
      
      public static const §,6§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §3#8§:§-#C§ = null;
      
      public function §`"m§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§9!W§();
         §!#A§.§#F§.background.stopAmbientSound();
         this.§;";§();
      }
      
      protected function §;";§() : void
      {
         §?Q§.getItemByName("Button_Help").setVisibility(false);
         §?Q§.getItemByName("Button_Sound").setVisibility(false);
         §?Q§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §!!m§() : void
      {
         if(this.§3#8§)
         {
            this.§3#8§.stop();
            this.§3#8§ = null;
         }
      }
      
      protected function §9!W§() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
            (§?Q§.getItemByName("TextField_LevelName") as §^!4§).§[!&§.text = mLevelManager.currentLevelNumericName;
         }
         (§?Q§.getItemByName("Container_PauseMenu") as §]!_§).x = §,6§;
         this.§5#v§(false);
         §!#A§.pause();
         §?Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§""$§());
         this.§!!m§();
         this.§3#8§ = §6"w§.§ "D§.§5"L§(§6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_PauseMenu") as §]!_§,{"x":0},null,0.25),§6"w§.§ "D§.§""3§((§?Q§.getItemByName("MovieClip_DarkBG") as §'=§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§3#8§.onComplete = this.§9=§;
         this.§3#8§.play();
      }
      
      protected function §9=§() : void
      {
         this.§5#v§(true);
         this.§!!m§();
      }
      
      protected function §5#v§(param1:Boolean) : void
      {
         (§?Q§.getItemByName("Button_Resume") as §,#w§).setEnabled(param1);
         (§?Q§.getItemByName("Button_Replay") as §,#w§).setEnabled(param1);
         (§?Q§.getItemByName("Button_Menu") as §,#w§).setEnabled(param1);
         (§?Q§.getItemByName("Button_Help") as §,#w§).setEnabled(param1);
         (§?Q§.getItemByName("Button_Sound") as §,#w§).setEnabled(param1);
      }
      
      protected function §%$#§(param1:String) : void
      {
         (§?Q§.getItemByName("Button_Resume") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_Replay") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_Menu") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_Help") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_Sound") as §,#w§).setComponentVisualState(param1);
      }
      
      protected function §3"8§() : void
      {
         this.§!!m§();
         this.§3#8§ = §6"w§.§ "D§.§5"L§(§6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_PauseMenu") as §]!_§,{"x":§,6§},null,0.25),§6"w§.§ "D§.§""3§((§?Q§.getItemByName("MovieClip_DarkBG") as §'=§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§3#8§.onComplete = this.§,"I§;
         this.§3#8§.play();
      }
      
      protected function §,"I§() : void
      {
         §5"p§(this.getPlayState());
         this.§!!m§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§!!m§();
         this.§%$#§(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§@"@§ = null;
         switch(param2)
         {
            case "HELP":
               this.§3"8§();
               for each(_loc6_ in §!#A§.§#F§.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.§&#z§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §5"p§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§3"8§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §!#&§.§^!2§();
               §5"p§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsBase.§""$§();
               AngryBirdsBase.§;l§(_loc4_);
               §?Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§!#A§.§-#?§();
               §!#A§.§-$>§(_loc5_);
               §?Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§6"0§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §9#P§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §7!c§.STATE_NAME;
      }
   }
}
