package §!$§
{
   import §!^§.§"%§;
   import §>%§.§]3§;
   import §^s§.§?O§;
   
   public class §2I§ extends §%!$§
   {
       
      
      public function §2I§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §?O§.§@!<§.Views.View_LevelEndEmbedFailRio[0];
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
         §]3§.§;v§.background.§@%§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §7@§.§7y§.§8v§("LevelLose");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
