package §5!Y§
{
   import §0D§.§3!R§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §1H§ extends Popup
   {
       
      
      private var §&n§:Object;
      
      public function §1H§(param1:§`_§, param2:StatePopupManager, param3:Object)
      {
         super(§ "<§.§%I§.Views.PopupMightyEaglePromotion[0],param1);
         this.§&n§ = param3;
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1'§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Number = §%"S§.§!C§.§9"%§.§ Y§.§?!;§;
         var _loc3_:int = (this.§&n§.ce - _loc2_) / 1000;
         mClip.timeLeft.text = §3!R§.§&"5§.§2"I§(_loc3_)[0];
         super.open(param1);
      }
      
      private function §1'§(param1:MouseEvent) : void
      {
         preClose();
      }
   }
}
