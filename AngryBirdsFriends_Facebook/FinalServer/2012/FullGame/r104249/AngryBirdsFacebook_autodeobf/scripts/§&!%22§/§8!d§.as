package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §<<§.§=!L§;
   import flash.events.MouseEvent;
   
   public class §8!d§ extends Popup
   {
       
      
      public function §8!d§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupView_FreePowerups[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§2"%§);
         mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§9"7§);
      }
      
      private function §9"7§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§#!4§.§1z§();
         §,"I§.§&q§.§[y§.§?"F§ = false;
         §=!L§.§+">§("flashShowFirstTimePayerPromotion");
         §=!L§.addCallback("newPayerPromotionSent",this.§6!"§);
      }
      
      private function §6!"§(param1:Object) : void
      {
         §=!L§.§>7§("newPayerPromotionSent",this.§6!"§);
         close();
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         §,"I§.§&q§.§[y§.§?"F§ = false;
         close();
      }
   }
}
