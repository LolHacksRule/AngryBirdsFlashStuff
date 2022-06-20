package §^!o§
{
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §'s§ extends Popup
   {
       
      
      public function §'s§(param1:§`_§, param2:StatePopupManager, param3:String = "")
      {
         super(§ "<§.§%I§.Views.PopupView_VCTutorial[0],param1);
         mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§6">§);
      }
      
      private function §6">§(param1:MouseEvent) : void
      {
         close();
         §9"6§.§?"F§();
      }
   }
}
