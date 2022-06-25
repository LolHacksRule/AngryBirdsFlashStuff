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
         if(!(GENERAL_ERROR && THIRD_PARTY_COOKIES_DISABLED_ERROR))
         {
            loop0:
            do
            {
               GENERAL_ERROR = "generalError";
               while(true)
               {
                  while(!GENERAL_ERROR)
                  {
                     THIRD_PARTY_COOKIES_DISABLED_ERROR = "thirdPartyCookiesDisabled";
                     if(!(GENERAL_ERROR && GENERAL_ERROR))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(THIRD_PARTY_COOKIES_DISABLED_ERROR || GENERAL_ERROR));
            
         }
      }
      
      public function ErrorPopup(currentUIView:§6"§, statePopup:StatePopupManager, errorType:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_ || statePopup)
         {
            while(true)
            {
               while(_loc5_ || errorType)
               {
                  loop2:
                  while(_loc5_)
                  {
                     loop3:
                     while(true)
                     {
                        super(§>!^§.§8'§.Views.PopupView_Error[0],currentUIView);
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(!_loc4_)
                           {
                              mClip.gotoAndStop([GENERAL_ERROR,THIRD_PARTY_COOKIES_DISABLED_ERROR].indexOf(errorType) + 1);
                              loop6:
                              for(; !_loc4_; loop10:
                              while(true)
                              {
                                 if(_loc5_ || errorType)
                                 {
                                    §]!B§.pause();
                                    loop11:
                                    do
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       loop12:
                                       for(; _loc5_; while(true)
                                       {
                                          if(!(_loc4_ && statePopup))
                                          {
                                             continue loop10;
                                          }
                                          continue loop12;
                                          addr65:
                                          if(_loc5_ || statePopup)
                                          {
                                             continue loop11;
                                          }
                                       },continue loop10)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                AngryBirdsFP11.§5V§.§"§();
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr117);
                                       }
                                       §§goto(addr114);
                                    }
                                    while(_loc4_);
                                    
                                    return;
                                 }
                                 break;
                                 if(_loc4_ && currentUIView)
                                 {
                                    continue;
                                 }
                                 §§goto(addr65);
                              })
                              {
                                 while(true)
                                 {
                                    addr117:
                                    while(true)
                                    {
                                       mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+!+§);
                                       addr114:
                                       while(true)
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      private function §+!+§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  AngryBirdsFP11.§5V§.§"§();
                  addr61:
                  if(_loc3_ || _loc2_)
                  {
                     addr78:
                     if(!_loc3_)
                     {
                        addr54:
                        while(_loc3_ || _loc2_)
                        {
                           §§goto(addr61);
                           §§goto(addr78);
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              continue loop0;
                           }
                           addr102:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        addr54:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr102);
      }
   }
}
