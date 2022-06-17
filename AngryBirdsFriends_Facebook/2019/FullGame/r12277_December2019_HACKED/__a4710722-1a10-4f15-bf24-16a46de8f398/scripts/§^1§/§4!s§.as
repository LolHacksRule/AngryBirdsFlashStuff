package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §?$#§.§;![§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   
   public class §4!s§ extends §';§
   {
      
      public static const §6#[§:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §?"u§:§@#5§ = null;
      
      public function §4!s§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "PauseState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_LevelPause[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@d§();
         §+!p§.§`?§.background.stopAmbientSound();
         this.§8$+§();
      }
      
      protected function §8$+§() : void
      {
         §@!D§.getItemByName("Button_Help").setVisibility(false);
         §@!D§.getItemByName("Button_Sound").setVisibility(false);
         §@!D§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §=#[§() : void
      {
         if(this.§?"u§)
         {
            this.§?"u§.stop();
            this.§?"u§ = null;
         }
      }
      
      protected function §@d§() : void
      {
         if(mLevelManager.currentLevelNumericName != null)
         {
            (§@!D§.getItemByName("TextField_LevelName") as §-$5§).§>$D§.text = mLevelManager.currentLevelNumericName;
         }
         (§@!D§.getItemByName("Container_PauseMenu") as §!"e§).x = §6#[§;
         this.§?!s§(false);
         §+!p§.pause();
         §@!D§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§]!K§());
         this.§=#[§();
         this.§?"u§ = §5"<§.§3"1§.§!"[§(§5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_PauseMenu") as §!"e§,{"x":0},null,0.25),§5"<§.§3"1§.§3#§((§@!D§.getItemByName("MovieClip_DarkBG") as §=!Z§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§?"u§.onComplete = this.§&"X§;
         this.§?"u§.play();
      }
      
      protected function §&"X§() : void
      {
         this.§?!s§(true);
         this.§=#[§();
      }
      
      protected function §?!s§(param1:Boolean) : void
      {
         (§@!D§.getItemByName("Button_Resume") as §;!b§).setEnabled(param1);
         (§@!D§.getItemByName("Button_Replay") as §;!b§).setEnabled(param1);
         (§@!D§.getItemByName("Button_Menu") as §;!b§).setEnabled(param1);
         (§@!D§.getItemByName("Button_Help") as §;!b§).setEnabled(param1);
         (§@!D§.getItemByName("Button_Sound") as §;!b§).setEnabled(param1);
      }
      
      protected function §%"k§(param1:String) : void
      {
         (§@!D§.getItemByName("Button_Resume") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_Replay") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_Menu") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_Help") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_Sound") as §;!b§).setComponentVisualState(param1);
      }
      
      protected function §1!V§() : void
      {
         this.§=#[§();
         this.§?"u§ = §5"<§.§3"1§.§!"[§(§5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_PauseMenu") as §!"e§,{"x":§6#[§},null,0.25),§5"<§.§3"1§.§3#§((§@!D§.getItemByName("MovieClip_DarkBG") as §=!Z§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§?"u§.onComplete = this.§40§;
         this.§?"u§.play();
      }
      
      protected function §40§() : void
      {
         §%!?§(this.getPlayState());
         this.§=#[§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=#[§();
         this.§%"k§(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§;![§ = null;
         switch(param2)
         {
            case "HELP":
               this.§1!V§();
               for each(_loc6_ in §+!p§.§`?§.slingshot.mBirds)
               {
                  AngryBirdsBase.singleton.dataModel.userProgress.§7P§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               §%!?§(this.getLevelLoadState());
               break;
            case "RESUME_LEVEL":
               this.§1!V§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §4$4§.§?#l§();
               §%!?§(this.getLevelSelectionState());
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsBase.§]!K§();
               AngryBirdsBase.§4!T§(_loc4_);
               §@!D§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§+!p§.§'$,§();
               §+!p§.§1#5§(_loc5_);
               §@!D§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §2t§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §;O§.STATE_NAME;
      }
   }
}
