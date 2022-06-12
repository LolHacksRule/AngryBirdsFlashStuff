package §2"I§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import flash.events.MouseEvent;
   
   public class §!"A§ extends Popup
   {
       
      
      public function §!"A§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupView_EasterHunt[0],param1);
         this.init();
      }
      
      protected function init() : void
      {
         mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§2"%§);
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         preClose();
      }
   }
}
