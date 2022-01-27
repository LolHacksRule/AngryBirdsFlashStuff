package §%"Q§
{
   import §&!j§.§5#+§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9!a§.§&c§;
   import §=Z§.§;g§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import §null §.§5#§;
   
   public class §,!§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelEndFailState";
       
      
      private var §+"l§:§&c§;
      
      public function §,!§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §^x§.§ '§.Views.View_LevelEndFail[0];
      }
      
      protected function §+N§() : void
      {
         var _loc1_:String = §'""§.getNextLevelId();
         if(_loc1_ && !§4"#§.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !§4"#§.singleton.dataModel.userProgress.isLevelPassed(§'""§.currentLevel))
         {
            (§^!b§.getItemByName("Button_NextLevel") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("Button_CutScene") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("Button_MightyEagle") as §;g§).setVisibility(true);
         }
         else if(§'""§.isCutSceneNext())
         {
            (§^!b§.getItemByName("Button_NextLevel") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("Button_CutScene") as §;g§).setVisibility(true);
         }
         else
         {
            (§^!b§.getItemByName("Button_NextLevel") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("Button_CutScene") as §;g§).setVisibility(false);
         }
      }
      
      protected function §#'§() : void
      {
         (§^!b§.getItemByName("Button_CutScene") as §;g§).setVisibility(false);
         (§^!b§.getItemByName("Button_MightyEagle") as §;g§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§+"l§ = new §&c§(0,0,0,0);
         §^!b§.movieClip.addChildAt(this.§+"l§,§^!b§.movieClip.numChildren - 1);
         this.§+N§();
         this.§+"l§.§8m§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §<!J§.§=!%§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§+"l§)
         {
            if(§^!b§.movieClip.contains(this.§+"l§))
            {
               §^!b§.movieClip.removeChild(this.§+"l§);
            }
            this.§+"l§.§ "!§();
            this.§+"l§ = null;
         }
         this.§[!,§(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#'§();
      }
      
      protected function §[!,§(param1:String) : void
      {
         (§^!b§.getItemByName("Button_Menu") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_Replay") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_NextLevel") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_CutScene") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_MightyEagle") as §;g§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §`"y§();
               §`0§(this.getCutSceneState());
               break;
            case "REPLAY":
               §`0§(this.getLevelLoadState());
               break;
            case "MENU":
               §=Q§.§!#,§();
               §`0§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               §4"#§.singleton.§^L§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §7"9§.§-!U§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §!K§.§-!U§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§-!U§;
      }
   }
}
