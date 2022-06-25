package §%!4§
{
   import § D§.§]!B§;
   import §##§.Popup;
   import §'b§.ExternalInterfaceHandler;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import flash.events.MouseEvent;
   
   public class ErrorPopup extends Popup
   {
      
      public static const GENERAL_ERROR:String = "generalError";
      
      public static const THIRD_PARTY_COOKIES_DISABLED_ERROR:String = "thirdPartyCookiesDisabled";
      
      {
         var GENERAL_ERROR:Boolean = false;
         var THIRD_PARTY_COOKIES_DISABLED_ERROR:Boolean = true;
         if(!(GENERAL_ERROR && ErrorPopup))
         {
            while(true)
            {
               GENERAL_ERROR = "generalError";
               while(THIRD_PARTY_COOKIES_DISABLED_ERROR)
               {
                  loop2:
                  while(!GENERAL_ERROR)
                  {
                     while(true)
                     {
                        THIRD_PARTY_COOKIES_DISABLED_ERROR = "thirdPartyCookiesDisabled";
                        if(!(GENERAL_ERROR && THIRD_PARTY_COOKIES_DISABLED_ERROR))
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
         §§goto(addr65);
      }
      
      public function ErrorPopup(currentUIView:§6"§, statePopup:StatePopupManager, errorType:String = "generalError")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_ || statePopup)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        super(§>!^§.§8'§.Views.PopupView_Error[0],currentUIView);
                        while(true)
                        {
                           while(!(_loc5_ && statePopup))
                           {
                              continue loop2;
                              loop8:
                              while(!(_loc5_ && statePopup))
                              {
                                 while(true)
                                 {
                                    §]!B§.pause();
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop8;
                                       addr41:
                                       if(_loc4_ || statePopup)
                                       {
                                          addr48:
                                          if(_loc5_ && errorType)
                                          {
                                             while(true)
                                             {
                                                mClip.gotoAndStop([GENERAL_ERROR,THIRD_PARTY_COOKIES_DISABLED_ERROR].indexOf(errorType) + 1);
                                                break loop8;
                                                §§goto(addr48);
                                             }
                                             addr173:
                                          }
                                          return;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        addr69:
                        if(_loc4_ || this)
                        {
                           AngryBirdsFP11.§5V§.§"§();
                           while(!_loc5_)
                           {
                              if(_loc5_ && errorType)
                              {
                                 continue;
                              }
                              §§goto(addr41);
                           }
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr69);
                              }
                              §§goto(addr106);
                           }
                           addr67:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr173);
      }
      
      private function §+!+§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || e)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  AngryBirdsFP11.§5V§.§"§();
                  while(true)
                  {
                     while(_loc2_ || _loc2_)
                     {
                        ExternalInterfaceHandler.§>!2§("window.location.reload");
                        loop4:
                        while(_loc2_)
                        {
                           continue loop1;
                           while(!_loc2_)
                           {
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr74);
      }
   }
}
