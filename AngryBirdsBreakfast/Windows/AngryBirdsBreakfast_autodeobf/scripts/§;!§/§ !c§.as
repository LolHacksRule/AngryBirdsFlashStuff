package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§+!@§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import §@L§.§3!&§;
   import com.angrybirds.§&!"§;
   
   public class § !c§ extends §;" §
   {
      
      public static const §9C§:Number = -250;
      
      public static const §-!q§:String = "PauseState";
       
      
      protected var §`!Y§:§0]§ = null;
      
      public function § !c§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7L§();
         §&!"§.§1!D§.background.§#]§();
         this.§6!-§();
      }
      
      protected function §6!-§() : void
      {
         §?P§.getItemByName("Button_Help").setVisibility(false);
         §?P§.getItemByName("Button_Sound").setVisibility(false);
         §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §finally§() : void
      {
         if(this.§`!Y§)
         {
            this.§`!Y§.stop();
            this.§`!Y§ = null;
         }
      }
      
      protected function §7L§() : void
      {
         if(§&" §.currentLevelNumericName != null)
         {
            (§?P§.getItemByName("TextField_LevelName") as §+!@§).§"v§.text = §&" §.currentLevelNumericName;
         }
         (§?P§.getItemByName("Container_PauseMenu") as §"!a§).x = §9C§;
         this.§3!M§(false);
         §&!"§.pause();
         §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(!§6!!§.§2!c§());
         this.§finally§();
         this.§`!Y§ = §'^§.§2Z§.§7!%§(§'^§.§2Z§.§!!f§(§?P§.getItemByName("Container_PauseMenu") as §"!a§,{"x":0},null,0.25),§'^§.§2Z§.§!!f§((§?P§.getItemByName("MovieClip_DarkBG") as §6n§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§`!Y§.onComplete = this.§!!M§;
         this.§`!Y§.play();
      }
      
      protected function §!!M§() : void
      {
         this.§3!M§(true);
         this.§finally§();
      }
      
      protected function §3!M§(param1:Boolean) : void
      {
         (§?P§.getItemByName("Button_Resume") as §;§).setEnabled(param1);
         (§?P§.getItemByName("Button_Replay") as §;§).setEnabled(param1);
         (§?P§.getItemByName("Button_Menu") as §;§).setEnabled(param1);
         (§?P§.getItemByName("Button_Help") as §;§).setEnabled(param1);
         (§?P§.getItemByName("Button_Sound") as §;§).setEnabled(param1);
      }
      
      protected function §5O§(param1:String) : void
      {
         (§?P§.getItemByName("Button_Resume") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_Help") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_Sound") as §;§).setComponentVisualState(param1);
      }
      
      protected function §8<§() : void
      {
         this.§finally§();
         this.§`!Y§ = §'^§.§2Z§.§7!%§(§'^§.§2Z§.§!!f§(§?P§.getItemByName("Container_PauseMenu") as §"!a§,{"x":§9C§},null,0.25),§'^§.§2Z§.§!!f§((§?P§.getItemByName("MovieClip_DarkBG") as §6n§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§`!Y§.onComplete = this.§8u§;
         this.§`!Y§.play();
      }
      
      protected function §8u§() : void
      {
         §<f§(this.§1f§());
         this.§finally§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§finally§();
         this.§5O§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§3!&§ = null;
         switch(param2)
         {
            case "HELP":
               this.§8<§();
               for each(_loc6_ in §&!"§.§1!D§.slingshot.§06§)
               {
                  §6!!§.singleton.§<!S§.userProgress.setTutorialSeen(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §<f§(this.§8!w§());
               break;
            case "RESUME_LEVEL":
               this.§8<§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §'!c§.§&j§();
               §<f§(this.§0!Z§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§6!!§.§2!c§();
               §6!!§.§<=§(_loc4_);
               §?P§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§&!"§.§?!v§();
               §&!"§.§<8§(_loc5_);
               §?P§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §6!!§.singleton.§%!O§();
         }
      }
      
      protected function §1f§() : String
      {
         return StatePlay.§-!q§;
      }
      
      protected function §8!w§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §0!Z§() : String
      {
         return §4!9§.§-!q§;
      }
   }
}
