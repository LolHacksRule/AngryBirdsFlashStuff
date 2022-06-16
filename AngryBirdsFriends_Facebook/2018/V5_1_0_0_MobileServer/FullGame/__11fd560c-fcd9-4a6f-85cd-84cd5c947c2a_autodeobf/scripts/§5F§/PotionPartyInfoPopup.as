package §5F§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class PotionPartyInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "PotionPartyInfoPopup";
       
      
      public function PotionPartyInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_PotionPartyInfoPopup[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§-"F§);
      }
      
      private function §-"F§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
