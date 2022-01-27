package §!X§
{
   import §""d§.§2"8§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §5",§.§`#+§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   
   public class §9c§ extends §@!?§
   {
      
      public static const §'#2§:String = "LevelEndFailState";
       
      
      private var §0$§:§`#+§;
      
      public function §9c§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §%n§.§ set§.Views.View_LevelEndFail[0];
      }
      
      protected function §1!d§() : void
      {
         var _loc1_:String = § !p§.getNextLevelId();
         if(_loc1_ && !§;"@§.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !§;"@§.singleton.dataModel.userProgress.isLevelPassed(§ !p§.currentLevel))
         {
            (§>I§.getItemByName("Button_NextLevel") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("Button_CutScene") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("Button_MightyEagle") as §2"8§).setVisibility(true);
         }
         else if(§ !p§.isCutSceneNext())
         {
            (§>I§.getItemByName("Button_NextLevel") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("Button_CutScene") as §2"8§).setVisibility(true);
         }
         else
         {
            (§>I§.getItemByName("Button_NextLevel") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("Button_CutScene") as §2"8§).setVisibility(false);
         }
      }
      
      protected function §2"O§() : void
      {
         (§>I§.getItemByName("Button_CutScene") as §2"8§).setVisibility(false);
         (§>I§.getItemByName("Button_MightyEagle") as §2"8§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0$§ = new §`#+§(0,0,0,0);
         §>I§.movieClip.addChildAt(this.§0$§,§>I§.movieClip.numChildren - 1);
         this.§1!d§();
         this.§0$§.§'!9§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §;!e§.§<x§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§0$§)
         {
            if(§>I§.movieClip.contains(this.§0$§))
            {
               §>I§.movieClip.removeChild(this.§0$§);
            }
            this.§0$§.§;!k§();
            this.§0$§ = null;
         }
         this.§?"f§(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§2"O§();
      }
      
      protected function §?"f§(param1:String) : void
      {
         (§>I§.getItemByName("Button_Menu") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_Replay") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_NextLevel") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_CutScene") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_MightyEagle") as §2"8§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § !Y§();
               §0"B§(this.getCutSceneState());
               break;
            case "REPLAY":
               §0"B§(this.getLevelLoadState());
               break;
            case "MENU":
               §@§.§+A§();
               §0"B§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               §;"@§.singleton.§35§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §>!I§.§'#2§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §,"p§.§'#2§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§'#2§;
      }
   }
}
