package §%"Q§
{
   import §"§.§1!T§;
   import §&!j§.§5#+§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §=Z§.§0%§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import §null §.§5#§;
   
   public class §#V§ extends §`!6§
   {
      
      public static const §2k§:Number = -250;
      
      public static const §-!U§:String = "PauseState";
       
      
      protected var §`&§:§%b§ = null;
      
      public function §#V§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§##!§();
         §<!J§.§=!%§.background.stopAmbientSound();
         this.§[w§();
      }
      
      protected function §[w§() : void
      {
         §^!b§.getItemByName("Button_Help").setVisibility(false);
         §^!b§.getItemByName("Button_Sound").setVisibility(false);
         §^!b§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §3!Y§() : void
      {
         if(this.§`&§)
         {
            this.§`&§.stop();
            this.§`&§ = null;
         }
      }
      
      protected function §##!§() : void
      {
         if(§'""§.currentLevelNumericName != null)
         {
            (§^!b§.getItemByName("TextField_LevelName") as §0%§).§9";§.text = §'""§.currentLevelNumericName;
         }
         (§^!b§.getItemByName("Container_PauseMenu") as §@!8§).x = §2k§;
         this.§4D§(false);
         §<!J§.pause();
         §^!b§.getItemByName("MovieClip_SoundsOff").setVisibility(!§4"#§.§-!;§());
         this.§3!Y§();
         this.§`&§ = §5!%§.§!6§.§!![§(§5!%§.§!6§.§4!M§(§^!b§.getItemByName("Container_PauseMenu") as §@!8§,{"x":0},null,0.25),§5!%§.§!6§.§4!M§((§^!b§.getItemByName("MovieClip_DarkBG") as §9!c§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§`&§.onComplete = this.§`!s§;
         this.§`&§.play();
      }
      
      protected function §`!s§() : void
      {
         this.§4D§(true);
         this.§3!Y§();
      }
      
      protected function §4D§(param1:Boolean) : void
      {
         (§^!b§.getItemByName("Button_Resume") as §;g§).setEnabled(param1);
         (§^!b§.getItemByName("Button_Replay") as §;g§).setEnabled(param1);
         (§^!b§.getItemByName("Button_Menu") as §;g§).setEnabled(param1);
         (§^!b§.getItemByName("Button_Help") as §;g§).setEnabled(param1);
         (§^!b§.getItemByName("Button_Sound") as §;g§).setEnabled(param1);
      }
      
      protected function §5!9§(param1:String) : void
      {
         (§^!b§.getItemByName("Button_Resume") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_Replay") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_Menu") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_Help") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_Sound") as §;g§).setComponentVisualState(param1);
      }
      
      protected function §,c§() : void
      {
         this.§3!Y§();
         this.§`&§ = §5!%§.§!6§.§!![§(§5!%§.§!6§.§4!M§(§^!b§.getItemByName("Container_PauseMenu") as §@!8§,{"x":§2k§},null,0.25),§5!%§.§!6§.§4!M§((§^!b§.getItemByName("MovieClip_DarkBG") as §9!c§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§`&§.onComplete = this.§''§;
         this.§`&§.play();
      }
      
      protected function §''§() : void
      {
         §`0§(this.getPlayState());
         this.§3!Y§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§3!Y§();
         this.§5!9§(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§1!T§ = null;
         switch(param2)
         {
            case "HELP":
               this.§,c§();
               for each(_loc6_ in §<!J§.§=!%§.slingshot.§&"P§)
               {
                  §4"#§.singleton.dataModel.userProgress.§-!m§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §`0§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§,c§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §=Q§.§!#,§();
               §`0§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§4"#§.§-!;§();
               §4"#§.§"W§(_loc4_);
               §^!b§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§<!J§.§]""§();
               §<!J§.§]c§(_loc5_);
               §^!b§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §4"#§.singleton.§^L§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§-!U§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §7"9§.§-!U§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §`=§.§-!U§;
      }
   }
}
