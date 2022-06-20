package §]P§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import flash.events.MouseEvent;
   
   public class §0!3§ extends Popup
   {
       
      
      public function §0!3§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_EasterHunt[0],param1);
         this.init();
      }
      
      protected function init() : void
      {
         mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§@!a§);
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         preClose();
      }
   }
}
