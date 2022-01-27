package §7!c§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §!i§.§?"%§;
   import §!i§.§^!d§;
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §?!<§.§6"3§;
   
   public class §4!K§ extends §%<§
   {
      
      public static const §!![§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §>!S§:§8"+§ = null;
      
      public function §4!K§(param1:§#2§, param2:§<!o§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@C§();
         §;0§.§@!^§.background.stopAmbientSound();
         this.§?"-§();
      }
      
      protected function §?"-§() : void
      {
         §4§.getItemByName("Button_Help").setVisibility(false);
         §4§.getItemByName("Button_Sound").setVisibility(false);
         §4§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §`V§() : void
      {
         if(this.§>!S§)
         {
            this.§>!S§.stop();
            this.§>!S§ = null;
         }
      }
      
      protected function §@C§() : void
      {
         if(§,W§.currentLevelNumericName != null)
         {
            (§4§.getItemByName("TextField_LevelName") as §?"%§).§8!o§.text = §,W§.currentLevelNumericName;
         }
         (§4§.getItemByName("Container_PauseMenu") as §1s§).x = §!![§;
         this.§>b§(false);
         §;0§.pause();
         §4§.getItemByName("MovieClip_SoundsOff").setVisibility(!§&!h§.§?3§());
         this.§`V§();
         this.§>!S§ = §<K§.§<"B§.§]"B§(§<K§.§<"B§.§`!c§(§4§.getItemByName("Container_PauseMenu") as §1s§,{"x":0},null,0.25),§<K§.§<"B§.§`!c§((§4§.getItemByName("MovieClip_DarkBG") as §^!d§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§>!S§.onComplete = this.§3"4§;
         this.§>!S§.play();
      }
      
      protected function §3"4§() : void
      {
         this.§>b§(true);
         this.§`V§();
      }
      
      protected function §>b§(param1:Boolean) : void
      {
         (§4§.getItemByName("Button_Resume") as §3!A§).setEnabled(param1);
         (§4§.getItemByName("Button_Replay") as §3!A§).setEnabled(param1);
         (§4§.getItemByName("Button_Menu") as §3!A§).setEnabled(param1);
         (§4§.getItemByName("Button_Help") as §3!A§).setEnabled(param1);
         (§4§.getItemByName("Button_Sound") as §3!A§).setEnabled(param1);
      }
      
      protected function §+!,§(param1:String) : void
      {
         (§4§.getItemByName("Button_Resume") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_Replay") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_Menu") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_Help") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_Sound") as §3!A§).setComponentVisualState(param1);
      }
      
      protected function §[2§() : void
      {
         this.§`V§();
         this.§>!S§ = §<K§.§<"B§.§]"B§(§<K§.§<"B§.§`!c§(§4§.getItemByName("Container_PauseMenu") as §1s§,{"x":§!![§},null,0.25),§<K§.§<"B§.§`!c§((§4§.getItemByName("MovieClip_DarkBG") as §^!d§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§>!S§.onComplete = this.§'j§;
         this.§>!S§.play();
      }
      
      protected function §'j§() : void
      {
         §2g§(this.§'"-§());
         this.§`V§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§`V§();
         this.§+!,§(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§6"3§ = null;
         switch(param2)
         {
            case "HELP":
               this.§[2§();
               for each(_loc6_ in §;0§.§@!^§.slingshot.mBirds)
               {
                  §&!h§.§ u§.§-!V§.userProgress.§^C§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §2g§(this.§+"6§());
               break;
            case "RESUME_LEVEL":
               this.§[2§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §"!S§.§#9§();
               §2g§(this.§<!r§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§&!h§.§?3§();
               §&!h§.§@!a§(_loc4_);
               §4§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§;0§.§%!3§();
               §;0§.§<4§(_loc5_);
               §4§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               §&!h§.§ u§.§+"4§();
         }
      }
      
      protected function §'"-§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §+"6§() : String
      {
         return §"!H§.STATE_NAME;
      }
      
      protected function §<!r§() : String
      {
         return §!!Q§.STATE_NAME;
      }
   }
}
