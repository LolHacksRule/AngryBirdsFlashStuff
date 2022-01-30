package §,#§
{
   import §"!G§.§3!f§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §9G§.§1!a§;
   import §;"+§.§"!I§;
   import §;"+§.§0?§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import com.angrybirds.§4"6§;
   
   public class §'!e§ extends §@!4§
   {
      
      public static const §+!n§:Number = -250;
      
      public static const §'u§:String = "PauseState";
       
      
      protected var §!!I§:§["$§ = null;
      
      public function §'!e§(param1:§3"&§, param2:§3!f§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§;!r§();
         §4"6§.§;!k§.background.§-!J§();
         this.§2!z§();
      }
      
      protected function §2!z§() : void
      {
         §^!6§.getItemByName("Button_Help").setVisibility(false);
         §^!6§.getItemByName("Button_Sound").setVisibility(false);
         §^!6§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §`M§() : void
      {
         if(this.§!!I§)
         {
            this.§!!I§.stop();
            this.§!!I§ = null;
         }
      }
      
      protected function §;!r§() : void
      {
         if(§!3§.currentLevelNumericName != null)
         {
            (§^!6§.getItemByName("TextField_LevelName") as §"!I§).§6s§.text = §!3§.currentLevelNumericName;
         }
         (§^!6§.getItemByName("Container_PauseMenu") as §^!i§).x = §+!n§;
         this.§;!i§(false);
         §4"6§.pause();
         §^!6§.getItemByName("MovieClip_SoundsOff").setVisibility(!§-O§.§^j§());
         this.§`M§();
         this.§!!I§ = §6!u§.§"e§.§4M§(§6!u§.§"e§.§0!O§(§^!6§.getItemByName("Container_PauseMenu") as §^!i§,{"x":0},null,0.25),§6!u§.§"e§.§0!O§((§^!6§.getItemByName("MovieClip_DarkBG") as §0?§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§!!I§.onComplete = this.§#§;
         this.§!!I§.play();
      }
      
      protected function §#§() : void
      {
         this.§;!i§(true);
         this.§`M§();
      }
      
      protected function §;!i§(param1:Boolean) : void
      {
         (§^!6§.getItemByName("Button_Resume") as §9!M§).setEnabled(param1);
         (§^!6§.getItemByName("Button_Replay") as §9!M§).setEnabled(param1);
         (§^!6§.getItemByName("Button_Menu") as §9!M§).setEnabled(param1);
         (§^!6§.getItemByName("Button_Help") as §9!M§).setEnabled(param1);
         (§^!6§.getItemByName("Button_Sound") as §9!M§).setEnabled(param1);
      }
      
      protected function §>r§(param1:String) : void
      {
         (§^!6§.getItemByName("Button_Resume") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_Replay") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_Menu") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_Help") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_Sound") as §9!M§).setComponentVisualState(param1);
      }
      
      protected function §0#§() : void
      {
         this.§`M§();
         this.§!!I§ = §6!u§.§"e§.§4M§(§6!u§.§"e§.§0!O§(§^!6§.getItemByName("Container_PauseMenu") as §^!i§,{"x":§+!n§},null,0.25),§6!u§.§"e§.§0!O§((§^!6§.getItemByName("MovieClip_DarkBG") as §0?§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§!!I§.onComplete = this.§]""§;
         this.§!!I§.play();
      }
      
      protected function §]""§() : void
      {
         §'"6§(this.§0"4§());
         this.§`M§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§`M§();
         this.§>r§(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§1!a§ = null;
         switch(param2)
         {
            case "HELP":
               this.§0#§();
               for each(_loc6_ in §4"6§.§;!k§.slingshot.§set §)
               {
                  §-O§.§5!1§.§]u§.userProgress.setTutorialSeen(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §'"6§(this.§9!&§());
               break;
            case "RESUME_LEVEL":
               this.§0#§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §]d§.§]!u§();
               §'"6§(this.§4;§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§-O§.§^j§();
               §-O§.setSoundsEnabled(_loc4_);
               §^!6§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§4"6§.§4!f§();
               §4"6§.§;!7§(_loc5_);
               §^!6§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §-O§.§5!1§.§0`§();
         }
      }
      
      protected function §0"4§() : String
      {
         return StatePlay.§'u§;
      }
      
      protected function §9!&§() : String
      {
         return § K§.§'u§;
      }
      
      protected function §4;§() : String
      {
         return §=%§.§'u§;
      }
   }
}
