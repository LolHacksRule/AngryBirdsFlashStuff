package § C§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §>-§.§6H§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   
   public class §+!"§ extends §-§
   {
      
      public static const §?B§:String = "LevelEndFailStateRio";
       
      
      private var §^!D§:§6H§;
      
      public function §+!"§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §set §.§&!1§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §0$§.§?W§();
         if(_loc1_ && !AngryBirdsFP11.§64§.isLevelOpen(_loc1_) || !AngryBirdsFP11.§64§.isLevelPassed(§0$§.§[C§))
         {
            (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
            (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(false);
            (§,R§.getItemByName("Button_MightyEagle") as §^P§).setVisibility(true);
         }
         else if(§0$§.§;e§())
         {
            (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
            (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(true);
         }
         else
         {
            (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(false);
         (§,R§.getItemByName("Button_MightyEagle") as §^P§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§^!D§ = new §6H§(0,0,0,0);
         §,R§.movieClip.addChildAt(this.§^!D§,§,R§.movieClip.numChildren - 1);
         this.showButtons();
         this.§^!D§.§@2§(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §[o§.§='§.clearLevel();
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§^!D§)
         {
            if(§,R§.movieClip.contains(this.§^!D§))
            {
               §,R§.movieClip.removeChild(this.§^!D§);
            }
            this.§^!D§.clean();
            this.§^!D§ = null;
         }
         this.setButtonStates(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_NextLevel") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_CutScene") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §7!6§.§2v§();
               mNextState = this.§@e§();
               break;
            case "REPLAY":
               §7!6§.§<!G§();
               mNextState = this.§`^§();
               break;
            case "MENU":
               §@6§.§&t§();
               mNextState = this.§[9§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
      
      protected function §`^§() : String
      {
         return §7!6§.§?B§;
      }
      
      protected function §[9§() : String
      {
         return §4t§.§?B§;
      }
      
      protected function §@e§() : String
      {
         return StateCutScene.§?B§;
      }
   }
}
