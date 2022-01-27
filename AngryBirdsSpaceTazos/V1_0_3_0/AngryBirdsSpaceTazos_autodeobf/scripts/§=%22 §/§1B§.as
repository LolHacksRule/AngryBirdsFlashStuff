package §=" §
{
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§%!J§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §,!7§.§8,§;
   import §3R§.§;!h§;
   import §4",§.§,!j§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §>"!§.§@!9§;
   
   public class §1B§ extends §[!B§
   {
      
      public static const §'a§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §6_§:§15§ = null;
      
      public function §1B§(param1:§,!j§, param2:§;l§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§`R§();
         §8!w§.§5!V§.background.stopAmbientSound();
         this.§>!l§();
      }
      
      protected function §>!l§() : void
      {
         §6!J§.getItemByName("Button_Help").setVisibility(false);
         §6!J§.getItemByName("Button_Sound").setVisibility(false);
         §6!J§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function § 7§() : void
      {
         if(this.§6_§)
         {
            this.§6_§.stop();
            this.§6_§ = null;
         }
      }
      
      protected function §`R§() : void
      {
         if(§]m§.currentLevelNumericName != null)
         {
            (§6!J§.getItemByName("TextField_LevelName") as §2a§).§%!%§.text = §]m§.currentLevelNumericName;
         }
         (§6!J§.getItemByName("Container_PauseMenu") as §5!k§).x = §'a§;
         this.§1!b§(false);
         §8!w§.pause();
         §6!J§.getItemByName("MovieClip_SoundsOff").setVisibility(!§&"<§.§8O§());
         this.§ 7§();
         this.§6_§ = §@F§.§8!J§.§!W§(§@F§.§8!J§.§&6§(§6!J§.getItemByName("Container_PauseMenu") as §5!k§,{"x":0},null,0.25),§@F§.§8!J§.§&6§((§6!J§.getItemByName("MovieClip_DarkBG") as §8,§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§6_§.onComplete = this.§`!-§;
         this.§6_§.play();
      }
      
      protected function §`!-§() : void
      {
         this.§1!b§(true);
         this.§ 7§();
      }
      
      protected function §1!b§(param1:Boolean) : void
      {
         (§6!J§.getItemByName("Button_Resume") as §%!J§).setEnabled(param1);
         (§6!J§.getItemByName("Button_Replay") as §%!J§).setEnabled(param1);
         (§6!J§.getItemByName("Button_Menu") as §%!J§).setEnabled(param1);
         (§6!J§.getItemByName("Button_Help") as §%!J§).setEnabled(param1);
         (§6!J§.getItemByName("Button_Sound") as §%!J§).setEnabled(param1);
      }
      
      protected function §%!B§(param1:String) : void
      {
         (§6!J§.getItemByName("Button_Resume") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_Replay") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_Menu") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_Help") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_Sound") as §%!J§).setComponentVisualState(param1);
      }
      
      protected function §%i§() : void
      {
         this.§ 7§();
         this.§6_§ = §@F§.§8!J§.§!W§(§@F§.§8!J§.§&6§(§6!J§.getItemByName("Container_PauseMenu") as §5!k§,{"x":§'a§},null,0.25),§@F§.§8!J§.§&6§((§6!J§.getItemByName("MovieClip_DarkBG") as §8,§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§6_§.onComplete = this.§`!3§;
         this.§6_§.play();
      }
      
      protected function §`!3§() : void
      {
         §'Q§(this.§2q§());
         this.§ 7§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ 7§();
         this.§%!B§(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§;!h§ = null;
         switch(param2)
         {
            case "HELP":
               this.§%i§();
               for each(_loc6_ in §8!w§.§5!V§.slingshot.mBirds)
               {
                  §&"<§.§<!7§.§,!9§.userProgress.§6"$§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §'Q§(this.§""5§());
               break;
            case "RESUME_LEVEL":
               this.§%i§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §@!9§.§["6§();
               §'Q§(this.§&P§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§&"<§.§8O§();
               §&"<§.§0!p§(_loc4_);
               §6!J§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§8!w§.§7!#§();
               §8!w§.§%!6§(_loc5_);
               §6!J§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §&"<§.§<!7§.§7!H§();
         }
      }
      
      protected function §2q§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §""5§() : String
      {
         return § Q§.STATE_NAME;
      }
      
      protected function §&P§() : String
      {
         return §]!"§.STATE_NAME;
      }
   }
}
