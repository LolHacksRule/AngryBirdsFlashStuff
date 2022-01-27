package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§-u§;
   import §;!!§.§0H§;
   import §>g§.§-!H§;
   
   public class §#e§ extends §0H§
   {
      
      public static const §2`§:String = "LevelEndFailStateRio";
       
      
      private var §26§:§-!H§;
      
      public function §#e§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         return §#4§.§]X§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = §2h§.§@!8§();
         if(_loc1_ && !AngryBirdsFP11.§ !-§.isLevelOpen(_loc1_) || !AngryBirdsFP11.§ !-§.isLevelPassed(§2h§.§,!P§))
         {
            (§<A§.getItemByName("Button_NextLevel") as §-u§).setVisibility(false);
            (§<A§.getItemByName("Button_CutScene") as §-u§).setVisibility(false);
            (§<A§.getItemByName("Button_MightyEagle") as §-u§).setVisibility(true);
         }
         else if(§2h§.§<&§())
         {
            (§<A§.getItemByName("Button_NextLevel") as §-u§).setVisibility(false);
            (§<A§.getItemByName("Button_CutScene") as §-u§).setVisibility(true);
         }
         else
         {
            (§<A§.getItemByName("Button_NextLevel") as §-u§).setVisibility(true);
            (§<A§.getItemByName("Button_CutScene") as §-u§).setVisibility(false);
         }
      }
      
      protected function hideButtons() : void
      {
         (§<A§.getItemByName("Button_CutScene") as §-u§).setVisibility(false);
         (§<A§.getItemByName("Button_MightyEagle") as §-u§).setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§26§ = new §-!H§(0,0,0,0);
         §<A§.movieClip.addChildAt(this.§26§,§<A§.movieClip.numChildren - 1);
         this.showButtons();
         this.§26§.fadeToAlpha(0.7);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            §[F§.§9u§.clearLevel();
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§26§)
         {
            if(§<A§.movieClip.contains(this.§26§))
            {
               §<A§.movieClip.removeChild(this.§26§);
            }
            this.§26§.clean();
            this.§26§ = null;
         }
         this.setButtonStates(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.hideButtons();
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§<A§.getItemByName("Button_Menu") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Replay") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_NextLevel") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_CutScene") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_MightyEagle") as §-u§).setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §#u§.§<k§();
               mNextState = this.§-!N§();
               break;
            case "REPLAY":
               §#u§.§<q§();
               mNextState = this.§6u§();
               break;
            case "MENU":
               §#-§.§[!>§();
               mNextState = this.§2E§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
      
      protected function §6u§() : String
      {
         return §#u§.§2`§;
      }
      
      protected function §2E§() : String
      {
         return §6!C§.§2`§;
      }
      
      protected function §-!N§() : String
      {
         return StateCutScene.§2`§;
      }
   }
}
