package §"c§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §>z§.§#"l§;
   import flash.events.MouseEvent;
   
   public class §?h§ extends AbstractPopup
   {
       
      
      public function §?h§(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_VCTutorial[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         §&!M§.mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§'!a§);
      }
      
      private function §'!a§(param1:MouseEvent) : void
      {
         close();
         AngryBirdsBase.singleton.popupManager.openPopup(new §3!d§(§#"l§.NORMAL,§]"Y§.TOP));
      }
   }
}
