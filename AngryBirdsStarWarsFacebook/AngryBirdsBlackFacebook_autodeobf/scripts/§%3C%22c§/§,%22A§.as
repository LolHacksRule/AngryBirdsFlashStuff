package §<"c§
{
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§6!D§;
   import §+D§.§^"m§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§`"]§;
   import com.angrybirds.§,!q§;
   
   public class §,"A§ extends §]"_§
   {
      
      public static const §9k§:Number = -250;
      
      public static const §^!7§:String = "PauseState";
       
      
      protected var §@!`§:§[#R§ = null;
      
      public function §,"A§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§3!q§();
         §,!q§.§9!,§.background.stopAmbientSound();
         this.§8"u§();
      }
      
      protected function §8"u§() : void
      {
         §@;§.getItemByName("Button_Help").setVisibility(false);
         §@;§.getItemByName("Button_Sound").setVisibility(false);
         §@;§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §8!m§() : void
      {
         if(this.§@!`§)
         {
            this.§@!`§.stop();
            this.§@!`§ = null;
         }
      }
      
      protected function §3!q§() : void
      {
         if(§+!b§.currentLevelNumericName != null)
         {
            (§@;§.getItemByName("TextField_LevelName") as §6!D§).§13§.text = §+!b§.currentLevelNumericName;
         }
         (§@;§.getItemByName("Container_PauseMenu") as § #^§).x = §9k§;
         this.§;"]§(false);
         §,!q§.pause();
         §@;§.getItemByName("MovieClip_SoundsOff").setVisibility(!§4#;§.§]q§());
         this.§8!m§();
         this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(§@;§.getItemByName("Container_PauseMenu") as § #^§,{"x":0},null,0.25),§-#C§.§%!E§.§^!H§((§@;§.getItemByName("MovieClip_DarkBG") as §0"$§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§@!`§.onComplete = this.§ "6§;
         this.§@!`§.play();
      }
      
      protected function § "6§() : void
      {
         this.§;"]§(true);
         this.§8!m§();
      }
      
      protected function §;"]§(param1:Boolean) : void
      {
         (§@;§.getItemByName("Button_Resume") as §^"m§).setEnabled(param1);
         (§@;§.getItemByName("Button_Replay") as §^"m§).setEnabled(param1);
         (§@;§.getItemByName("Button_Menu") as §^"m§).setEnabled(param1);
         (§@;§.getItemByName("Button_Help") as §^"m§).setEnabled(param1);
         (§@;§.getItemByName("Button_Sound") as §^"m§).setEnabled(param1);
      }
      
      protected function §0"v§(param1:String) : void
      {
         (§@;§.getItemByName("Button_Resume") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_Replay") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_Menu") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_Help") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_Sound") as §^"m§).setComponentVisualState(param1);
      }
      
      protected function §8!@§() : void
      {
         this.§8!m§();
         this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(§@;§.getItemByName("Container_PauseMenu") as § #^§,{"x":§9k§},null,0.25),§-#C§.§%!E§.§^!H§((§@;§.getItemByName("MovieClip_DarkBG") as §0"$§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§@!`§.onComplete = this.§;!§;
         this.§@!`§.play();
      }
      
      protected function §;!§() : void
      {
         § g§(this.getPlayState());
         this.§8!m§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§8!m§();
         this.§0"v§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§`"]§ = null;
         switch(param2)
         {
            case "HELP":
               this.§8!@§();
               for each(_loc6_ in §,!q§.§9!,§.slingshot.§,!?§)
               {
                  §4#;§.singleton.dataModel.userProgress.§1!H§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               § g§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§8!@§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §?!r§.§0"#§();
               § g§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§4#;§.§]q§();
               §4#;§.§2!>§(_loc4_);
               §@;§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§,!q§.§0@§();
               §,!q§.§%Q§(_loc5_);
               §@;§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §4#;§.singleton.§5"q§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§^!7§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §+#?§.§^!7§;
      }
   }
}
