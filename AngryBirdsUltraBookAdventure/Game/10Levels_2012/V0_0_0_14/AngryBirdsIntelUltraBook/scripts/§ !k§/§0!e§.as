package § !k§
{
   import §!!§.LevelManager;
   import §06§.§9!b§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§,c§;
   
   public class §0!e§ extends §+_§
   {
      
      public static const §3F§:String = "LevelEndFailStateRio";
       
      
      private var §++§:§9!b§;
      
      public function §0!e§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return dynamic.§[6§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§=L§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§+G§(LevelManager.§^!F§))
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_MightyEagle") as §,c§).setVisibility(true);
         }
         else if(LevelManager.§-!q§())
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(true);
         }
         else
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false);
         (§`-§.getItemByName("Button_MightyEagle") as §,c§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§++§ = new §9!b§(0,0,0,0);
         §`-§.movieClip.addChildAt(this.§++§,§`-§.movieClip.numChildren - 1);
         this.showButtons();
         this.§++§.§&!f§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §4!]§.§8C§.clearLevel();
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§++§)
         {
            if(§`-§.movieClip.contains(this.§++§))
            {
               §`-§.movieClip.removeChild(this.§++§);
            }
            this.§++§.clean();
            this.§++§ = null;
         }
         this.setButtonStates(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_NextLevel") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_CutScene") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_MightyEagle") as §,c§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §%]§.§]!b§();
               mNextState = this.§9!1§();
               break;
            case "REPLAY":
               §%]§.§=>§();
               mNextState = this.set();
               break;
            case "MENU":
               §6!H§.§[!W§();
               mNextState = this.§"q§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
      
      protected function set() : String
      {
         return §%]§.§3F§;
      }
      
      protected function §"q§() : String
      {
         return §6!U§.§3F§;
      }
      
      protected function §9!1§() : String
      {
         return StateCutScene.§3F§;
      }
   }
}
