package §,!"§
{
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   
   public class §0H§ extends §]g§
   {
       
      
      public function §0H§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §`Z§.§5c§.Views.View_LevelEndEmbedFailRio[0];
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
         §#! §.§`'§.background.§,+§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §-O§.§8!5§();
               mNextState = §5!'§();
               break;
            case "MENU":
               mNextState = §@f§.§-A§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
