package §2>§
{
   import §6h§.§[!4§;
   import §7J§.§<!?§;
   import §?H§.§-!K§;
   
   public class §-;§ extends §'!=§
   {
       
      
      public function §-;§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §-!K§.§"!G§.Views.View_LevelEndEmbedFailRio[0];
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
         §[!4§.§continue§.background.§74§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §0S§.§8!E§.dynamic("LevelLose");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
