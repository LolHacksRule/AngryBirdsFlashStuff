package static
{
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class DoubleLeagueRatingInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "DoubleLeagueRatingInfoPopup";
       
      
      public function DoubleLeagueRatingInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_DoubleLeagueRatingInfoPopup[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §1"6§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§]2§);
      }
      
      private function §]2§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
