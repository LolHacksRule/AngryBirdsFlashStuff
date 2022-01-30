package §]!V§
{
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§%`§;
   import §>P§.§4!]§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §]A§.§0n§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   
   public class §3!2§ extends §>!9§
   {
      
      public static const §0!q§:Number = -250;
      
      public static const §+a§:String = "PauseState";
       
      
      protected var §&! §:§4`§ = null;
      
      public function §3!2§(param1:§5!1§, param2:§&S§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§9!a§();
         §#Z§.§'0§.background.§"!I§();
         this.§1g§();
      }
      
      protected function §1g§() : void
      {
         §5+§.getItemByName("Button_Help").setVisibility(false);
         §5+§.getItemByName("Button_Sound").setVisibility(false);
         §5+§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §^9§() : void
      {
         if(this.§&! §)
         {
            this.§&! §.stop();
            this.§&! § = null;
         }
      }
      
      protected function §9!a§() : void
      {
         if(§97§.currentLevelNumericName != null)
         {
            (§5+§.getItemByName("TextField_LevelName") as §%`§).§=!=§.text = §97§.currentLevelNumericName;
         }
         (§5+§.getItemByName("Container_PauseMenu") as §]"4§).x = §0!q§;
         this.§+"#§(false);
         §#Z§.pause();
         §5+§.getItemByName("MovieClip_SoundsOff").setVisibility(!§,!X§.§>m§());
         this.§^9§();
         this.§&! § = §"!d§.§>!P§.§'!5§(§"!d§.§>!P§.§7R§(§5+§.getItemByName("Container_PauseMenu") as §]"4§,{"x":0},null,0.25),§"!d§.§>!P§.§7R§((§5+§.getItemByName("MovieClip_DarkBG") as §4!]§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§&! §.onComplete = this.§^;§;
         this.§&! §.play();
      }
      
      protected function §^;§() : void
      {
         this.§+"#§(true);
         this.§^9§();
      }
      
      protected function §+"#§(param1:Boolean) : void
      {
         (§5+§.getItemByName("Button_Resume") as §73§).setEnabled(param1);
         (§5+§.getItemByName("Button_Replay") as §73§).setEnabled(param1);
         (§5+§.getItemByName("Button_Menu") as §73§).setEnabled(param1);
         (§5+§.getItemByName("Button_Help") as §73§).setEnabled(param1);
         (§5+§.getItemByName("Button_Sound") as §73§).setEnabled(param1);
      }
      
      protected function §3§(param1:String) : void
      {
         (§5+§.getItemByName("Button_Resume") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_Replay") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_Menu") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_Help") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_Sound") as §73§).setComponentVisualState(param1);
      }
      
      protected function §8j§() : void
      {
         this.§^9§();
         this.§&! § = §"!d§.§>!P§.§'!5§(§"!d§.§>!P§.§7R§(§5+§.getItemByName("Container_PauseMenu") as §]"4§,{"x":§0!q§},null,0.25),§"!d§.§>!P§.§7R§((§5+§.getItemByName("MovieClip_DarkBG") as §4!]§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§&! §.onComplete = this.§,!j§;
         this.§&! §.play();
      }
      
      protected function §,!j§() : void
      {
         §8!`§(this.§![§());
         this.§^9§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§^9§();
         this.§3§(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§0n§ = null;
         switch(param2)
         {
            case "HELP":
               this.§8j§();
               for each(_loc6_ in §#Z§.§'0§.slingshot.§3!Q§)
               {
                  §,!X§.§>!G§.§>!I§.userProgress.setTutorialSeen(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §8!`§(this.§2!1§());
               break;
            case "RESUME_LEVEL":
               this.§8j§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §%!c§.§0O§();
               §8!`§(this.§6h§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§,!X§.§>m§();
               §,!X§.setSoundsEnabled(_loc4_);
               §5+§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§#Z§.§-"5§();
               §#Z§.§?!m§(_loc5_);
               §5+§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §,!X§.§>!G§.§4I§();
         }
      }
      
      protected function §![§() : String
      {
         return StatePlay.§+a§;
      }
      
      protected function §2!1§() : String
      {
         return §5!h§.§+a§;
      }
      
      protected function §6h§() : String
      {
         return §&g§.§+a§;
      }
   }
}
