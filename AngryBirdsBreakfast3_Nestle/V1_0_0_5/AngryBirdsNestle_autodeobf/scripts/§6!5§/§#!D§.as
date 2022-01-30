package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §@!6§.§3!5§;
   import §[!F§.§1c§;
   import §[!F§.§3j§;
   import §[!F§.§>""§;
   import §[!F§.§^!g§;
   import §]k§.§-! §;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   
   public class §#!D§ extends §3!3§
   {
      
      public static const §<=§:Number = -250;
      
      public static const §7w§:String = "PauseState";
       
      
      protected var §'n§:§<!'§ = null;
      
      public function §#!D§(param1:§ q§, param2:§>u§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§;!p§();
         §6!E§.§7I§.background.§9!O§();
         this.§+W§();
      }
      
      protected function §+W§() : void
      {
         § !z§.getItemByName("Button_Help").setVisibility(false);
         § !z§.getItemByName("Button_Sound").setVisibility(false);
         § !z§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §]5§() : void
      {
         if(this.§'n§)
         {
            this.§'n§.stop();
            this.§'n§ = null;
         }
      }
      
      protected function §;!p§() : void
      {
         if(§="4§.currentLevelNumericName != null)
         {
            (§ !z§.getItemByName("TextField_LevelName") as §1c§).§ e§.text = §="4§.currentLevelNumericName;
         }
         (§ !z§.getItemByName("Container_PauseMenu") as §3j§).x = §<=§;
         this.§"S§(false);
         §6!E§.pause();
         § !z§.getItemByName("MovieClip_SoundsOff").setVisibility(!§-!I§.§6!_§());
         this.§]5§();
         this.§'n§ = §3`§.§<"5§.§,!k§(§3`§.§<"5§.§^g§(§ !z§.getItemByName("Container_PauseMenu") as §3j§,{"x":0},null,0.25),§3`§.§<"5§.§^g§((§ !z§.getItemByName("MovieClip_DarkBG") as §>""§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§'n§.onComplete = this.§#z§;
         this.§'n§.play();
      }
      
      protected function §#z§() : void
      {
         this.§"S§(true);
         this.§]5§();
      }
      
      protected function §"S§(param1:Boolean) : void
      {
         (§ !z§.getItemByName("Button_Resume") as §^!g§).setEnabled(param1);
         (§ !z§.getItemByName("Button_Replay") as §^!g§).setEnabled(param1);
         (§ !z§.getItemByName("Button_Menu") as §^!g§).setEnabled(param1);
         (§ !z§.getItemByName("Button_Help") as §^!g§).setEnabled(param1);
         (§ !z§.getItemByName("Button_Sound") as §^!g§).setEnabled(param1);
      }
      
      protected function §-!H§(param1:String) : void
      {
         (§ !z§.getItemByName("Button_Resume") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_Replay") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_Menu") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_Help") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_Sound") as §^!g§).setComponentVisualState(param1);
      }
      
      protected function §=!t§() : void
      {
         this.§]5§();
         this.§'n§ = §3`§.§<"5§.§,!k§(§3`§.§<"5§.§^g§(§ !z§.getItemByName("Container_PauseMenu") as §3j§,{"x":§<=§},null,0.25),§3`§.§<"5§.§^g§((§ !z§.getItemByName("MovieClip_DarkBG") as §>""§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§'n§.onComplete = this.§[!J§;
         this.§'n§.play();
      }
      
      protected function §[!J§() : void
      {
         §?n§(this.§+!j§());
         this.§]5§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]5§();
         this.§-!H§(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§-! § = null;
         switch(param2)
         {
            case "HELP":
               this.§=!t§();
               for each(_loc6_ in §6!E§.§7I§.slingshot.§-!7§)
               {
                  §-!I§.§[f§.§?4§.userProgress.setTutorialSeen(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §?n§(this.§8"0§());
               break;
            case "RESUME_LEVEL":
               this.§=!t§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §3!5§.§,!8§();
               §?n§(this.§9"1§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§-!I§.§6!_§();
               §-!I§.setSoundsEnabled(_loc4_);
               § !z§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§6!E§.§^A§();
               §6!E§.§!!T§(_loc5_);
               § !z§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §-!I§.§[f§.§?U§();
         }
      }
      
      protected function §+!j§() : String
      {
         return StatePlay.§7w§;
      }
      
      protected function §8"0§() : String
      {
         return §4!R§.§7w§;
      }
      
      protected function §9"1§() : String
      {
         return §^!+§.§7w§;
      }
   }
}
