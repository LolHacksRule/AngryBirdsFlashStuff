package §=0§
{
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §3'§.§5I§;
   import §74§.§1!C§;
   import §8!G§.§-Z§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   
   public class §+^§ extends §`U§
   {
      
      public static const §?1§:String = "LevelEndFailStateRio";
       
      
      private var §-t§:§1!C§;
      
      public function §+^§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §3!@§.§`Z§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §-Z§.§'Z§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§-Z§.§%s§))
         {
            (§4G§.getItemByName("Button_NextLevel") as §5I§).setVisibility(false);
            (§4G§.getItemByName("Button_CutScene") as §5I§).setVisibility(false);
            (§4G§.getItemByName("Button_MightyEagle") as §5I§).setVisibility(true);
         }
         else if(§-Z§.§0L§())
         {
            (§4G§.getItemByName("Button_NextLevel") as §5I§).setVisibility(false);
            (§4G§.getItemByName("Button_CutScene") as §5I§).setVisibility(true);
         }
         else
         {
            (§4G§.getItemByName("Button_NextLevel") as §5I§).setVisibility(true);
            (§4G§.getItemByName("Button_CutScene") as §5I§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§4G§.getItemByName("Button_CutScene") as §5I§).setVisibility(false);
         (§4G§.getItemByName("Button_MightyEagle") as §5I§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-t§ = new §1!C§(0,0,0,0);
         §4G§.movieClip.addChildAt(this.§-t§,§4G§.movieClip.numChildren - 1);
         this.showButtons();
         this.§-t§.§>w§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §^?§.§]!%§.clearLevel();
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§-t§)
         {
            if(§4G§.movieClip.contains(this.§-t§))
            {
               §4G§.movieClip.removeChild(this.§-t§);
            }
            this.§-t§.clean();
            this.§-t§ = null;
         }
         this.setButtonStates(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§4G§.getItemByName("Button_Menu") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_Replay") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_NextLevel") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_CutScene") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_MightyEagle") as §5I§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § !2§.§62§();
               mNextState = this.§^t§();
               break;
            case "REPLAY":
               § !2§.§-9§();
               mNextState = this.§;!<§();
               break;
            case "MENU":
               §9!0§.§"P§();
               mNextState = this.§+L§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
      
      protected function §;!<§() : String
      {
         return § !2§.§?1§;
      }
      
      protected function §+L§() : String
      {
         return §33§.§?1§;
      }
      
      protected function §^t§() : String
      {
         return StateCutScene.§?1§;
      }
   }
}
