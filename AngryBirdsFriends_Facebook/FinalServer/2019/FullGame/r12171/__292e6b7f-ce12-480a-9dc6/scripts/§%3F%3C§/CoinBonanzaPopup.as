package §?<§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import flash.events.MouseEvent;
   
   public class CoinBonanzaPopup extends AbstractPopup
   {
      
      public static const ID:String = "CoinBonanzaPopup";
       
      
      public function CoinBonanzaPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_CoinBonanzaPopup[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §;#'§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§+"O§);
      }
      
      private function §+"O§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
