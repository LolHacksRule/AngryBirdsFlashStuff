package §'!s§
{
   import § each§.§>v§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §7-§.§,!C§;
   import flash.events.MouseEvent;
   
   public class §^""§ extends Popup
   {
       
      
      private var §2<§:Object;
      
      public function §^""§(param1:§7!A§, param2:StatePopupManager, param3:Object)
      {
         super(§ "A§.§4[§.Views.PopupMightyEaglePromotion[0],param1);
         this.§2<§ = param3;
         mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§0![§);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§>!V§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Date = new Date();
         var _loc3_:Number = _loc2_.time;
         var _loc4_:int = (this.§2<§.ce - _loc3_) / 1000;
         mClip.timeLeft.text = §,!C§.§;"§.§52§(_loc4_)[0];
         super.open(param1);
      }
      
      private function §0![§(param1:MouseEvent) : void
      {
         §>v§.§ [§ = "MightyEagle";
         §%?§.§6!x§(null);
         preClose(false);
      }
      
      private function §>!V§(param1:MouseEvent) : void
      {
         preClose();
      }
   }
}
