package §94§
{
   import §%#A§.§,#w§;
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §<!b§.§&!i§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §@#§.§^#Q§;
   
   public class §[j§ extends §`"z§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
       
      
      private var §`#Y§:§&!i§;
      
      public function §[j§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §=>§.§%" §.Views.View_LevelEndFail[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = mLevelManager.getNextLevelId();
         if(_loc1_ && !AngryBirdsBase.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !AngryBirdsBase.singleton.dataModel.userProgress.§,A§(mLevelManager.currentLevel))
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_MightyEagle") as §,#w§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(true);
         }
         else
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(false);
         }
      }
      
      protected function §<"=§() : void
      {
         (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(false);
         (§?Q§.getItemByName("Button_MightyEagle") as §,#w§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §!#A§.pause();
         this.§`#Y§ = new §&!i§(0,0,0,0);
         §?Q§.movieClip.addChildAt(this.§`#Y§,§?Q§.movieClip.numChildren - 1);
         this.showButtons();
         this.§`#Y§.§4!>§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §!#A§.§#F§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`#Y§)
         {
            if(§?Q§.movieClip.contains(this.§`#Y§))
            {
               §?Q§.movieClip.removeChild(this.§`#Y§);
            }
            this.§`#Y§.§;!?§();
            this.§`#Y§ = null;
         }
         this.setButtonStates(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§<"=§();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§?Q§.getItemByName("Button_Menu") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_Replay") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_CutScene") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_MightyEagle") as §,#w§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §5"p§(this.getCutSceneState());
               break;
            case "REPLAY":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(this.getLevelLoadState());
               break;
            case "MENU":
               §!#&§.§^!2§();
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§6"0§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §9#P§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §7!c§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
