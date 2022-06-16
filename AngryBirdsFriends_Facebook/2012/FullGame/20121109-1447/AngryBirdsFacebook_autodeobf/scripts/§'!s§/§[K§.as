package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §+N§.§@!]§;
   import flash.events.MouseEvent;
   
   public class §[K§ extends Popup
   {
       
      
      public function §[K§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_FreePowerups[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§"N§);
      }
      
      private function §"N§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§@<§.§#m§();
         §3T§.§67§.§0+§.§3"F§ = false;
         §@!]§.§9"'§("flashShowFirstTimePayerPromotion");
         §@!]§.addCallback("newPayerPromotionSent",this.§2!%§);
      }
      
      private function §2!%§(param1:Object) : void
      {
         §@!]§.§[">§("newPayerPromotionSent",this.§2!%§);
         close();
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         §3T§.§67§.§0+§.§3"F§ = false;
         close();
      }
   }
}
