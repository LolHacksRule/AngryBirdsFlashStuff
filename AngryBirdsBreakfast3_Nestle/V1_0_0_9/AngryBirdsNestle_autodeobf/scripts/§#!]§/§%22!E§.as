package §#!]§
{
   import § 2§.§`!d§;
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §4Y§.§7`§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   
   public class §"!E§ extends §3_§
   {
      
      public static const §^"4§:Number = -250;
      
      public static const §]!y§:String = "PauseState";
       
      
      protected var §&A§:§^!T§ = null;
      
      public function §"!E§(param1:§-g§, param2:§^!_§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§;!h§();
         §`i§.§&!L§.background.§6!n§();
         this.§6!f§();
      }
      
      protected function §6!f§() : void
      {
         §4!q§.getItemByName("Button_Help").setVisibility(false);
         §4!q§.getItemByName("Button_Sound").setVisibility(false);
         §4!q§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §>"7§() : void
      {
         if(this.§&A§)
         {
            this.§&A§.stop();
            this.§&A§ = null;
         }
      }
      
      protected function §;!h§() : void
      {
         if(§#n§.currentLevelNumericName != null)
         {
            (§4!q§.getItemByName("TextField_LevelName") as §&0§).§"S§.text = §#n§.currentLevelNumericName;
         }
         (§4!q§.getItemByName("Container_PauseMenu") as §%n§).x = §^"4§;
         this.§06§(false);
         §`i§.pause();
         §4!q§.getItemByName("MovieClip_SoundsOff").setVisibility(!§-!2§.§[!A§());
         this.§>"7§();
         this.§&A§ = §%"!§.§&!;§.§ !V§(§%"!§.§&!;§.§"!]§(§4!q§.getItemByName("Container_PauseMenu") as §%n§,{"x":0},null,0.25),§%"!§.§&!;§.§"!]§((§4!q§.getItemByName("MovieClip_DarkBG") as §7`§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§&A§.onComplete = this.§2"#§;
         this.§&A§.play();
      }
      
      protected function §2"#§() : void
      {
         this.§06§(true);
         this.§>"7§();
      }
      
      protected function §06§(param1:Boolean) : void
      {
         (§4!q§.getItemByName("Button_Resume") as § `§).setEnabled(param1);
         (§4!q§.getItemByName("Button_Replay") as § `§).setEnabled(param1);
         (§4!q§.getItemByName("Button_Menu") as § `§).setEnabled(param1);
         (§4!q§.getItemByName("Button_Help") as § `§).setEnabled(param1);
         (§4!q§.getItemByName("Button_Sound") as § `§).setEnabled(param1);
      }
      
      protected function §4e§(param1:String) : void
      {
         (§4!q§.getItemByName("Button_Resume") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_Replay") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_Menu") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_Help") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_Sound") as § `§).setComponentVisualState(param1);
      }
      
      protected function §[3§() : void
      {
         this.§>"7§();
         this.§&A§ = §%"!§.§&!;§.§ !V§(§%"!§.§&!;§.§"!]§(§4!q§.getItemByName("Container_PauseMenu") as §%n§,{"x":§^"4§},null,0.25),§%"!§.§&!;§.§"!]§((§4!q§.getItemByName("MovieClip_DarkBG") as §7`§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§&A§.onComplete = this.§1"2§;
         this.§&A§.play();
      }
      
      protected function §1"2§() : void
      {
         §]a§(this.§-!<§());
         this.§>"7§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§>"7§();
         this.§4e§(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§`!d§ = null;
         switch(param2)
         {
            case "HELP":
               this.§[3§();
               for each(_loc6_ in §`i§.§&!L§.slingshot.§--§)
               {
                  §-!2§.§7O§.§ !n§.userProgress.setTutorialSeen(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §]a§(this.§9"&§());
               break;
            case "RESUME_LEVEL":
               this.§[3§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §4!@§.§ true§();
               §]a§(this.§'!'§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§-!2§.§[!A§();
               §-!2§.setSoundsEnabled(_loc4_);
               §4!q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§`i§.§-!v§();
               §`i§.§;![§(_loc5_);
               §4!q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §-!2§.§7O§.§#!p§();
         }
      }
      
      protected function §-!<§() : String
      {
         return StatePlay.§]!y§;
      }
      
      protected function §9"&§() : String
      {
         return §6U§.§]!y§;
      }
      
      protected function §'!'§() : String
      {
         return §=A§.§]!y§;
      }
   }
}
