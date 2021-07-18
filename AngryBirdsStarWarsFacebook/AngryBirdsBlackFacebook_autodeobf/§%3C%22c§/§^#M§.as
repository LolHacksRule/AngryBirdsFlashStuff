package §<"c§
{
   import §+D§.§^"m§;
   import §3§.§4! §;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   
   public class §^#M§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndFailState";
       
      
      private var §@"r§:§4! §;
      
      public function §^#M§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEndFail[0];
      }
      
      protected function §^;§() : void
      {
         var _loc1_:String = §+!b§.getNextLevelId();
         if(_loc1_ && !§4#;§.singleton.dataModel.userProgress.isLevelOpen(_loc1_) || !§4#;§.singleton.dataModel.userProgress.isLevelPassed(§+!b§.currentLevel))
         {
            (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("Button_MightyEagle") as §^"m§).setVisibility(true);
         }
         else if(§+!b§.isCutSceneNext())
         {
            (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(true);
         }
         else
         {
            (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(false);
         }
      }
      
      protected function §3#3§() : void
      {
         (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(false);
         (§@;§.getItemByName("Button_MightyEagle") as §^"m§).setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@"r§ = new §4! §(0,0,0,0);
         §@;§.movieClip.addChildAt(this.§@"r§,§@;§.movieClip.numChildren - 1);
         this.§^;§();
         this.§@"r§.§""a§(0.7);
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §,!q§.§9!,§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§@"r§)
         {
            if(§@;§.movieClip.contains(this.§@"r§))
            {
               §@;§.movieClip.removeChild(this.§@"r§);
            }
            this.§@"r§.§%!G§();
            this.§@"r§ = null;
         }
         this.§7b§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3#3§();
      }
      
      protected function §7b§(param1:String) : void
      {
         (§@;§.getItemByName("Button_Menu") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_Replay") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_NextLevel") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_CutScene") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_MightyEagle") as §^"m§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'$§();
               § g§(this.getCutSceneState());
               break;
            case "REPLAY":
               § g§(this.getLevelLoadState());
               break;
            case "MENU":
               §?!r§.§0"#§();
               § g§(this.getLevelSelectionState());
               break;
            case "FULLSCREEN_BUTTON":
               §4#;§.singleton.§5"q§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §+#?§.§^!7§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§^!7§;
      }
   }
}
