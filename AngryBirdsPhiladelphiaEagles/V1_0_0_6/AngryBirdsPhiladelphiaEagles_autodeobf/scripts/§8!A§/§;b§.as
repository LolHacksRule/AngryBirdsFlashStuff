package §8!A§
{
   import §!!0§.§ true§;
   import §&b§.§[F§;
   import §4M§.;
   
   public class §;b§ extends §#e§
   {
       
      
      public function §;b§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §#4§.§]X§.Views.View_LevelEndEmbedFailRio[0];
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
         §[F§.§9u§.background.§4C§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §#u§.§<q§();
               mNextState = §6u§();
               break;
            case "MENU":
               mNextState = §7!O§.§2`§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
