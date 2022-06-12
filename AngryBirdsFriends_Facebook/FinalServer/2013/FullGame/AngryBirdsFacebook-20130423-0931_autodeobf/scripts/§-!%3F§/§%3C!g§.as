package §-!?§
{
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §<!g§ extends Popup
   {
       
      
      public function §<!g§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupView_EasterHunt[0],param1);
         this.init();
      }
      
      protected function init() : void
      {
         mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§if §);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         preClose();
      }
   }
}
