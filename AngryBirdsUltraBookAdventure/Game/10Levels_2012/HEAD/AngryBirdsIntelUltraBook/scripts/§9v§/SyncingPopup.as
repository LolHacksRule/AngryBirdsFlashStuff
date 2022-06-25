package §9v§
{
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   
   public class SyncingPopup extends Popup
   {
       
      
      public function SyncingPopup(currentUIView:§-!H§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && currentUIView))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  do
                  {
                     super(§3!5§.§4@§.Views.PopupView_Syncing[0],currentUIView);
                     while(!_loc3_)
                     {
                        continue loop0;
                        if(!(_loc3_ && this))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc3_ && statePopup);
                  
               }
            }
         }
      }
   }
}
