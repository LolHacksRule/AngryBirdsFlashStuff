package § C§
{
   import §!Y§.§[o§;
   import §2]§.§set §;
   import §`W§.§-[§;
   
   public class §5V§ extends §+!"§
   {
       
      
      public function §5V§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override protected function getViewXML() : XML
      {
         return §set §.§&!1§.Views.View_LevelEndEmbedFailRio[0];
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
         §[o§.§='§.background.§1!>§();
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §7!6§.§<!G§();
               mNextState = §`^§();
               break;
            case "MENU":
               mNextState = §>!9§.§?B§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
