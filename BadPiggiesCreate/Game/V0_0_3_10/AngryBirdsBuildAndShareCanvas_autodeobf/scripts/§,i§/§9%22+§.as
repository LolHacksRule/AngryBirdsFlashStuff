package §,i§
{
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §0!d§.§`G§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!s§.§`!7§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   
   public class §9"+§ extends §0!K§
   {
      
      public static const §'2§:Number = -250;
      
      public static const §]"2§:String = "PauseState";
       
      
      protected var §@!Z§:§^F§ = null;
      
      public function §9"+§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;!N§();
         §"!V§.§!j§.background.§>"%§();
         this.§[Y§();
      }
      
      protected function §[Y§() : void
      {
         §'K§.getItemByName("Button_Help").setVisibility(false);
         §'K§.getItemByName("Button_Sound").setVisibility(false);
         §'K§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §@!P§() : void
      {
         if(this.§@!Z§)
         {
            this.§@!Z§.stop();
            this.§@!Z§ = null;
         }
      }
      
      protected function §;!N§() : void
      {
         if(§"?§.§4M§ != null)
         {
            (§'K§.getItemByName("TextField_LevelName") as §`G§).§?B§.text = §"?§.§4M§;
         }
         (§'K§.getItemByName("Container_PauseMenu") as §7!a§).x = §'2§;
         this.§<!%§(false);
         §"!V§.pause();
         §'K§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         this.§@!P§();
         this.§@!Z§ = §<y§.§,l§.§'!^§(§<y§.§,l§.§]!C§(§'K§.getItemByName("Container_PauseMenu") as §7!a§,{"x":0},null,0.25),§<y§.§,l§.§]!C§((§'K§.getItemByName("MovieClip_DarkBG") as §%!9§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§@!Z§.onComplete = this.§2S§;
         this.§@!Z§.play();
      }
      
      protected function §2S§() : void
      {
         this.§<!%§(true);
         this.§@!P§();
      }
      
      protected function §<!%§(param1:Boolean) : void
      {
         (§'K§.getItemByName("Button_Resume") as §8!r§).setEnabled(param1);
         (§'K§.getItemByName("Button_Replay") as §8!r§).setEnabled(param1);
         (§'K§.getItemByName("Button_Menu") as §8!r§).setEnabled(param1);
         (§'K§.getItemByName("Button_Help") as §8!r§).setEnabled(param1);
         (§'K§.getItemByName("Button_Sound") as §8!r§).setEnabled(param1);
      }
      
      protected function §,Q§(param1:String) : void
      {
         (§'K§.getItemByName("Button_Resume") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_Replay") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_Menu") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_Help") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_Sound") as §8!r§).setComponentVisualState(param1);
      }
      
      protected function §[!§() : void
      {
         this.§@!P§();
         this.§@!Z§ = §<y§.§,l§.§'!^§(§<y§.§,l§.§]!C§(§'K§.getItemByName("Container_PauseMenu") as §7!a§,{"x":§'2§},null,0.25),§<y§.§,l§.§]!C§((§'K§.getItemByName("MovieClip_DarkBG") as §%!9§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§@!Z§.onComplete = this.§>j§;
         this.§@!Z§.play();
      }
      
      protected function §>j§() : void
      {
         mNextState = this.getPlayState();
         this.§@!P§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@!P§();
         this.§,Q§(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§`!7§ = null;
         switch(param2)
         {
            case "HELP":
               this.§[!§();
               for each(_loc6_ in §"!V§.§!j§.slingshot.mBirds)
               {
                  AngryBirdsFP11.§<U§.§7!L§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§'"-§();
               §>Y§.§"l§();
               break;
            case "RESUME_LEVEL":
               this.§[!§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               § !x§.§ X§();
               mNextState = this.§5!6§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               §'K§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§"!V§.§1!u§();
               §"!V§.§;!o§(_loc5_);
               §'K§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§]"2§;
      }
      
      protected function §'"-§() : String
      {
         return §>Y§.§]"2§;
      }
      
      protected function §5!6§() : String
      {
         return §6!x§.§]"2§;
      }
   }
}
