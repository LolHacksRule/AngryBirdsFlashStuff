package §##§
{
   import §'!N§.§%!E§;
   import §@w§.§2G§;
   import §]!O§.§;Q§;
   
   public class §^!2§ extends §="§
   {
       
      
      public function §^!2§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §;Q§.static.Views.View_LevelEndEmbedFailRio[0];
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
         §2G§.§7!,§.background.§5!"§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §6l§.§"w§();
               mNextState = §2!>§();
               break;
            case "MENU":
               mNextState = §package§.§=,§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
