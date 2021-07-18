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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupView_EasterHunt[0],param1);
            do
            {
               this.init();
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§if §);
         }
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            preClose();
         }
      }
   }
}
