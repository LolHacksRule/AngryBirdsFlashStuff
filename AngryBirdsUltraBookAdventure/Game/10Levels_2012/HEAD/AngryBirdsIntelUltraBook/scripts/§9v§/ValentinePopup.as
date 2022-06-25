package §9v§
{
   import § $§.§-!Q§;
   import § $§.§1!6§;
   import § $§.RetryingURLLoaderErrorEvent;
   import §9!!§.§85§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class ValentinePopup extends Popup
   {
      
      private static var sLoadingStarted:Boolean;
      
      private static var sLoader:§1!6§;
      
      private static var sData:Object;
      
      {
         var sLoadingStarted:Boolean = true;
         var sLoader:Boolean = false;
         if(sLoadingStarted || sLoader)
         {
            while(true)
            {
               loop1:
               while(sLoadingStarted || sLoadingStarted)
               {
                  while(sLoader)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function ValentinePopup(currentUIView:§-!H§, statePopup:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || statePopup)
         {
         }
         if(!(_loc4_ && statePopup))
         {
            while(true)
            {
               loop3:
               while(!(_loc4_ && statePopup))
               {
                  loop4:
                  do
                  {
                     mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§'?§);
                     loop5:
                     for(; !_loc4_; if(!_loc4_)
                     {
                        continue loop4;
                     })
                     {
                        addr74:
                        if(!(_loc4_ && _loc3_))
                        {
                           continue;
                        }
                        addr116:
                        while(true)
                        {
                           super(§3!5§.§4@§.Views.PopupView_Valentine[0],currentUIView);
                           break loop5;
                           §§goto(addr74);
                        }
                     }
                     continue loop3;
                  }
                  while(_loc4_ && this);
                  
                  addr58:
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§goto(addr116);
                        §§goto(addr58);
                     }
                     addr119:
                  }
                  return;
               }
            }
         }
         §§goto(addr119);
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && ValentinePopup))
         {
            loop0:
            while(true)
            {
               §§push(sLoadingStarted);
               if(!(_loc1_ && _loc2_))
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
                        while(true)
                        {
                           addr250:
                           while(true)
                           {
                              sLoader = new §1!6§();
                              continue loop1;
                           }
                           addr83:
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           §85§.§8!S§();
                           loop22:
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              addr128:
                              addr224:
                              while(_loc2_ || _loc2_)
                              {
                                 addr135:
                                 §§push(sLoader);
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       addr98:
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§pop().load(§-!Q§.§<!%§(AngryBirdsFP11.SERVER_ROOT + "/claimvalentinebundle"));
                                          loop20:
                                          do
                                          {
                                             addr76:
                                             addr183:
                                             while(_loc2_ || _loc2_)
                                             {
                                                §§goto(addr83);
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   continue loop20;
                                                }
                                             }
                                             while(!_loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(sLoader);
                                                while(true)
                                                {
                                                   §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9!f§);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      addr163:
                                                      while(true)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(sLoader);
                                                               while(true)
                                                               {
                                                                  §§pop().addEventListener(RetryingURLLoaderErrorEvent.§9#§,§9!f§);
                                                                  break loop22;
                                                                  §§goto(addr135);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(sLoader);
                                                            }
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                §§goto(addr76);
                                             }
                                             §§goto(addr250);
                                          }
                                          while(!(_loc2_ || _loc1_));
                                          
                                          if(_loc2_ || ValentinePopup)
                                          {
                                             break loop0;
                                          }
                                          §§goto(addr163);
                                       }
                                       while(!(_loc1_ && _loc2_))
                                       {
                                          §§pop().addEventListener(IOErrorEvent.IO_ERROR,§9!f§);
                                          while(true)
                                          {
                                             §§goto(addr183);
                                             break loop22;
                                          }
                                          §§goto(addr98);
                                       }
                                       while(true)
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,§6K§);
                                          addr219:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr191);
                                       }
                                       addr191:
                                       addr212:
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr139);
                                 continue loop22;
                              }
                              while(true)
                              {
                                 §§goto(addr212);
                                 §§goto(addr128);
                              }
                           }
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr128);
                                 }
                                 break;
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr219);
                        }
                     }
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr247);
      }
      
      protected static function §9!f§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            do
            {
               loop1:
               while(true)
               {
                  if(e.type == RetryingURLLoaderErrorEvent.§9#§)
                  {
                     continue;
                  }
                  §4!c§.§8B§();
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        if(!(_loc2_ && ValentinePopup))
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  loop3:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        §4!c§.§?!U§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
                        continue loop3;
                     }
                  }
                  continue loop0;
               }
               §§goto(addr104);
            }
            while(!(_loc3_ || ValentinePopup));
            
            §§goto(addr24);
         }
         §§goto(addr60);
      }
      
      private static function §6K§(e:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc5_)
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
                  addr66:
                  addr54:
                  while(!(_loc5_ && onInitDataLoaded$1))
                  {
                     if(!_loc5_)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(false)
                           {
                              continue loop0;
                           }
                           try
                           {
                              sData = JSON.parse(sLoader.data);
                              if(_loc4_ || ValentinePopup)
                              {
                                 if(_loc4_ || ValentinePopup)
                                 {
                                    addr138:
                                    §§push(parsingFailed);
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc4_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc5_)
                                          {
                                             addr148:
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && onInitDataLoaded$1))
                                                {
                                                   §§pop();
                                                   if(_loc4_ || ValentinePopup)
                                                   {
                                                      §§push(sData.success == true);
                                                      if(_loc4_ || onInitDataLoaded$1)
                                                      {
                                                         addr239:
                                                         addr238:
                                                         if(!§§pop())
                                                         {
                                                            §4!c§.§8B§();
                                                            addr215:
                                                            if(_loc4_)
                                                            {
                                                               addr185:
                                                               sLoader = null;
                                                               addr189:
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc5_ && ValentinePopup)
                                                                        {
                                                                           §§goto(addr215);
                                                                        }
                                                                        return;
                                                                        addr184:
                                                                     }
                                                                     §§goto(addr189);
                                                                     addr193:
                                                                  }
                                                                  addr223:
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr185);
                                                                     addr225:
                                                                  }
                                                                  §4!c§.§throw§();
                                                                  §§goto(addr223);
                                                                  addr241:
                                                               }
                                                               addr196:
                                                               §§goto(addr196);
                                                            }
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr238);
                                             }
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr239);
                                 }
                                 §§goto(addr225);
                              }
                           }
                           catch(e:Error)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                 }
                                 addr133:
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr138);
                              }
                              §§push(onInitDataLoaded$1);
                              §§push(true);
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              §§pop().§§slot[2] = §§pop();
                              §§goto(addr133);
                           }
                           §§goto(addr184);
                        }
                        else
                        {
                           §§goto(addr66);
                        }
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §'?§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               loop1:
               while(!(_loc2_ && _loc3_))
               {
                  this.deActivate();
                  while(true)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_ || e)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!(_loc1_ && this))
         {
            while(true)
            {
               super.deActivate();
               loop1:
               for(; _loc2_ || _loc1_; while(!(_loc1_ && _loc2_))
               {
                  close();
                  while(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        return;
                     }
                  }
               })
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr91);
      }
   }
}
