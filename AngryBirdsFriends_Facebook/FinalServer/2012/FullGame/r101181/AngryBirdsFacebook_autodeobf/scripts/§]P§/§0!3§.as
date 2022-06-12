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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§ "A§.§4[§.Views.PopupView_EasterHunt[0],param1);
            do
            {
               this.init();
            }
            while(!_loc3_);
            
         }
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§@!a§);
         }
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            preClose();
         }
      }
   }
}
