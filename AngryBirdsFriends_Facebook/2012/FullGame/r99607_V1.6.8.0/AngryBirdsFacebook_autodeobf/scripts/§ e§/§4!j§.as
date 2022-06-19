package § e§
{
   import §7N§.Popup;
   import §7N§.StatePopupManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.MouseEvent;
   
   public class §4!j§ extends Popup
   {
       
      
      public function §4!j§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_EasterHunt[0],param1);
         this.init();
      }
      
      protected function init() : void
      {
         mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§6W§);
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         preClose();
      }
   }
}
