package §!X§
{
   import §""d§.§+">§;
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §5!q§.§+e§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   
   public class §]!z§ extends §@!?§
   {
      
      public static const §##"§:Number = -250;
      
      public static const §'#2§:String = "PauseState";
       
      
      protected var §'>§:§4!Q§ = null;
      
      public function §]!z§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§&!p§();
         §;!e§.§<x§.background.stopAmbientSound();
         this.§3!C§();
      }
      
      protected function §3!C§() : void
      {
         §>I§.getItemByName("Button_Help").setVisibility(false);
         §>I§.getItemByName("Button_Sound").setVisibility(false);
         §>I§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §0o§() : void
      {
         if(this.§'>§)
         {
            this.§'>§.stop();
            this.§'>§ = null;
         }
      }
      
      protected function §&!p§() : void
      {
         if(§ !p§.currentLevelNumericName != null)
         {
            (§>I§.getItemByName("TextField_LevelName") as §+">§).§?x§.text = § !p§.currentLevelNumericName;
         }
         (§>I§.getItemByName("Container_PauseMenu") as §,m§).x = §##"§;
         this.§9"!§(false);
         §;!e§.pause();
         §>I§.getItemByName("MovieClip_SoundsOff").setVisibility(!§;"@§.§"8§());
         this.§0o§();
         this.§'>§ = §41§.§-G§.§="t§(§41§.§-G§.§&#'§(§>I§.getItemByName("Container_PauseMenu") as §,m§,{"x":0},null,0.25),§41§.§-G§.§&#'§((§>I§.getItemByName("MovieClip_DarkBG") as §<`§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'>§.onComplete = this.§%x§;
         this.§'>§.play();
      }
      
      protected function §%x§() : void
      {
         this.§9"!§(true);
         this.§0o§();
      }
      
      protected function §9"!§(param1:Boolean) : void
      {
         (§>I§.getItemByName("Button_Resume") as §2"8§).setEnabled(param1);
         (§>I§.getItemByName("Button_Replay") as §2"8§).setEnabled(param1);
         (§>I§.getItemByName("Button_Menu") as §2"8§).setEnabled(param1);
         (§>I§.getItemByName("Button_Help") as §2"8§).setEnabled(param1);
         (§>I§.getItemByName("Button_Sound") as §2"8§).setEnabled(param1);
      }
      
      protected function §-!Q§(param1:String) : void
      {
         (§>I§.getItemByName("Button_Resume") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_Replay") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_Menu") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_Help") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_Sound") as §2"8§).setComponentVisualState(param1);
      }
      
      protected function §,J§() : void
      {
         this.§0o§();
         this.§'>§ = §41§.§-G§.§="t§(§41§.§-G§.§&#'§(§>I§.getItemByName("Container_PauseMenu") as §,m§,{"x":§##"§},null,0.25),§41§.§-G§.§&#'§((§>I§.getItemByName("MovieClip_DarkBG") as §<`§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'>§.onComplete = this.§<"R§;
         this.§'>§.play();
      }
      
      protected function §<"R§() : void
      {
         §0"B§(this.getPlayState());
         this.§0o§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0o§();
         this.§-!Q§(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§+e§ = null;
         switch(param2)
         {
            case "HELP":
               this.§,J§();
               for each(_loc6_ in §;!e§.§<x§.slingshot.§1#!§)
               {
                  §;"@§.singleton.dataModel.userProgress.§#!R§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §0"B§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§,J§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §@§.§+A§();
               §0"B§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§;"@§.§"8§();
               §;"@§.§+!5§(_loc4_);
               §>I§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§;!e§.§8!e§();
               §;!e§.§&U§(_loc5_);
               §>I§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §;"@§.singleton.§35§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§'#2§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §>!I§.§'#2§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §,"p§.§'#2§;
      }
   }
}
