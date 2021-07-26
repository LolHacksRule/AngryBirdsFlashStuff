package §]"U§
{
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §?Q§.§@#D§;
   import flash.events.MouseEvent;
   
   public class §[!7§ extends AbstractPopup
   {
       
      
      public function §[!7§(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_VCTutorial[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         §;#'§.mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§!"p§);
      }
      
      private function §!"p§(param1:MouseEvent) : void
      {
         close();
         AngryBirdsBase.singleton.popupManager.openPopup(new §>#T§(§@#D§.NORMAL,§5R§.TOP));
      }
   }
}
