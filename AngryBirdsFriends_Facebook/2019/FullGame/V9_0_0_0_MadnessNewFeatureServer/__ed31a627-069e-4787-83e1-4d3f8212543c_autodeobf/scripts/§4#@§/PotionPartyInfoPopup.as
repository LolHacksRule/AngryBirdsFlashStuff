package §4#@§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class PotionPartyInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "PotionPartyInfoPopup";
       
      
      public function PotionPartyInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_PotionPartyInfoPopup[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §&!M§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§-!b§);
      }
      
      private function §-!b§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
