package §^!b§
{
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.events.MouseEvent;
   
   public class CoinBonanzaPopup extends AbstractPopup
   {
      
      public static const ID:String = "CoinBonanzaPopup";
       
      
      public function CoinBonanzaPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_CoinBonanzaPopup[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §'o§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§-"D§);
      }
      
      private function §-"D§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
