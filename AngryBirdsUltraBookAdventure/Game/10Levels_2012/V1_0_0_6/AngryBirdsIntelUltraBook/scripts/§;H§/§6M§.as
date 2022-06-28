package §;H§
{
   import §#!H§.§^I§;
   import §+0§.§,!E§;
   import §1!E§.§==§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   
   public class §6M§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelEndFailStateRio";
       
      
      private var §4!E§:§^I§;
      
      public function §6M§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return § !I§.§3!a§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§7!X§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§9!,§(LevelManager.§%n§))
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_MightyEagle") as §==§).setVisibility(true);
         }
         else if(LevelManager.§7!J§())
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
         }
         else
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
         (§&!m§.getItemByName("Button_MightyEagle") as §==§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§4!E§ = new §^I§(0,0,0,0);
         §&!m§.movieClip.addChildAt(this.§4!E§,§&!m§.movieClip.numChildren - 1);
         this.showButtons();
         this.§4!E§.§;'§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §^!c§.§5!Y§.clearLevel();
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§4!E§)
         {
            if(§&!m§.movieClip.contains(this.§4!E§))
            {
               §&!m§.movieClip.removeChild(this.§4!E§);
            }
            this.§4!E§.clean();
            this.§4!E§ = null;
         }
         this.setButtonStates(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_CutScene") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §;W§.§&p§();
               mNextState = this.§=!n§();
               break;
            case "REPLAY":
               §;W§.§&!5§();
               mNextState = this.§`[§();
               break;
            case "MENU":
               §9'§.§0D§();
               mNextState = this.§`!n§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
      
      protected function §`[§() : String
      {
         return §;W§.§"!s§;
      }
      
      protected function §`!n§() : String
      {
         return §!y§.§"!s§;
      }
      
      protected function §=!n§() : String
      {
         return StateCutScene.§"!s§;
      }
   }
}
