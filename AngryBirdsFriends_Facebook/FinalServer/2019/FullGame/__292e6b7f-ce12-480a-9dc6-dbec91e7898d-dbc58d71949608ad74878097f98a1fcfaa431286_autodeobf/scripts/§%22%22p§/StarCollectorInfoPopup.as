package §""p§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import flash.events.MouseEvent;
   
   public class StarCollectorInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "StarCollectorInfoPopup";
       
      
      public function StarCollectorInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_StarCollectorInfo[0],ID);
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
