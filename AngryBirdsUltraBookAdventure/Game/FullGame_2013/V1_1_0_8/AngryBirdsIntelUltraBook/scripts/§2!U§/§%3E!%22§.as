package §2!U§
{
   import §"!i§.LevelManager;
   import §2y§.§[!i§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>!q§.§!^§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   
   public class §>!"§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelEndFailStateRio";
       
      
      private var §`!%§:§!^§;
      
      public function §>!"§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §2!z§.§ _§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§8`§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§8!N§(LevelManager.§"L§))
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setVisibility(true);
         }
         else if(LevelManager.§7v§())
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
         }
         else
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
         (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§`!%§ = new §!^§(0,0,0,0);
         §'!Q§.movieClip.addChildAt(this.§`!%§,§'!Q§.movieClip.numChildren - 1);
         this.showButtons();
         this.§`!%§.§^p§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §,!s§.§=!I§.clearLevel();
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`!%§)
         {
            if(§'!Q§.movieClip.contains(this.§`!%§))
            {
               §'!Q§.movieClip.removeChild(this.§`!%§);
            }
            this.§`!%§.clean();
            this.§`!%§ = null;
         }
         this.setButtonStates(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §4>§() : void
      {
         §3!;§.§9!G§();
         mNextState = this.§0"#§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§4>§();
               break;
            case "REPLAY":
               §3!;§.§0!1§();
               mNextState = this.§[!Q§();
               break;
            case "MENU":
               §-!Q§.§4!$§();
               mNextState = this.§8!X§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
      
      protected function §[!Q§() : String
      {
         return §3!;§.§'!q§;
      }
      
      protected function §8!X§() : String
      {
         return §2!=§.§'!q§;
      }
      
      protected function §0"#§() : String
      {
         return StateCutScene.§'!q§;
      }
   }
}
