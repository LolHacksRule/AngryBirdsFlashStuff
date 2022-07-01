package §?!E§
{
   import §&!>§.§3!k§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §0I§.§3]§;
   import §;!b§.§%>§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §@#§.§4!O§;
   import §@#§.§5!"§;
   import §@#§.§9!'§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import com.angrybirds.§6U§;
   
   public class §'!-§ extends §5"#§
   {
      
      public static const §]A§:Number = -250;
      
      public static const §+B§:String = "PauseState";
       
      
      protected var §+x§:§4!N§ = null;
      
      public function §'!-§(param1:§=!o§, param2:§%>§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§,"2§();
         §6U§.§+_§.background.§83§();
         this.§2k§();
      }
      
      protected function §2k§() : void
      {
         §#2§.getItemByName("Button_Help").setVisibility(false);
         §#2§.getItemByName("Button_Sound").setVisibility(false);
         §#2§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function § t§() : void
      {
         if(this.§+x§)
         {
            this.§+x§.stop();
            this.§+x§ = null;
         }
      }
      
      protected function §,"2§() : void
      {
         if(§+o§.currentLevelNumericName != null)
         {
            (§#2§.getItemByName("TextField_LevelName") as §>L§).§<!=§.text = §+o§.currentLevelNumericName;
         }
         (§#2§.getItemByName("Container_PauseMenu") as §9!'§).x = §]A§;
         this.§,!@§(false);
         §6U§.pause();
         §#2§.getItemByName("MovieClip_SoundsOff").setVisibility(!§-!l§.§&!<§());
         this.§ t§();
         this.§+x§ = §0!M§.§?!+§.§4!t§(§0!M§.§?!+§.§3d§(§#2§.getItemByName("Container_PauseMenu") as §9!'§,{"x":0},null,0.25),§0!M§.§?!+§.§3d§((§#2§.getItemByName("MovieClip_DarkBG") as §5!"§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§+x§.onComplete = this.§"!U§;
         this.§+x§.play();
      }
      
      protected function §"!U§() : void
      {
         this.§,!@§(true);
         this.§ t§();
      }
      
      protected function §,!@§(param1:Boolean) : void
      {
         (§#2§.getItemByName("Button_Resume") as §4!O§).setEnabled(param1);
         (§#2§.getItemByName("Button_Replay") as §4!O§).setEnabled(param1);
         (§#2§.getItemByName("Button_Menu") as §4!O§).setEnabled(param1);
         (§#2§.getItemByName("Button_Help") as §4!O§).setEnabled(param1);
         (§#2§.getItemByName("Button_Sound") as §4!O§).setEnabled(param1);
      }
      
      protected function §"!W§(param1:String) : void
      {
         (§#2§.getItemByName("Button_Resume") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_Replay") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_Menu") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_Help") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_Sound") as §4!O§).setComponentVisualState(param1);
      }
      
      protected function §3!t§() : void
      {
         this.§ t§();
         this.§+x§ = §0!M§.§?!+§.§4!t§(§0!M§.§?!+§.§3d§(§#2§.getItemByName("Container_PauseMenu") as §9!'§,{"x":§]A§},null,0.25),§0!M§.§?!+§.§3d§((§#2§.getItemByName("MovieClip_DarkBG") as §5!"§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§+x§.onComplete = this.§]!C§;
         this.§+x§.play();
      }
      
      protected function §]!C§() : void
      {
         §0!w§(this.§=!+§());
         this.§ t§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ t§();
         this.§"!W§(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§3]§ = null;
         switch(param2)
         {
            case "HELP":
               this.§3!t§();
               for each(_loc6_ in §6U§.§+_§.slingshot.§"7§)
               {
                  §-!l§.§"x§.§?"&§.userProgress.setTutorialSeen(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §0!w§(this.§<"#§());
               break;
            case "RESUME_LEVEL":
               this.§3!t§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §3!k§.§#!3§();
               §0!w§(this.§2!q§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§-!l§.§&!<§();
               §-!l§.setSoundsEnabled(_loc4_);
               §#2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§6U§.§2!,§();
               §6U§.§^!9§(_loc5_);
               §#2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §-!l§.§"x§.§3l§();
         }
      }
      
      protected function §=!+§() : String
      {
         return StatePlay.§+B§;
      }
      
      protected function §<"#§() : String
      {
         return §62§.§+B§;
      }
      
      protected function §2!q§() : String
      {
         return §]l§.§+B§;
      }
   }
}
