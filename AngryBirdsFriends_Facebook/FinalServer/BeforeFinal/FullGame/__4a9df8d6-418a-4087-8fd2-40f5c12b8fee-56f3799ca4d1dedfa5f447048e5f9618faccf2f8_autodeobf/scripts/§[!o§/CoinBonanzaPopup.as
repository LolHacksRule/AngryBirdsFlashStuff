package §[!o§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class CoinBonanzaPopup extends AbstractPopup
   {
      
      public static const ID:String = "CoinBonanzaPopup";
       
      
      public function CoinBonanzaPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_CoinBonanzaPopup[0],ID);
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
