package §5"2§
{
   import §%#v§.§0"j§;
   import §;$5§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class PotionPartyInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "PotionPartyInfoPopup";
       
      
      public function PotionPartyInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_PotionPartyInfoPopup[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §8#Y§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§>"J§);
      }
      
      private function §>"J§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
