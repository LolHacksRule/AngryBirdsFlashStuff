package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §87§.§<8§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §class§.§?q§;
   
   public class §>8§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelEndFailStateRio";
       
      
      private var §<!4§:§<8§;
      
      public function §>8§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §!I§.§7y§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §5j§.§&1§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.isLevelPassed(§5j§.§%V§))
         {
            (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
            (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(false);
            (§[=§.getItemByName("Button_MightyEagle") as §?q§).setVisibility(true);
         }
         else if(§5j§.§!d§())
         {
            (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
            (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(true);
         }
         else
         {
            (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(false);
         (§[=§.getItemByName("Button_MightyEagle") as §?q§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<!4§ = new §<8§(0,0,0,0);
         §[=§.movieClip.addChildAt(this.§<!4§,§[=§.movieClip.numChildren - 1);
         this.showButtons();
         this.§<!4§.§4J§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §[k§.§&@§.clearLevel();
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§<!4§)
         {
            if(§[=§.movieClip.contains(this.§<!4§))
            {
               §[=§.movieClip.removeChild(this.§<!4§);
            }
            this.§<!4§.clean();
            this.§<!4§ = null;
         }
         this.setButtonStates(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§[=§.getItemByName("Button_Menu") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_NextLevel") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_CutScene") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_MightyEagle") as §?q§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §,w§.§^^§();
               mNextState = this.§9N§();
               break;
            case "REPLAY":
               §,w§.§9!D§();
               mNextState = this.§#! §();
               break;
            case "MENU":
               §6I§.§%,§();
               mNextState = this.§"^§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
      
      protected function §#! §() : String
      {
         return §,w§.§?x§;
      }
      
      protected function §"^§() : String
      {
         return §5O§.§?x§;
      }
      
      protected function §9N§() : String
      {
         return StateCutScene.§?x§;
      }
   }
}
