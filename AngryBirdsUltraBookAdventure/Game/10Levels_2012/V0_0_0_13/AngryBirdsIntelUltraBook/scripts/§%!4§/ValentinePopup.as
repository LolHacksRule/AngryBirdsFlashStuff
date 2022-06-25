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
         if(!(sLoadingStarted && sLoadingStarted))
         {
            while(true)
            {
               while(sLoader)
               {
                  if(sLoader || ValentinePopup)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function ValentinePopup(currentUIView:§6"§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || statePopup)
         {
         }
         if(_loc4_ || _loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super(§>!^§.§8'§.Views.PopupView_Valentine[0],currentUIView);
                     loop3:
                     do
                     {
                        while(!_loc3_)
                        {
                           continue loop0;
                           while(_loc4_ || this)
                           {
                              continue loop2;
                              if(_loc4_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                        continue loop1;
                     }
                     while(_loc3_);
                     
                  }
               }
            }
         }
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || ValentinePopup)
         {
            loop0:
            do
            {
               §§push(sLoadingStarted);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               loop1:
               while(true)
               {
                  while(true)
                  {
                     sLoadingStarted = true;
                     while(_loc1_)
                     {
                        loop12:
                        while(_loc1_ || ValentinePopup)
                        {
                           loop13:
                           while(true)
                           {
                              §§push(sLoader);
                              loop14:
                              while(true)
                              {
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!F§);
                                 loop15:
                                 while(true)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr175:
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§push(sLoader);
                                             continue loop14;
                                          }
                                          addr249:
                                          while(true)
                                          {
                                             addr243:
                                             loop7:
                                             while(true)
                                             {
                                                §§push(sLoader);
                                                while(true)
                                                {
                                                   §§pop().addEventListener(Event.COMPLETE,§^!d§);
                                                   break loop16;
                                                   addr95:
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§pop().load(§"!F§.§=i§(AngryBirdsFP11.SERVER_ROOT + "/claimvalentinebundle"));
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            continue loop13;
                                                         }
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && ValentinePopup))
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(sLoader);
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               §§goto(addr95);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               addr170:
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop7;
                                                      addr112:
                                                   }
                                                }
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       break;
                                       addr43:
                                       if(!(_loc1_ || ValentinePopup))
                                       {
                                          continue;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop15;
                                       }
                                       addr52:
                                       if(_loc1_ || ValentinePopup)
                                       {
                                          continue loop0;
                                       }
                                       addr252:
                                       while(_loc1_)
                                       {
                                          §§push(sLoader);
                                          while(true)
                                          {
                                             §§pop().addEventListener(IOErrorEvent.IO_ERROR,§@!F§);
                                             continue loop12;
                                             addr156:
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             §§pop().addEventListener(RetryingURLLoaderErrorEvent.§3Y§,§@!F§);
                                             §§goto(addr170);
                                          }
                                          §§goto(addr52);
                                       }
                                       while(true)
                                       {
                                          sLoader = new §>!K§();
                                          §§goto(addr249);
                                       }
                                       addr217:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr217);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(!(_loc1_ || ValentinePopup));
            
            return;
         }
         while(true)
         {
            §§goto(addr252);
         }
      }
      
      protected static function §@!F§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && ValentinePopup)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
            }
            addr109:
         }
         loop1:
         do
         {
            if(e.type != RetryingURLLoaderErrorEvent.§3Y§)
            {
               §]!e§.§finally§();
               loop2:
               while(!_loc2_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc3_ || e))
                  {
                     loop3:
                     while(true)
                     {
                        §]!e§.§3!T§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
                        break loop2;
                        addr103:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr29);
                  }
                  §§goto(addr109);
               }
               while(true)
               {
                  if(_loc3_ || _loc2_)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr103);
         }
         while(_loc2_);
         
         addr29:
      }
      
      private static function §^!d§(e:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(!_loc5_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = e;
            while(true)
            {
               loop2:
               for(; _loc5_ || onInitDataLoaded$1; while(!(_loc4_ && ValentinePopup))
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr32);
               })
               {
                  while(true)
                  {
                     addr41:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(false);
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        §§pop().§§slot[2] = §§pop();
                        continue loop2;
                     }
                     addr32:
                     continue loop0;
                     if(!(_loc5_ || onInitDataLoaded$1))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr41);
                     }
                     else
                     {
                        try
                        {
                           sData = JSON.parse(sLoader.data);
                           if(_loc5_)
                           {
                              if(_loc5_ || e)
                              {
                                 addr144:
                                 §§push(parsingFailed);
                                 if(_loc5_ || onInitDataLoaded$1)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc4_ && onInitDataLoaded$1))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc5_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && onInitDataLoaded$1))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                §§pop();
                                                if(!(_loc4_ && onInitDataLoaded$1))
                                                {
                                                   §§push(sData.success == true);
                                                   if(_loc5_ || ValentinePopup)
                                                   {
                                                      addr270:
                                                      if(!§§pop())
                                                      {
                                                         §]!e§.§finally§();
                                                         addr208:
                                                         sLoader = null;
                                                         addr250:
                                                         if(!(_loc4_ && e))
                                                         {
                                                            if(_loc5_ || e)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc5_ || onInitDataLoaded$1))
                                                                        {
                                                                           addr256:
                                                                           §§goto(addr208);
                                                                           addr256:
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               addr271:
                                                            }
                                                            §]!e§.§&R§();
                                                            §§goto(addr256);
                                                         }
                                                         addr241:
                                                         §§goto(addr241);
                                                      }
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr271);
                                             }
                                          }
                                       }
                                       §§goto(addr270);
                                    }
                                 }
                                 §§goto(addr270);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr256);
                        }
                        catch(e:Error)
                        {
                           var _loc3_:* = e;
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc4_ && onInitDataLoaded$1)
                              {
                              }
                              addr139:
                              if(_loc4_)
                              {
                              }
                              §§goto(addr144);
                           }
                           §§push(onInitDataLoaded$1);
                           §§push(true);
                           if(_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           §§pop().§§slot[2] = §§pop();
                           §§goto(addr139);
                        }
                        §§goto(addr208);
                     }
                  }
               }
            }
         }
      }
      
      private function §"!L§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
         }
         while(true)
         {
            while(_loc3_ || _loc3_)
            {
               this.deActivate();
               while(!_loc3_)
               {
               }
               if(!_loc2_)
               {
                  return;
               }
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
         if(_loc1_)
         {
            while(true)
            {
               super.deActivate();
               addr58:
               if(!(_loc2_ && _loc2_))
               {
                  addr65:
                  if(_loc2_)
                  {
                     while(!_loc2_)
                     {
                        §§goto(addr58);
                        §§goto(addr65);
                     }
                     while(_loc1_)
                     {
                        close();
                        §§goto(addr56);
                     }
                     addr56:
                     while(true)
                     {
                        §§goto(addr68);
                     }
                     addr68:
                     addr75:
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
   }
}
