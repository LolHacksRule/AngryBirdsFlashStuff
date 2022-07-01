package §-P§
{
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§3!6§;
   import §!D§.§<!5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §%h§.§5!K§;
   import §'!O§.§[!m§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   
   public class §%p§ extends §4E§
   {
      
      public static const §"m§:Number = -250;
      
      public static const §#!w§:String = "PauseState";
       
      
      protected var §?_§:§;!5§ = null;
      
      public function §%p§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2H§();
         §8!0§.§?2§.background.§ !G§();
         this.§>!V§();
      }
      
      protected function §>!V§() : void
      {
         §1!j§.getItemByName("Button_Help").setVisibility(false);
         §1!j§.getItemByName("Button_Sound").setVisibility(false);
         §1!j§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function §-!B§() : void
      {
         if(this.§?_§)
         {
            this.§?_§.stop();
            this.§?_§ = null;
         }
      }
      
      protected function §2H§() : void
      {
         if(§[!m§.§<!D§ != null)
         {
            (§1!j§.getItemByName("TextField_LevelName") as §%c§).§3v§.text = §[!m§.§<!D§;
         }
         (§1!j§.getItemByName("Container_PauseMenu") as § use§).x = §"m§;
         this.§+!a§(false);
         §8!0§.pause();
         §1!j§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         this.§-!B§();
         this.§?_§ = §"!5§.§9j§.§&>§(§"!5§.§9j§.§4!p§(§1!j§.getItemByName("Container_PauseMenu") as § use§,{"x":0},null,0.25),§"!5§.§9j§.§4!p§((§1!j§.getItemByName("MovieClip_DarkBG") as §<!5§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§?_§.onComplete = this.§@O§;
         this.§?_§.play();
      }
      
      protected function §@O§() : void
      {
         this.§+!a§(true);
         this.§-!B§();
      }
      
      protected function §+!a§(param1:Boolean) : void
      {
         (§1!j§.getItemByName("Button_Resume") as §3!6§).setEnabled(param1);
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setEnabled(param1);
         (§1!j§.getItemByName("Button_Menu") as §3!6§).setEnabled(param1);
         (§1!j§.getItemByName("Button_Help") as §3!6§).setEnabled(param1);
         (§1!j§.getItemByName("Button_Sound") as §3!6§).setEnabled(param1);
      }
      
      protected function §"P§(param1:String) : void
      {
         (§1!j§.getItemByName("Button_Resume") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_Menu") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_Help") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_Sound") as §3!6§).setComponentVisualState(param1);
      }
      
      protected function §7K§() : void
      {
         this.§-!B§();
         this.§?_§ = §"!5§.§9j§.§&>§(§"!5§.§9j§.§4!p§(§1!j§.getItemByName("Container_PauseMenu") as § use§,{"x":§"m§},null,0.25),§"!5§.§9j§.§4!p§((§1!j§.getItemByName("MovieClip_DarkBG") as §<!5§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§?_§.onComplete = this.§4!e§;
         this.§?_§.play();
      }
      
      protected function §4!e§() : void
      {
         mNextState = this.getPlayState();
         this.§-!B§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!B§();
         this.§"P§(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§5!K§ = null;
         switch(param2)
         {
            case "HELP":
               this.§7K§();
               for each(_loc6_ in §8!0§.§?2§.slingshot.mBirds)
               {
                  AngryBirdsFP11.§8!v§.§"i§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§@!x§();
               §[!E§.§%!,§();
               break;
            case "RESUME_LEVEL":
               this.§7K§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §?!7§.§@"!§();
               mNextState = this.§ x§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               §1!j§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§8!0§.§9!n§();
               §8!0§.§4s§(_loc5_);
               §1!j§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§#!w§;
      }
      
      protected function §@!x§() : String
      {
         return §[!E§.§#!w§;
      }
      
      protected function § x§() : String
      {
         return §1f§.§#!w§;
      }
   }
}
