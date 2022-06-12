package §5!Y§
{
   import §30§.§'"+§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §+L§ extends Popup
   {
       
      
      public function §+L§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupView_FreePowerups[0],param1);
         mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§0"U§);
      }
      
      private function §0"U§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§>m§.§^X§();
         §%"S§.§!C§.§^!F§.§#!=§ = false;
         §'"+§.§'!#§("flashShowFirstTimePayerPromotion");
         §'"+§.addCallback("newPayerPromotionSent",this.§3!M§);
      }
      
      private function §3!M§(param1:Object) : void
      {
         §'"+§.§"!6§("newPayerPromotionSent",this.§3!M§);
         close();
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         §%"S§.§!C§.§^!F§.§#!=§ = false;
         close();
      }
   }
}
