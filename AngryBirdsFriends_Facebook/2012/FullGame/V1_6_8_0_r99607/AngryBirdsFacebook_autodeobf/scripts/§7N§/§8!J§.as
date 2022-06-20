package §7N§
{
   import §<!e§.§[!t§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import §`"5§.§?Q§;
   import flash.events.MouseEvent;
   
   public class §8!J§ extends Popup
   {
       
      
      private var §="A§:Object;
      
      public function §8!J§(param1:§"!j§, param2:StatePopupManager, param3:Object)
      {
         super(§1"-§.§ !>§.Views.PopupMightyEaglePromotion[0],param1);
         this.§="A§ = param3;
         mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§!Z§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§^j§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Date = new Date();
         var _loc3_:Number = _loc2_.time;
         var _loc4_:int = (this.§="A§.ce - _loc3_) / 1000;
         mClip.timeLeft.text = §[!t§.§8c§.§1w§(_loc4_)[0];
         super.open(param1);
      }
      
      private function §!Z§(param1:MouseEvent) : void
      {
         §?Q§.§7""§ = "MightyEagle";
         §43§.§!!A§(null);
         preClose(false);
      }
      
      private function §^j§(param1:MouseEvent) : void
      {
         preClose();
      }
   }
}
