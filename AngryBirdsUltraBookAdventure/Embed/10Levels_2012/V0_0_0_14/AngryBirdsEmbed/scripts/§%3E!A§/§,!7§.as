package §>!A§
{
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §<!G§.§!I§;
   
   public class §,!7§ extends §>8§
   {
       
      
      public function §,!7§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §!I§.§7y§.Views.View_LevelEndEmbedFailRio[0];
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
         §[k§.§&@§.background.§]I§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#W§.§[G§.§=K§("LevelLose");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
