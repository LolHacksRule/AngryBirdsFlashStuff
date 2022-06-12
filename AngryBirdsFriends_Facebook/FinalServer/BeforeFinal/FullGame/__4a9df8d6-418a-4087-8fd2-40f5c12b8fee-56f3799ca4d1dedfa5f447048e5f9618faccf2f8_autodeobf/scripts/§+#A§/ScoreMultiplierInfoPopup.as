package §+#A§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class ScoreMultiplierInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ScoreMultiplierInfoPopup";
       
      
      public function ScoreMultiplierInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_ScoreMultiplierInfoPopup[0],ID);
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
