package §?"R§
{
   import §%$!§.§%h§;
   import §+"%§.§6X§;
   import §4#%§.§@#@§;
   import §<!O§.§@#`§;
   import §@"D§.§[o§;
   import §^!,§.AbstractPopup;
   import §^$4§.§>"T§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FirstTimePayerPopup extends AbstractPopup implements §@#@§
   {
      
      public static const ID:String = "FirstTimePayerPopup";
      
      public static const §-$9§:String = "PayerPromotionCompleted";
       
      
      private var §7"#§:§[o§;
      
      public function FirstTimePayerPopup(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_FreePowerups[0],ID);
      }
      
      protected function §5!8§(param1:§>"T§) : void
      {
         §6X§.§3U§("flashShowFirstTimeNewPayerPromotion",param1.changedItems[0].toString());
         §6X§.addCallback("newPayerPromotionSent",this.§,o§);
      }
      
      override protected function init() : void
      {
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §7!j§.mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§%!1§);
      }
      
      private function §%!1§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§7"#§ = new §[o§(null,null);
         this.§7"#§.addEventListener(§>"T§.§>"d§,this.§5!8§);
         this.§7"#§.addEventListener(§>"T§.§-b§,this.§'"K§);
      }
      
      protected function §'"K§(param1:Event) : void
      {
         close();
      }
      
      private function §,o§(param1:Object) : void
      {
         §8G§.§%#S§.§+T§.§""O§ = false;
         dispatchEvent(new Event(§-$9§));
         this.§7"#§.removeEventListener(§>"T§.§>"d§,this.§5!8§);
         this.§7"#§.removeEventListener(§>"T§.§-b§,this.§'"K§);
         §6X§.§5!3§("newPayerPromotionSent",this.§,o§);
         §%h§.§3!]§.§=L§();
         close();
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §<$#§() : String
      {
         return ID;
      }
   }
}
