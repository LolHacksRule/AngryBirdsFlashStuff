package §@!%§
{
   import §0u§.§&]§;
   import §10§.§#!4§;
   import §6!,§.§1W§;
   
   public class §]6§ extends §!!'§
   {
       
      
      public function §]6§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §1W§.§&!G§.Views.View_LevelEndEmbedFailRio[0];
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
         §#!4§.§^Y§.background.§[r§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#@§.§]z§.§[!2§("LevelLose");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
