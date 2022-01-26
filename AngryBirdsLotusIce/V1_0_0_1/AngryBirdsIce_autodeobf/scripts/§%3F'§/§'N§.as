package §?'§
{
   import §87§.§2-§;
   import §;j§.§8[§;
   import §in§.§%K§;
   
   public class §'N§ extends §08§
   {
       
      
      public function §'N§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §2-§.§+J§.Views.View_LevelEndEmbedFailRio[0];
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
         §8[§.§import§.background.§^Y§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §`0§.§#T§();
               mNextState = §0,§();
               break;
            case "MENU":
               mNextState = §0k§.§`%§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
