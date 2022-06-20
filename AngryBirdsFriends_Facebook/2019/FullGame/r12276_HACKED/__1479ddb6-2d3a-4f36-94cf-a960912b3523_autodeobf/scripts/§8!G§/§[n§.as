package §8!G§
{
   import § h§.§-!S§;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.events.MouseEvent;
   
   public class §[n§ extends AbstractPopup
   {
       
      
      public function §[n§(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_VCTutorial[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         §'o§.mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§=#p§);
      }
      
      private function §=#p§(param1:MouseEvent) : void
      {
         close();
         AngryBirdsBase.singleton.popupManager.openPopup(new §<$9§(§-!S§.NORMAL,§## §.TOP));
      }
   }
}
