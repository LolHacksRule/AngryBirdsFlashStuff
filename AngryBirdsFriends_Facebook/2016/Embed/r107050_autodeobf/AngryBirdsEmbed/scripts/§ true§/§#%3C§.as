package § true§
{
   import §>!O§.§[+§;
   import §@a§.§'p§;
   import §]!=§.§;!6§;
   
   public class §#<§ extends §0!§
   {
       
      
      public function §#<§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §'p§.§ ,§.Views.View_LevelEndEmbedFailRio[0];
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
         §[+§.§,!&§.background.§ 8§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#m§.§;C§.§%!4§("LevelLose");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
