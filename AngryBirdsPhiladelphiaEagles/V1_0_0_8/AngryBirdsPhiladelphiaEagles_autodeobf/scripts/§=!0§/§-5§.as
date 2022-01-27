package §=!0§
{
   import §5F§.§+!O§;
   import §=z§.§0!E§;
   import §>!7§.§`d§;
   
   public class §-5§ extends §-!N§
   {
       
      
      public function §-5§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §`d§.§8?§.Views.View_LevelEndEmbedFailRio[0];
      }
      
      override protected function showButtons() : void
      {
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function activate() : void
      {
         super.activate();
         §0!E§.§9!B§.background.§?4§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §1!F§.§4W§();
               mNextState = §8U§();
               break;
            case "MENU":
               mNextState = §9!+§.§@§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
