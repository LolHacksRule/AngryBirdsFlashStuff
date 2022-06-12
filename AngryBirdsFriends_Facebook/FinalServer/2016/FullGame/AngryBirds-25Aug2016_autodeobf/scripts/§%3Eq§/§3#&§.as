package §>q§
{
   import §<!O§.§@#`§;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class §3#&§ extends AbstractPopup
   {
       
      
      public function §3#&§(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_VCTutorial[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         §7!j§.mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§+!m§);
      }
      
      private function §+!m§(param1:MouseEvent) : void
      {
         close();
         AngryBirdsBase.singleton.popupManager.openPopup(new §1!_§(§[W§.NORMAL,§<d§.TOP));
      }
   }
}
