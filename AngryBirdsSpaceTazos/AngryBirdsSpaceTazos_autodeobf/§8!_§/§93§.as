package §8!_§
{
   import §%!r§.§3!'§;
   import §'4§.§-T§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §93§ extends §5!&§
   {
      
      public static const §&!Q§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §0"F§:§5!9§ = null;
      
      public function §93§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§>@§();
         §9q§.§>!L§.background.stopAmbientSound();
         this.§5N§();
      }
      
      protected function §5N§() : void
      {
         §8!A§.getItemByName("Button_Help").setVisibility(false);
         §8!A§.getItemByName("Button_Sound").setVisibility(false);
         §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §=a§() : void
      {
         if(this.§0"F§)
         {
            this.§0"F§.stop();
            this.§0"F§ = null;
         }
      }
      
      protected function §>@§() : void
      {
         if(§6u§.currentLevelNumericName != null)
         {
            (§8!A§.getItemByName("TextField_LevelName") as §&!>§).§ !'§.text = §6u§.currentLevelNumericName;
         }
         (§8!A§.getItemByName("Container_PauseMenu") as § ",§).x = §&!Q§;
         this.§!"%§(false);
         §9q§.pause();
         §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!§ !g§.§<!c§());
         this.§=a§();
         this.§0"F§ = §!D§.§[!1§.§"!D§(§!D§.§[!1§.§1"<§(§8!A§.getItemByName("Container_PauseMenu") as § ",§,{"x":0},null,0.25),§!D§.§[!1§.§1"<§((§8!A§.getItemByName("MovieClip_DarkBG") as §,y§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§0"F§.onComplete = this.§#!t§;
         this.§0"F§.play();
      }
      
      protected function §#!t§() : void
      {
         this.§!"%§(true);
         this.§=a§();
      }
      
      protected function §!"%§(param1:Boolean) : void
      {
         (§8!A§.getItemByName("Button_Resume") as §@_§).setEnabled(param1);
         (§8!A§.getItemByName("Button_Replay") as §@_§).setEnabled(param1);
         (§8!A§.getItemByName("Button_Menu") as §@_§).setEnabled(param1);
         (§8!A§.getItemByName("Button_Help") as §@_§).setEnabled(param1);
         (§8!A§.getItemByName("Button_Sound") as §@_§).setEnabled(param1);
      }
      
      protected function §-!'§(param1:String) : void
      {
         (§8!A§.getItemByName("Button_Resume") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_Help") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_Sound") as §@_§).setComponentVisualState(param1);
      }
      
      protected function §,D§() : void
      {
         this.§=a§();
         this.§0"F§ = §!D§.§[!1§.§"!D§(§!D§.§[!1§.§1"<§(§8!A§.getItemByName("Container_PauseMenu") as § ",§,{"x":§&!Q§},null,0.25),§!D§.§[!1§.§1"<§((§8!A§.getItemByName("MovieClip_DarkBG") as §,y§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§0"F§.onComplete = this.§1C§;
         this.§0"F§.play();
      }
      
      protected function §1C§() : void
      {
         §8!^§(this.§1!u§());
         this.§=a§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=a§();
         this.§-!'§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§-T§ = null;
         switch(param2)
         {
            case "HELP":
               this.§,D§();
               for each(_loc6_ in §9q§.§>!L§.slingshot.mBirds)
               {
                  § !g§.§;!'§.§&!`§.userProgress.§8R§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §8!^§(this.§^!m§());
               break;
            case "RESUME_LEVEL":
               this.§,D§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §<!O§.§'N§();
               §8!^§(this.§4?§());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§ !g§.§<!c§();
               § !g§.§@p§(_loc4_);
               §8!A§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§9q§.§&T§();
               §9q§.§]i§(_loc5_);
               §8!A§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               § !g§.§;!'§.§%!N§();
         }
      }
      
      protected function §1!u§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function §^!m§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      protected function §4?§() : String
      {
         return §]J§.STATE_NAME;
      }
   }
}
