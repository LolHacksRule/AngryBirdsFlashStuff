package §9%§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §%"%§.§2Z§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §3"#§.§'"&§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§#`§;
   import §="<§.§'!j§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   
   public class §@p§ extends §>!s§
   {
      
      public static const §3!P§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §5!'§:§,4§ = null;
      
      public function §@p§(param1:§^!@§, param2:§2Z§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§?8§();
         §8k§.§;!]§.background.stopAmbientSound();
         this.§+s§();
      }
      
      protected function §+s§() : void
      {
         §%!A§.getItemByName("Button_Help").setVisibility(false);
         §%!A§.getItemByName("Button_Sound").setVisibility(false);
         §%!A§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §%y§() : void
      {
         if(this.§5!'§)
         {
            this.§5!'§.stop();
            this.§5!'§ = null;
         }
      }
      
      protected function §?8§() : void
      {
         if(§#"=§.currentLevelNumericName != null)
         {
            (§%!A§.getItemByName("TextField_LevelName") as §#`§).§';§.text = §#"=§.currentLevelNumericName;
         }
         (§%!A§.getItemByName("Container_PauseMenu") as §,"$§).x = §3!P§;
         this.§["F§(false);
         §8k§.pause();
         §%!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!§2&§.§6"#§());
         this.§%y§();
         this.§5!'§ = §"!t§.§3R§.§!!G§(§"!t§.§3R§.§2m§(§%!A§.getItemByName("Container_PauseMenu") as §,"$§,{"x":0},null,0.25),§"!t§.§3R§.§2m§((§%!A§.getItemByName("MovieClip_DarkBG") as §'!j§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§5!'§.onComplete = this.§`!7§;
         this.§5!'§.play();
      }
      
      protected function §`!7§() : void
      {
         this.§["F§(true);
         this.§%y§();
      }
      
      protected function §["F§(param1:Boolean) : void
      {
         (§%!A§.getItemByName("Button_Resume") as §87§).setEnabled(param1);
         (§%!A§.getItemByName("Button_Replay") as §87§).setEnabled(param1);
         (§%!A§.getItemByName("Button_Menu") as §87§).setEnabled(param1);
         (§%!A§.getItemByName("Button_Help") as §87§).setEnabled(param1);
         (§%!A§.getItemByName("Button_Sound") as §87§).setEnabled(param1);
      }
      
      protected function §>e§(param1:String) : void
      {
         (§%!A§.getItemByName("Button_Resume") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_Replay") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_Menu") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_Help") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_Sound") as §87§).setComponentVisualState(param1);
      }
      
      protected function §@K§() : void
      {
         this.§%y§();
         this.§5!'§ = §"!t§.§3R§.§!!G§(§"!t§.§3R§.§2m§(§%!A§.getItemByName("Container_PauseMenu") as §,"$§,{"x":§3!P§},null,0.25),§"!t§.§3R§.§2m§((§%!A§.getItemByName("MovieClip_DarkBG") as §'!j§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§5!'§.onComplete = this.§%m§;
         this.§5!'§.play();
      }
      
      protected function §%m§() : void
      {
         § !I§(this.§3P§());
         this.§%y§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§%y§();
         this.§>e§(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§'"&§ = null;
         switch(param2)
         {
            case "HELP":
               this.§@K§();
               for each(_loc6_ in §8k§.§;!]§.slingshot.mBirds)
               {
                  §2&§.§6o§.§2c§.userProgress.§7b§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               § !I§(this.§7T§());
               break;
            case "RESUME_LEVEL":
               this.§@K§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §<5§.§>!R§();
               § !I§(this.§#!K§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§2&§.§6"#§();
               §2&§.§3!J§(_loc4_);
               §%!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§8k§.§-D§();
               §8k§.§7!+§(_loc5_);
               §%!A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §2&§.§6o§.§>!9§();
         }
      }
      
      protected function §3P§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §7T§() : String
      {
         return §^! §.STATE_NAME;
      }
      
      protected function §#!K§() : String
      {
         return § §.STATE_NAME;
      }
   }
}
