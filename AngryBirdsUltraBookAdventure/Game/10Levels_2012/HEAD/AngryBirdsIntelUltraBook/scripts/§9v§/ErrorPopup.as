package §9v§
{
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
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
               while(!(THIRD_PARTY_COOKIES_DISABLED_ERROR && GENERAL_ERROR))
               {
                  loop2:
                  while(!THIRD_PARTY_COOKIES_DISABLED_ERROR)
                  {
                     while(true)
                     {
                        THIRD_PARTY_COOKIES_DISABLED_ERROR = "thirdPartyCookiesDisabled";
                        if(!THIRD_PARTY_COOKIES_DISABLED_ERROR)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function ErrorPopup(currentUIView:§-!H§, statePopup:StatePopupManager, errorType:String = "generalError")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || errorType)
         {
         }
         if(!_loc5_)
         {
            while(true)
            {
               addr189:
               while(true)
               {
               }
               addr77:
               if(_loc4_ || this)
               {
                  §4!T§.pause();
                  loop10:
                  do
                  {
                     loop11:
                     while(_loc4_)
                     {
                        AngryBirdsFP11.§8R§.§!!'§();
                        while(_loc4_ || currentUIView)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 continue loop10;
                              }
                              continue loop11;
                           }
                        }
                        loop9:
                        while(true)
                        {
                           if(_loc4_ || errorType)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr77);
                           }
                           addr106:
                           addr116:
                           while(_loc4_ || errorType)
                           {
                              continue loop9;
                           }
                           while(true)
                           {
                              mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1Y§);
                              §§goto(addr106);
                           }
                        }
                        addr47:
                        while(true)
                        {
                           while(true)
                           {
                              super(§3!5§.§4@§.Views.PopupView_Error[0],currentUIView);
                              while(_loc4_ || currentUIView)
                              {
                                 while(true)
                                 {
                                    mClip.gotoAndStop([GENERAL_ERROR,THIRD_PARTY_COOKIES_DISABLED_ERROR].indexOf(errorType) + 1);
                                    break loop11;
                                 }
                                 if(!(_loc4_ || statePopup))
                                 {
                                    continue;
                                 }
                                 if(!_loc5_)
                                 {
                                    §§goto(addr116);
                                 }
                                 else
                                 {
                                    §§goto(addr189);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!(_loc5_ && errorType))
                        {
                           §§goto(addr139);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr189);
                  }
                  while(_loc5_);
                  
                  return;
               }
            }
         }
         §§goto(addr186);
      }
      
      private function §1Y§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(_loc2_)
               {
                  AngryBirdsFP11.§8R§.§!!'§();
                  while(!(_loc3_ && this))
                  {
                     while(!_loc3_)
                     {
                        ExternalInterfaceHandler.§!!@§("window.location.reload");
                        loop4:
                        while(_loc2_ || e)
                        {
                           while(_loc3_ && _loc2_)
                           {
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
   }
}
