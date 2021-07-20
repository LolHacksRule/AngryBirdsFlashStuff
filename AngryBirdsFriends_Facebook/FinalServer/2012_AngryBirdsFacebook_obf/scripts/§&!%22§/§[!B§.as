package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §each §.§@x§;
   import flash.events.MouseEvent;
   
   public class §[!B§ extends Popup
   {
       
      
      public function §[!B§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupMightyEaglePromotion[0],param1);
         mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§;Q§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4"L§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Number = §,"I§.§&q§.§+g§.§?"&§.§?9§;
         mClip.timeLeft.text = §@x§.§3!u§(true);
         super.open(param1);
      }
      
      private function §;Q§(param1:MouseEvent) : void
      {
         §`B§.§8m§();
         preClose(false);
      }
      
      private function §4"L§(param1:MouseEvent) : void
      {
         preClose();
      }
   }
}
