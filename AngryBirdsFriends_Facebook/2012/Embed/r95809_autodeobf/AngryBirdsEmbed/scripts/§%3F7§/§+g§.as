package §?7§
{
   import §-l§.§?'§;
   import §5Y§.§1!$§;
   import §8B§.§6!9§;
   
   public class §+g§ extends §^K§
   {
       
      
      public function §+g§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §1!$§.§7e§.Views.View_LevelEndEmbedFailRio[0];
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
         §?'§.§5!§.background.§4[§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §6!%§.§-W§.§'C§("LevelLose");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
