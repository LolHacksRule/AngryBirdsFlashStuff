package §,r§
{
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §0E§.§-!F§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §[B§.§,!f§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   
   public class §8!%§ extends §,v§
   {
      
      public static const §'"-§:Number = -250;
      
      public static const §8n§:String = "PauseState";
       
      
      protected var §?"+§:§+I§ = null;
      
      public function §8!%§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@t§();
         §%W§.§5"8§.background.§;-§();
         this.§#!v§();
      }
      
      protected function §#!v§() : void
      {
         §?F§.getItemByName("Button_Help").setVisibility(false);
         §?F§.getItemByName("Button_Sound").setVisibility(false);
         §?F§.getItemByName("MovieClip_SoundsOff").setVisibility(false);
      }
      
      private function § "9§() : void
      {
         if(this.§?"+§)
         {
            this.§?"+§.stop();
            this.§?"+§ = null;
         }
      }
      
      protected function §@t§() : void
      {
         if(§-!F§.§"!L§ != null)
         {
            (§?F§.getItemByName("TextField_LevelName") as §6m§).§<"§.text = §-!F§.§"!L§;
         }
         (§?F§.getItemByName("Container_PauseMenu") as §+!?§).x = §'"-§;
         this.§^!+§(false);
         §%W§.pause();
         §?F§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         this.§ "9§();
         this.§?"+§ = §-!M§.§ "!§.§["!§(§-!M§.§ "!§.§+d§(§?F§.getItemByName("Container_PauseMenu") as §+!?§,{"x":0},null,0.25),§-!M§.§ "!§.§+d§((§?F§.getItemByName("MovieClip_DarkBG") as §;!P§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§?"+§.onComplete = this.§@!u§;
         this.§?"+§.play();
      }
      
      protected function §@!u§() : void
      {
         this.§^!+§(true);
         this.§ "9§();
      }
      
      protected function §^!+§(param1:Boolean) : void
      {
         (§?F§.getItemByName("Button_Resume") as §;!Z§).setEnabled(param1);
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setEnabled(param1);
         (§?F§.getItemByName("Button_Menu") as §;!Z§).setEnabled(param1);
         (§?F§.getItemByName("Button_Help") as §;!Z§).setEnabled(param1);
         (§?F§.getItemByName("Button_Sound") as §;!Z§).setEnabled(param1);
      }
      
      protected function §'q§(param1:String) : void
      {
         (§?F§.getItemByName("Button_Resume") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_Menu") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_Help") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_Sound") as §;!Z§).setComponentVisualState(param1);
      }
      
      protected function §<k§() : void
      {
         this.§ "9§();
         this.§?"+§ = §-!M§.§ "!§.§["!§(§-!M§.§ "!§.§+d§(§?F§.getItemByName("Container_PauseMenu") as §+!?§,{"x":§'"-§},null,0.25),§-!M§.§ "!§.§+d§((§?F§.getItemByName("MovieClip_DarkBG") as §;!P§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§?"+§.onComplete = this.§>!a§;
         this.§?"+§.play();
      }
      
      protected function §>!a§() : void
      {
         mNextState = this.getPlayState();
         this.§ "9§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ "9§();
         this.§'q§(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§,!f§ = null;
         switch(param2)
         {
            case "HELP":
               this.§<k§();
               for each(_loc6_ in §%W§.§5"8§.slingshot.mBirds)
               {
                  AngryBirdsFP11.§`!j§.§'[§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = this.§=d§();
               §'!O§.§8U§();
               break;
            case "RESUME_LEVEL":
               this.§<k§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §^k§.§3,§();
               mNextState = this.§`!G§();
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc4_);
               §?F§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§%W§.§,4§();
               §%W§.§;!v§(_loc5_);
               §?F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§8n§;
      }
      
      protected function §=d§() : String
      {
         return §'!O§.§8n§;
      }
      
      protected function §`!G§() : String
      {
         return §+!F§.§8n§;
      }
   }
}
