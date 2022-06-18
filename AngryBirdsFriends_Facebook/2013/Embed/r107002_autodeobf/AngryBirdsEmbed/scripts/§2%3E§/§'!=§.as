package §2>§
{
   import §'0§.§]!2§;
   import §+3§.§8O§;
   import §2T§.§2H§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   
   public class §'!=§ extends §9Y§
   {
      
      public static const §]! §:String = "LevelEndFailStateRio";
       
      
      private var §22§:§8O§;
      
      public function §'!=§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §-!K§.§"!G§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §'?§.§[§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§'?§.§"t§))
         {
            (§!s§.getItemByName("Button_NextLevel") as §2H§).setVisibility(false);
            (§!s§.getItemByName("Button_CutScene") as §2H§).setVisibility(false);
            (§!s§.getItemByName("Button_MightyEagle") as §2H§).setVisibility(true);
         }
         else if(§'?§.§"!'§())
         {
            (§!s§.getItemByName("Button_NextLevel") as §2H§).setVisibility(false);
            (§!s§.getItemByName("Button_CutScene") as §2H§).setVisibility(true);
         }
         else
         {
            (§!s§.getItemByName("Button_NextLevel") as §2H§).setVisibility(true);
            (§!s§.getItemByName("Button_CutScene") as §2H§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§!s§.getItemByName("Button_CutScene") as §2H§).setVisibility(false);
         (§!s§.getItemByName("Button_MightyEagle") as §2H§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§22§ = new §8O§(0,0,0,0);
         §!s§.movieClip.addChildAt(this.§22§,§!s§.movieClip.numChildren - 1);
         this.showButtons();
         this.§22§.§&<§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §[!4§.§continue§.clearLevel();
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§22§)
         {
            if(§!s§.movieClip.contains(this.§22§))
            {
               §!s§.movieClip.removeChild(this.§22§);
            }
            this.§22§.clean();
            this.§22§ = null;
         }
         this.setButtonStates(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§!s§.getItemByName("Button_Menu") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_Replay") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_NextLevel") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_CutScene") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_MightyEagle") as §2H§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §<!4§() : void
      {
         §9$§.§`a§();
         mNextState = this.§0!;§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§<!4§();
               break;
            case "REPLAY":
               §9$§.§9g§();
               mNextState = this.§+e§();
               break;
            case "MENU":
               §]!2§.§^F§();
               mNextState = this.§`"§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
      
      protected function §+e§() : String
      {
         return §9$§.§]! §;
      }
      
      protected function §`"§() : String
      {
         return §0!O§.§]! §;
      }
      
      protected function §0!;§() : String
      {
         return StateCutScene.§]! §;
      }
   }
}
