package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§<?§;
   import §#""§.§+!J§;
   import §+I§.§9!%§;
   import §1"2§.§ F§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   
   public class §,+§ extends §,-§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §#!i§:§+!J§;
      
      public function §,+§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(this.§8!z§());
      }
      
      protected function §8!z§() : XML
      {
         return §1"-§.§ !>§.Views.View_LevelEndFailRio[0];
      }
      
      protected function §4!k§() : void
      {
         var _loc1_:String = LevelManager.§3$§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§8r§(LevelManager.§[!<§))
         {
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_MightyEagle") as §<?§).setVisibility(true);
         }
         else if(LevelManager.§0f§())
         {
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(true);
         }
         else
         {
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(false);
         }
      }
      
      protected function §3"&§() : void
      {
         (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(false);
         (§2"-§.getItemByName("Button_MightyEagle") as §<?§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#!i§ = new §+!J§(0,0,0,0);
         §2"-§.movieClip.addChildAt(this.§#!i§,§2"-§.movieClip.numChildren - 1);
         this.§4!k§();
         this.§#!i§.§ !2§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §9!%§.§!!M§.clearLevel();
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#!i§)
         {
            if(§2"-§.movieClip.contains(this.§#!i§))
            {
               §2"-§.movieClip.removeChild(this.§#!i§);
            }
            this.§#!i§.clean();
            this.§#!i§ = null;
         }
         this.§&"<§(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3"&§();
      }
      
      protected function §&"<§(param1:String) : void
      {
         (§2"-§.getItemByName("Button_Menu") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_Replay") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_NextLevel") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_CutScene") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_MightyEagle") as §<?§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §"c§.§^!8§();
               mNextState = this.getCutSceneState();
               break;
            case "REPLAY":
               §"c§.§@!z§();
               mNextState = this.getLevelLoadState();
               break;
            case "MENU":
               §%4§.§9!0§();
               mNextState = this.getLevelSelectionState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §"c§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §=B§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
