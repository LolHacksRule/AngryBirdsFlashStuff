package §;!1§
{
   import §"$§.Popup;
   import §&"§.ExternalInterfaceHandler;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.events.MouseEvent;
   
   public class ErrorPopup extends Popup
   {
      
      public static const GENERAL_ERROR:String = "generalError";
      
      public static const THIRD_PARTY_COOKIES_DISABLED_ERROR:String = "thirdPartyCookiesDisabled";
      
      {
         var GENERAL_ERROR:Boolean = true;
         var THIRD_PARTY_COOKIES_DISABLED_ERROR:Boolean = false;
         if(!THIRD_PARTY_COOKIES_DISABLED_ERROR)
         {
            while(true)
            {
               GENERAL_ERROR = "generalError";
               while(true)
               {
                  §§goto(addr66);
               }
            }
         }
         addr66:
         while(true)
         {
            THIRD_PARTY_COOKIES_DISABLED_ERROR = "thirdPartyCookiesDisabled";
            if(!(THIRD_PARTY_COOKIES_DISABLED_ERROR && ErrorPopup))
            {
               if(!THIRD_PARTY_COOKIES_DISABLED_ERROR)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr63:
      }
      
      public function ErrorPopup(currentUIView:§`X§, statePopup:StatePopupManager, errorType:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && currentUIView))
         {
            while(true)
            {
               loop2:
               for(; !(_loc4_ && statePopup); while(!(_loc4_ && statePopup))
               {
                  §§goto(addr102);
               })
               {
                  while(!(_loc4_ && currentUIView))
                  {
                     super(§+q§.§%M§.Views.PopupView_Error[0],currentUIView);
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           mClip.gotoAndStop([GENERAL_ERROR,THIRD_PARTY_COOKIES_DISABLED_ERROR].indexOf(errorType) + 1);
                           while(true)
                           {
                              addr126:
                              while(true)
                              {
                                 mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§3!H§);
                                 continue loop2;
                              }
                              addr60:
                              if(!(_loc4_ && currentUIView))
                              {
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     continue loop2;
                     §§goto(addr170);
                  }
                  addr170:
               }
            }
         }
         §§goto(addr190);
      }
      
      private function §3!H§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
               while(!(_loc2_ && e))
               {
                  AngryBirdsFP11.§'t§.§?]§();
                  loop2:
                  while(!_loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        ExternalInterfaceHandler.§`F§("window.location.reload");
                        while(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break loop3;
                              }
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
   }
}
