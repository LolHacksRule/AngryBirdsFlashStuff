package §%!4§
{
   import §##§.Popup;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import §7p§.§+!N§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class ValentinePopup extends Popup
   {
      
      private static var sLoadingStarted:Boolean;
      
      private static var sLoader:§>!K§;
      
      private static var sData:Object;
      
      {
         var sLoadingStarted:Boolean = false;
         var sLoader:Boolean = true;
         if(sLoader || ValentinePopup)
         {
         }
         while(true)
         {
            while(sLoader || sLoader)
            {
               if(!sLoadingStarted)
               {
                  return;
               }
            }
         }
      }
      
      public function ValentinePopup(currentUIView:§6"§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               addr104:
               while(true)
               {
                  addr101:
                  while(true)
                  {
                     super(§>!^§.§8'§.Views.PopupView_Valentine[0],currentUIView);
                  }
               }
            }
            addr106:
         }
         loop3:
         while(true)
         {
            while(true)
            {
               if(_loc3_ || statePopup)
               {
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!L§);
                           while(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr104);
                  }
                  break;
               }
               continue loop3;
            }
            §§goto(addr101);
         }
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && ValentinePopup))
         {
            while(true)
            {
               §§push(sLoadingStarted);
               if(!_loc2_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        sLoadingStarted = true;
                        loop3:
                        for(; _loc1_; while(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr171);
                        })
                        {
                           loop4:
                           while(true)
                           {
                              sLoader = new §>!K§();
                              loop5:
                              while(!_loc2_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(sLoader);
                                    loop7:
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,§^!d§);
                                       while(true)
                                       {
                                          addr192:
                                          addr161:
                                          while(true)
                                          {
                                             §§push(sLoader);
                                             addr175:
                                             while(true)
                                             {
                                                §§pop().addEventListener(IOErrorEvent.IO_ERROR,§@!F§);
                                                continue loop3;
                                             }
                                          }
                                          if(_loc1_ || _loc2_)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(sLoader);
                                                         continue loop7;
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(sLoader);
                                                         while(_loc1_)
                                                         {
                                                            §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!F§);
                                                            while(_loc1_)
                                                            {
                                                               §§goto(addr161);
                                                            }
                                                            continue loop3;
                                                            addr81:
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               §§pop().load(§"!F§.§=i§(AngryBirdsFP11.SERVER_ROOT + "/claimvalentinebundle"));
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop20:
                                                                     while(_loc1_)
                                                                     {
                                                                        §+!N§.§1"§();
                                                                        while(!_loc2_)
                                                                        {
                                                                           if(_loc1_ || _loc1_)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  while(_loc1_)
                                                                  {
                                                                     §§push(sLoader);
                                                                     if(!(_loc1_ || _loc1_))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr81);
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                      addr171:
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr159);
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr57);
      }
      
      protected static function §@!F§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && e)
         {
         }
         if(!(_loc3_ && e))
         {
            while(true)
            {
               addr83:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               addr33:
               return;
               addr100:
            }
         }
         while(true)
         {
            if(e.type == RetryingURLLoaderErrorEvent.§3Y§)
            {
               if(!(_loc3_ && e))
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               loop3:
               while(true)
               {
                  §]!e§.§3!T§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
                  addr76:
                  while(_loc3_ && _loc2_)
                  {
                     continue loop3;
                  }
                  §§goto(addr83);
               }
            }
            else
            {
               §]!e§.§finally§();
               while(!(_loc2_ || e))
               {
               }
               if(!_loc3_)
               {
                  §§goto(addr33);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr100);
      }
      
      private static function §^!d§(e:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && _loc3_)
         {
         }
         if(_loc4_ || _loc3_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = e;
            loop1:
            while(true)
            {
               while(true)
               {
                  while(_loc4_)
                  {
                     continue loop0;
                     while(!(_loc5_ && onInitDataLoaded$1))
                     {
                        if(!_loc5_)
                        {
                           if(!(_loc4_ || onInitDataLoaded$1))
                           {
                              continue;
                           }
                           if(false)
                           {
                              continue loop0;
                           }
                           try
                           {
                              sData = JSON.parse(sLoader.data);
                              if(_loc4_)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr148:
                                    §§push(parsingFailed);
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc5_ && onInitDataLoaded$1))
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc4_)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§pop();
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr253);
                                             }
                                             if(!§§pop())
                                             {
                                                §]!e§.§finally§();
                                                addr215:
                                                if(_loc4_ || ValentinePopup)
                                                {
                                                   addr197:
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc4_ || onInitDataLoaded$1)
                                                      {
                                                         addr188:
                                                         sLoader = null;
                                                         addr192:
                                                         if(_loc4_)
                                                         {
                                                            if(_loc5_ && ValentinePopup)
                                                            {
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      addr238:
                                                      if(_loc4_ || onInitDataLoaded$1)
                                                      {
                                                         §§goto(addr188);
                                                      }
                                                      §]!e§.§&R§();
                                                      §§goto(addr238);
                                                      addr256:
                                                   }
                                                   §§goto(addr215);
                                                }
                                             }
                                             §§goto(addr256);
                                          }
                                       }
                                    }
                                    §§goto(addr253);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr238);
                           }
                           catch(e:Error)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc4_ || ValentinePopup)
                                 {
                                    §§push(onInitDataLoaded$1);
                                    §§push(true);
                                    if(_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    §§pop().§§slot[2] = §§pop();
                                 }
                              }
                              if(_loc5_)
                              {
                              }
                              §§goto(addr148);
                           }
                           addr187:
                           if(_loc4_)
                           {
                              §§push(sData.success == true);
                              if(!_loc5_)
                              {
                                 addr253:
                                 §§push(Boolean(§§pop()));
                              }
                              addr173:
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §"!L§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               do
               {
                  this.deActivate();
                  continue loop0;
               }
               while(_loc3_);
               
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         loop0:
         do
         {
            super.deActivate();
            loop1:
            while(true)
            {
               loop2:
               do
               {
                  close();
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc2_);
               
               continue loop0;
            }
         }
         while(_loc2_);
         
      }
   }
}
