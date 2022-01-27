package §8;§
{
   import §2S§.§,!;§;
   import §9c§.§,x§;
   import §<!F§.§5!+§;
   
   public class §4!0§ extends §!u§
   {
       
      
      public function §4!0§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §,!;§.§2o§.Views.View_LevelEndEmbedFailRio[0];
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
         §5!+§.§6!§.background.§37§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §8^§.§1!"§();
               mNextState = §,<§();
               break;
            case "MENU":
               mNextState = §+!%§.§"Z§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
