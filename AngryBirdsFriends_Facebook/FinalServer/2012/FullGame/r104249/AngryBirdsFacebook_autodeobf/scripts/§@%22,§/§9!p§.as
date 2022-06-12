package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-B§.§#p§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §-B§.§]!<§;
   import §0!2§.§;M§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §`!n§.LevelManager;
   
   public class §9!p§ extends §5!S§
   {
      
      public static const OFFSCREEN_X:Number = -250;
      
      public static const STATE_NAME:String = "PauseState";
       
      
      protected var §1!Z§:§!"&§ = null;
      
      public function §9!p§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.openPauseMenu();
         §&2§.§],§.background.§#"§();
         this.§%!q§();
      }
      
      protected function §%!q§() : void
      {
         §2!K§.getItemByName("Button_Help").setVisibility(false);
         §2!K§.getItemByName("Button_Sound").setVisibility(false);
         §2!K§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §-!7§() : void
      {
         if(this.§1!Z§)
         {
            this.§1!Z§.stop();
            this.§1!Z§ = null;
         }
      }
      
      protected function openPauseMenu() : void
      {
         if(LevelManager.§`-§ != null)
         {
            (§2!K§.getItemByName("TextField_LevelName") as §#p§).§`E§.text = LevelManager.§`-§;
         }
         (§2!K§.getItemByName("Container_PauseMenu") as §?!j§).x = OFFSCREEN_X;
         this.§-C§(false);
         §&2§.pause();
         §2!K§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§""4§());
         this.§-!7§();
         this.§1!Z§ = §&p§.§1[§.§=!i§(§&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_PauseMenu") as §?!j§,{"x":0},null,0.25),§&p§.§1[§.§7!3§((§2!K§.getItemByName("MovieClip_DarkBG") as §="0§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§1!Z§.onComplete = this.§?"3§;
         this.§1!Z§.play();
      }
      
      protected function §?"3§() : void
      {
         this.§-C§(true);
         this.§-!7§();
      }
      
      protected function §-C§(param1:Boolean) : void
      {
         (§2!K§.getItemByName("Button_Resume") as §]!<§).setEnabled(param1);
         (§2!K§.getItemByName("Button_Replay") as §]!<§).setEnabled(param1);
         (§2!K§.getItemByName("Button_Menu") as §]!<§).setEnabled(param1);
         (§2!K§.getItemByName("Button_Help") as §]!<§).setEnabled(param1);
         (§2!K§.getItemByName("Button_Sound") as §]!<§).setEnabled(param1);
      }
      
      protected function §#q§(param1:String) : void
      {
         (§2!K§.getItemByName("Button_Resume") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_Replay") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_Menu") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_Help") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_Sound") as §]!<§).setComponentVisualState(param1);
      }
      
      protected function closePauseMenu() : void
      {
         this.§-!7§();
         this.§1!Z§ = §&p§.§1[§.§=!i§(§&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_PauseMenu") as §?!j§,{"x":OFFSCREEN_X},null,0.25),§&p§.§1[§.§7!3§((§2!K§.getItemByName("MovieClip_DarkBG") as §="0§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§1!Z§.onComplete = this.§ !U§;
         this.§1!Z§.play();
      }
      
      protected function § !U§() : void
      {
         mNextState = this.getPlayState();
         this.§-!7§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!7§();
         this.§#q§(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§;M§ = null;
         switch(param2)
         {
            case "HELP":
               this.closePauseMenu();
               for each(_loc6_ in §&2§.§],§.slingshot.§1"&§)
               {
                  AngryBirdsFP11.sUserProgress.§!"9§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.getLevelLoadState();
               §'!N§.§^R§();
               break;
            case "RESUME_LEVEL":
               this.closePauseMenu();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §+m§.§2!2§();
               mNextState = this.getLevelSelectionState();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.§""4§();
               AngryBirdsFP11.§=",§(_loc4_);
               §2!K§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§&2§.§5;§();
               §&2§.§7"C§(_loc5_);
               §2!K§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §'!N§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §[2§.STATE_NAME;
      }
   }
}
