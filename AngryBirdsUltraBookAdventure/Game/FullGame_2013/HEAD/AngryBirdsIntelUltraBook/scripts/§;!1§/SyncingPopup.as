package §;!1§
{
   import §"$§.Popup;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   
   public class SyncingPopup extends Popup
   {
       
      
      public function SyncingPopup(currentUIView:§`X§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               loop1:
               for(; _loc3_; if(_loc4_)
               {
                  continue;
               },§§goto(addr53))
               {
                  while(true)
                  {
                     super(§+q§.§%M§.Views.PopupView_Syncing[0],currentUIView);
                     loop3:
                     while(!(_loc4_ && statePopup))
                     {
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
   }
}
