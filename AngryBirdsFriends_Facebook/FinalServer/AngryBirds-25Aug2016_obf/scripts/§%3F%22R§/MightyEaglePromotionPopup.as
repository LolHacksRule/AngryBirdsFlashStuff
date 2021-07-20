package §?"R§
{
   import §%$!§.§+3§;
   import §5"$§.§]!m§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class MightyEaglePromotionPopup extends AbstractPopup
   {
      
      public static const ID:String = "MightyEaglePromotionPopup";
       
      
      private var §;!%§:Object;
      
      public function MightyEaglePromotionPopup(param1:int, param2:int, param3:Object)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupMightyEaglePromotion[0],ID);
         this.§;!%§ = param3;
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      override protected function init() : void
      {
         super.init();
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="R§);
         var _loc1_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (this.§;!%§.ce - _loc1_) / 1000;
         §7!j§.mClip.timeLeft.text = §]!m§.§3!]§.§-#u§(_loc2_)[0];
      }
      
      private function §="R§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
