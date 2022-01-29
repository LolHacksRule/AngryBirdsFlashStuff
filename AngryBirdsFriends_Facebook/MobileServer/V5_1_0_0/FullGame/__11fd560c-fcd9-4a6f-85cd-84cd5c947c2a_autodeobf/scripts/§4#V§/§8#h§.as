package §4#V§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §?P§.§]"$§;
   import flash.events.MouseEvent;
   
   public class §8#h§ extends AbstractPopup
   {
       
      
      public function §8#h§(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_VCTutorial[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         §,#2§.mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§%!U§);
      }
      
      private function §%!U§(param1:MouseEvent) : void
      {
         close();
         AngryBirdsBase.singleton.popupManager.openPopup(new §+!c§(§]"$§.NORMAL,§^"U§.TOP));
      }
   }
}
