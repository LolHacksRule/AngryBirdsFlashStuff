package §7N§
{
   import §<"1§.§,U§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.MouseEvent;
   
   public class §9!4§ extends Popup
   {
       
      
      public function §9!4§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_FreePowerups[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§6W§);
         mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§[a§);
      }
      
      private function §[a§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§`"B§.§'H§();
         § W§.§%!y§.§2Q§.§&b§ = false;
         §,U§.§53§("flashShowFirstTimePayerPromotion");
         §,U§.addCallback("newPayerPromotionSent",this.§`i§);
      }
      
      private function §`i§(param1:Object) : void
      {
         §,U§.§-!N§("newPayerPromotionSent",this.§`i§);
         close();
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         § W§.§%!y§.§2Q§.§&b§ = false;
         close();
      }
   }
}
