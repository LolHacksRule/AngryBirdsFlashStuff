package §?Q§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import flash.events.MouseEvent;
   
   public class BirdBotTutorialPopup extends AbstractPopup
   {
       
      
      public function BirdBotTutorialPopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupBirdBotHelp[0],"BirdBotTutorialPopup");
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§+"O§);
      }
      
      private function §+"O§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
