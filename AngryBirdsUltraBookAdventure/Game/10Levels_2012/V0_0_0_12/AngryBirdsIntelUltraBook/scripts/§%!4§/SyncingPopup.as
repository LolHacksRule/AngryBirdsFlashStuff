package §%!4§
{
   import §##§.Popup;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   
   public class SyncingPopup extends Popup
   {
       
      
      public function SyncingPopup(currentUIView:§6"§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || this)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               while(!_loc3_)
               {
                  super(§>!^§.§8'§.Views.PopupView_Syncing[0],currentUIView);
                  while(!(_loc3_ && currentUIView))
                  {
                     if(_loc4_ || statePopup)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(_loc3_);
         
      }
   }
}
