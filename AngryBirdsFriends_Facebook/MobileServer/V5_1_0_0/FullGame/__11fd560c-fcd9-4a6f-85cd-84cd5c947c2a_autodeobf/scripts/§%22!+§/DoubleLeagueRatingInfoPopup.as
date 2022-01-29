package §"!+§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class DoubleLeagueRatingInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "DoubleLeagueRatingInfoPopup";
       
      
      public function DoubleLeagueRatingInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_DoubleLeagueRatingInfoPopup[0],ID);
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
