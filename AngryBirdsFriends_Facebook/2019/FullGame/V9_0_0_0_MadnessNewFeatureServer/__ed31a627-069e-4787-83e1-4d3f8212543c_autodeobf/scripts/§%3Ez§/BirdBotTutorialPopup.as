package §>z§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class BirdBotTutorialPopup extends AbstractPopup
   {
       
      
      public function BirdBotTutorialPopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupBirdBotHelp[0],"BirdBotTutorialPopup");
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-!b§);
      }
      
      private function §-!b§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
