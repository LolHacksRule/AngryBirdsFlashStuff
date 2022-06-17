package §%4§
{
   import §%#v§.§0"j§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §?!N§.§%#§;
   import flash.events.MouseEvent;
   
   public class §7!,§ extends AbstractPopup
   {
       
      
      public function §7!,§(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_VCTutorial[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         §8#Y§.mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§,!H§);
      }
      
      private function §,!H§(param1:MouseEvent) : void
      {
         close();
         AngryBirdsBase.singleton.popupManager.openPopup(new §7#w§(§%#§.NORMAL,§9#5§.TOP));
      }
   }
}
