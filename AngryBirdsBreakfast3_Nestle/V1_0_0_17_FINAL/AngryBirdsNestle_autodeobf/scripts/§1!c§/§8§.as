package §1!c§
{
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §@V§.§&#§;
   import §[!Z§.§>D§;
   
   public class §8§ extends §7X§
   {
      
      public static const §%n§:Number = -250;
      
      public static const §8"%§:String = "PauseState";
       
      
      protected var §5"3§:§]W§ = null;
      
      public function §8§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§function§();
         §@!S§.§2A§.background.§0"1§();
         this.§[!R§();
      }
      
      protected function §[!R§() : void
      {
         §^!T§.getItemByName("Button_Help").setVisibility(false);
         §^!T§.getItemByName("Button_Sound").setVisibility(false);
         §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §3G§() : void
      {
         if(this.§5"3§)
         {
            this.§5"3§.stop();
            this.§5"3§ = null;
         }
      }
      
      protected function §function§() : void
      {
         if(§4a§.currentLevelNumericName != null)
         {
            (§^!T§.getItemByName("TextField_LevelName") as §7!&§).§'!"§.text = §4a§.currentLevelNumericName;
         }
         (§^!T§.getItemByName("Container_PauseMenu") as §,6§).x = §%n§;
         this.§7!]§(false);
         §@!S§.pause();
         §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(!§ !4§.§4E§());
         this.§3G§();
         this.§5"3§ = §0!o§.§,2§.§+!p§(§0!o§.§,2§.§4!t§(§^!T§.getItemByName("Container_PauseMenu") as §,6§,{"x":0},null,0.25),§0!o§.§,2§.§4!t§((§^!T§.getItemByName("MovieClip_DarkBG") as §7!m§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§5"3§.onComplete = this.§>!r§;
         this.§5"3§.play();
      }
      
      protected function §>!r§() : void
      {
         this.§7!]§(true);
         this.§3G§();
      }
      
      protected function §7!]§(param1:Boolean) : void
      {
         (§^!T§.getItemByName("Button_Resume") as §]"%§).setEnabled(param1);
         (§^!T§.getItemByName("Button_Replay") as §]"%§).setEnabled(param1);
         (§^!T§.getItemByName("Button_Menu") as §]"%§).setEnabled(param1);
         (§^!T§.getItemByName("Button_Help") as §]"%§).setEnabled(param1);
         (§^!T§.getItemByName("Button_Sound") as §]"%§).setEnabled(param1);
      }
      
      protected function §8#§(param1:String) : void
      {
         (§^!T§.getItemByName("Button_Resume") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_Help") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_Sound") as §]"%§).setComponentVisualState(param1);
      }
      
      protected function §7!u§() : void
      {
         this.§3G§();
         this.§5"3§ = §0!o§.§,2§.§+!p§(§0!o§.§,2§.§4!t§(§^!T§.getItemByName("Container_PauseMenu") as §,6§,{"x":§%n§},null,0.25),§0!o§.§,2§.§4!t§((§^!T§.getItemByName("MovieClip_DarkBG") as §7!m§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§5"3§.onComplete = this.§]r§;
         this.§5"3§.play();
      }
      
      protected function §]r§() : void
      {
         §7"6§(this.§[!w§());
         this.§3G§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§3G§();
         this.§8#§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§&#§ = null;
         switch(param2)
         {
            case "HELP":
               this.§7!u§();
               for each(_loc6_ in §@!S§.§2A§.slingshot.§&]§)
               {
                  § !4§.§%"7§.§@D§.userProgress.setTutorialSeen(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §7"6§(this.§9!"§());
               break;
            case "RESUME_LEVEL":
               this.§7!u§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §>D§.§>!%§();
               §7"6§(this.§'!#§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§ !4§.§4E§();
               § !4§.setSoundsEnabled(_loc4_);
               §^!T§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§@!S§.§^"&§();
               §@!S§.§'"%§(_loc5_);
               §^!T§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               § !4§.§%"7§.§]!;§();
         }
      }
      
      protected function §[!w§() : String
      {
         return StatePlay.§8"%§;
      }
      
      protected function §9!"§() : String
      {
         return §'8§.§8"%§;
      }
      
      protected function §'!#§() : String
      {
         return §^j§.§8"%§;
      }
   }
}
