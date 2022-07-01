package §`!6§
{
   import §3!!§.§+!F§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §3!!§.native;
   import §9![§.§1!i§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!a§.§5l§;
   import §@"1§.§8L§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   
   public class §;O§ extends §-!c§
   {
      
      public static const §-2§:Number = -250;
      
      public static const §]O§:String = "PauseState";
       
      
      protected var §[o§:§]!X§ = null;
      
      public function §;O§(param1:§5l§, param2:§-!<§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§?&§();
         §4!l§.§,!8§.background.§?§();
         this.§#!z§();
      }
      
      protected function §#!z§() : void
      {
         §!^§.getItemByName("Button_Help").setVisibility(false);
         §!^§.getItemByName("Button_Sound").setVisibility(false);
         §!^§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §3"§() : void
      {
         if(this.§[o§)
         {
            this.§[o§.stop();
            this.§[o§ = null;
         }
      }
      
      protected function §?&§() : void
      {
         if(§^!§.currentLevelNumericName != null)
         {
            (§!^§.getItemByName("TextField_LevelName") as native).§&!K§.text = §^!§.currentLevelNumericName;
         }
         (§!^§.getItemByName("Container_PauseMenu") as §5" §).x = §-2§;
         this.§'!i§(false);
         §4!l§.pause();
         §!^§.getItemByName("MovieClip_SoundsOff").setVisibility(!§&N§.§3!M§());
         this.§3"§();
         this.§[o§ = §`!F§.§=J§.§]W§(§`!F§.§=J§.§-r§(§!^§.getItemByName("Container_PauseMenu") as §5" §,{"x":0},null,0.25),§`!F§.§=J§.§-r§((§!^§.getItemByName("MovieClip_DarkBG") as §+!F§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§[o§.onComplete = this.§"!y§;
         this.§[o§.play();
      }
      
      protected function §"!y§() : void
      {
         this.§'!i§(true);
         this.§3"§();
      }
      
      protected function §'!i§(param1:Boolean) : void
      {
         (§!^§.getItemByName("Button_Resume") as §?v§).setEnabled(param1);
         (§!^§.getItemByName("Button_Replay") as §?v§).setEnabled(param1);
         (§!^§.getItemByName("Button_Menu") as §?v§).setEnabled(param1);
         (§!^§.getItemByName("Button_Help") as §?v§).setEnabled(param1);
         (§!^§.getItemByName("Button_Sound") as §?v§).setEnabled(param1);
      }
      
      protected function §"!>§(param1:String) : void
      {
         (§!^§.getItemByName("Button_Resume") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_Replay") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_Menu") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_Help") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_Sound") as §?v§).setComponentVisualState(param1);
      }
      
      protected function §=!e§() : void
      {
         this.§3"§();
         this.§[o§ = §`!F§.§=J§.§]W§(§`!F§.§=J§.§-r§(§!^§.getItemByName("Container_PauseMenu") as §5" §,{"x":§-2§},null,0.25),§`!F§.§=J§.§-r§((§!^§.getItemByName("MovieClip_DarkBG") as §+!F§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§[o§.onComplete = this.§53§;
         this.§[o§.play();
      }
      
      protected function §53§() : void
      {
         §8=§(this.§&!9§());
         this.§3"§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§3"§();
         this.§"!>§(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§8L§ = null;
         switch(param2)
         {
            case "HELP":
               this.§=!e§();
               for each(_loc6_ in §4!l§.§,!8§.slingshot.§1%§)
               {
                  §&N§.§#Y§.§`"$§.userProgress.setTutorialSeen(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §8=§(this.§=!Y§());
               break;
            case "RESUME_LEVEL":
               this.§=!e§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §1!i§.§ !S§();
               §8=§(this.§8!+§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§&N§.§3!M§();
               §&N§.setSoundsEnabled(_loc4_);
               §!^§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§4!l§.§0!J§();
               §4!l§.§>"§(_loc5_);
               §!^§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §&N§.§#Y§.§&<§();
         }
      }
      
      protected function §&!9§() : String
      {
         return StatePlay.§]O§;
      }
      
      protected function §=!Y§() : String
      {
         return §-%§.§]O§;
      }
      
      protected function §8!+§() : String
      {
         return §?E§.§]O§;
      }
   }
}
