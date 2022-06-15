package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §]!A§.;
   
   public class §8!u§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
       
      
      private var §-9§:§%1§;
      
      public function §8!u§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(this.§8!f§());
      }
      
      protected function §8!f§() : XML
      {
         return § "A§.§4[§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§6!M§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§%6§(LevelManager.§'!O§))
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setVisibility(true);
         }
         else if(LevelManager.§%^§())
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
         }
         else
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
         }
      }
      
      protected function §>!P§() : void
      {
         (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
         (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-9§ = new §%1§(0,0,0,0);
         §6w§.movieClip.addChildAt(this.§-9§,§6w§.movieClip.numChildren - 1);
         this.showButtons();
         this.§-9§.§?!,§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §#6§.§6!z§.clearLevel();
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§-9§)
         {
            if(§6w§.movieClip.contains(this.§-9§))
            {
               §6w§.movieClip.removeChild(this.§-9§);
            }
            this.§-9§.clean();
            this.§-9§ = null;
         }
         this.§'"-§(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§>!P§();
      }
      
      protected function §'"-§(param1:String) : void
      {
         (§6w§.getItemByName("Button_Menu") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_Replay") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_NextLevel") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_CutScene") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §!!7§.§,L§();
         mNextState = this.getCutSceneState();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §!!7§.§-V§();
               mNextState = this.getLevelLoadState();
               break;
            case "MENU":
               §>!E§.§&!^§();
               mNextState = this.getLevelSelectionState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §8"D§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
