package §9"0§
{
   import § o§.§%"!§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import flash.events.MouseEvent;
   
   public class § #9§ extends AbstractPopup
   {
       
      
      public function § #9§(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_VCTutorial[0]);
      }
      
      override protected function init() : void
      {
         super.init();
         §1"6§.mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§;-§);
      }
      
      private function §;-§(param1:MouseEvent) : void
      {
         close();
         AngryBirdsBase.singleton.popupManager.openPopup(new §@#m§(§%"!§.NORMAL,§^#o§.TOP));
      }
   }
}
