package §7p§
{
   import §%!4§.ErrorPopup;
   import §%!4§.§]!e§;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#s§
   {
      
      public static const DEFAULT_CHECK_INTERVAL:int = 300.0;
      
      {
         var DEFAULT_CHECK_INTERVAL:Boolean = false;
         var _loc2_:Boolean = true;
         if(!DEFAULT_CHECK_INTERVAL)
         {
            do
            {
               DEFAULT_CHECK_INTERVAL = 5 * 60;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §'!_§:String = "";
      
      private var §=y§:int = 300.0;
      
      private var §@!_§:Timer;
      
      private var §6h§:§>!K§;
      
      private var §+;§:Boolean = false;
      
      private var §1Y§:Boolean = false;
      
      public function §#s§(initialVersion:String, checkIntervalSeconds:int = 300.0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && checkIntervalSeconds)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        continue loop2;
                        addr109:
                        while(_loc3_ || checkIntervalSeconds)
                        {
                           continue loop1;
                           if(_loc3_ || this)
                           {
                              addr48:
                              if(_loc3_ || checkIntervalSeconds)
                              {
                                 return;
                                 addr65:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               this.§=y§ = checkIntervalSeconds;
               §§goto(addr70);
            }
         }
         while(true)
         {
            this.§'!_§ = initialVersion;
            §§goto(addr109);
         }
         §§goto(addr65);
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!(_loc1_ && this))
         {
            while(!this.§@!_§)
            {
               loop1:
               while(true)
               {
                  addr131:
                  while(true)
                  {
                     this.§@!_§ = new Timer(this.§=y§ * 1000);
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           this.§@!_§.addEventListener(TimerEvent.TIMER,this.§[^§);
                           loop5:
                           while(!_loc1_)
                           {
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    this.§@!_§.start();
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr131);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(this.§@!_§)
            {
               if(_loc2_)
               {
                  if(_loc1_)
                  {
                     continue;
                  }
               }
               loop1:
               while(true)
               {
                  this.§@!_§.stop();
                  addr95:
                  while(true)
                  {
                     while(_loc2_)
                     {
                        this.§@!_§.removeEventListener(TimerEvent.TIMER,this.§[^§);
                        loop4:
                        while(true)
                        {
                           do
                           {
                              this.§@!_§ = null;
                              continue loop4;
                           }
                           while(_loc1_);
                           
                           break loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr95);
      }
      
      public function set §5^§(value:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && value))
         {
            loop0:
            while(true)
            {
               addr162:
               while(true)
               {
                  this.§+;§ = value;
                  addr157:
                  while(_loc2_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            §§push(this.§+;§);
            if(_loc2_ || _loc2_)
            {
               §§push(!§§pop());
               loop4:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && value))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§pop();
                           addr149:
                           while(true)
                           {
                              §§push(this.§1Y§);
                              if(_loc2_ || this)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              addr99:
                              if(_loc3_ && value)
                              {
                              }
                              continue loop10;
                           }
                           continue loop4;
                        }
                        addr148:
                     }
                     loop5:
                     while(§§pop())
                     {
                        loop6:
                        while(_loc2_)
                        {
                           loop7:
                           while(_loc2_)
                           {
                              §]!e§.§[!R§();
                              while(true)
                              {
                                 if(_loc3_ && value)
                                 {
                                    continue loop7;
                                 }
                                 if(_loc3_ && value)
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr149);
                                 addr85:
                                 if(_loc2_ || this)
                                 {
                                    break loop5;
                                 }
                              }
                              continue loop3;
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr157);
                        §§goto(addr99);
                     }
                     return;
                  }
               }
            }
            §§goto(addr148);
         }
      }
      
      public function §,x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               loop1:
               for(§§push(this.§6h§); !§§pop(); while(!(_loc1_ && _loc1_))
               {
                  §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                  §§goto(addr180);
               })
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§6h§ = new §>!K§();
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§6h§);
                              addr206:
                              while(true)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§ !G§);
                                 while(true)
                                 {
                                    addr183:
                                    while(!_loc1_)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§push(this.§6h§);
                                          continue loop1;
                                       }
                                       continue loop3;
                                       if(_loc2_ || _loc1_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr157);
      }
      
      private function §[^§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(!(_loc3_ && e))
         {
            while(true)
            {
            }
            addr80:
         }
         loop1:
         do
         {
            this.§,x§();
            while(_loc2_)
            {
               if(_loc2_ || e)
               {
                  continue loop1;
               }
            }
            §§goto(addr80);
         }
         while(!_loc2_);
         
      }
      
      private function § !G§(e:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && version)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr39);
         }
         var version:String = this.§6h§.data;
         if(_loc3_ || this)
         {
            loop4:
            while(true)
            {
               §§push(this.§'!_§);
               loop5:
               while(true)
               {
                  §§push(§§pop() == null);
                  loop6:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(this.§'!_§);
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                       addr380:
                                    }
                                    §§push(§§pop().length == 0);
                                    while(_loc3_ || e)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    continue loop6;
                                    loop31:
                                    while(true)
                                    {
                                       §§push(version);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop() == this.§'!_§)
                                       {
                                          trace("Still same old " + version + " of the server...");
                                          loop32:
                                          while(_loc3_)
                                          {
                                             if(_loc4_ && e)
                                             {
                                                continue;
                                             }
                                             if(!(_loc4_ && this))
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr64);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         loop34:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     this.§'!_§ = version;
                                                                     loop36:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr142:
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              loop42:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop36;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop34;
                                                                                 }
                                                                                 if(_loc3_ || version)
                                                                                 {
                                                                                    addr126:
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          this.stop();
                                                                                          while(!_loc3_)
                                                                                          {
                                                                                             loop44:
                                                                                             while(!(_loc4_ && this))
                                                                                             {
                                                                                                trace("Server has been updated");
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   loop39:
                                                                                                   while(!_loc4_)
                                                                                                   {
                                                                                                      §§push(this.§+;§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§goto(addr380);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               break loop32;
                                                                                                            }
                                                                                                            addr400:
                                                                                                         }
                                                                                                         addr344:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§6h§);
                                                                                                            addr347:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().removeEventListener(Event.COMPLETE,this.§ !G§);
                                                                                                               addr354:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  break loop39;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr239);
                                                                                                      }
                                                                                                      addr239:
                                                                                                   }
                                                                                                   while(_loc3_ || version)
                                                                                                   {
                                                                                                      §§push(this.§6h§);
                                                                                                      loop22:
                                                                                                      for(; !_loc4_; if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         §§pop().removeEventListener(RetryingURLLoaderErrorEvent.§3Y§,this.onError);
                                                                                                         break loop44;
                                                                                                      })
                                                                                                      {
                                                                                                         §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr320:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§6h§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                                                                                  addr317:
                                                                                                                  addr306:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     break loop36;
                                                                                                                  }
                                                                                                                  §§push(this.§6h§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr347);
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue loop31;
                                                                                             }
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                addr276:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§6h§ = null;
                                                                                                   break loop42;
                                                                                                   addr219:
                                                                                                   while(!(_loc4_ && e))
                                                                                                   {
                                                                                                      while(!(_loc4_ && version))
                                                                                                      {
                                                                                                         this.§1Y§ = true;
                                                                                                         while(_loc3_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc4_ && version))
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  §§goto(addr333);
                                                                                                               }
                                                                                                               addr255:
                                                                                                            }
                                                                                                            §§goto(addr317);
                                                                                                         }
                                                                                                         §§goto(addr237);
                                                                                                      }
                                                                                                      while(_loc3_ || e)
                                                                                                      {
                                                                                                         while(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                         §§goto(addr227);
                                                                                                      }
                                                                                                      addr227:
                                                                                                      §§goto(addr400);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr258:
                                                                                          }
                                                                                          addr64:
                                                                                          return;
                                                                                          addr110:
                                                                                       }
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr170);
                                                                                 §§goto(addr237);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop31;
                                                                                 §§goto(addr126);
                                                                              }
                                                                              addr115:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr219);
                                                                        §§goto(addr276);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§goto(addr306);
                                                                        }
                                                                        break;
                                                                        §§goto(addr142);
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         addr160:
                                                         §]!e§.§[!R§();
                                                      }
                                                   }
                                                   §§goto(addr357);
                                                }
                                                §§goto(addr115);
                                             }
                                             §§goto(addr110);
                                          }
                                          while(true)
                                          {
                                             this.§'!_§ = version;
                                             §§goto(addr364);
                                          }
                                       }
                                       §§goto(addr255);
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr399);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr317);
      }
      
      private function onError(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc2_ && e)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(e.type == RetryingURLLoaderErrorEvent.§3Y§)
               {
                  while(true)
                  {
                     addr168:
                     while(true)
                     {
                        §]!e§.§3!T§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
                        addr157:
                        while(_loc3_)
                        {
                           while(true)
                           {
                           }
                        }
                        continue loop1;
                     }
                     addr128:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     loop9:
                     while(true)
                     {
                        §§push(this.§6h§);
                        addr98:
                        addr119:
                        loop10:
                        for(; _loc3_ || _loc3_; loop12:
                        while(true)
                        {
                           §§push(this.§6h§);
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                           loop13:
                           while(true)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             this.§6h§ = null;
                                             while(_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue;
                                                }
                                                if(_loc2_)
                                                {
                                                   continue loop12;
                                                }
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      return;
                                                   }
                                                   break loop13;
                                                }
                                                §§goto(addr112);
                                             }
                                             continue;
                                          }
                                          continue loop9;
                                       }
                                       continue loop13;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr157);
                              }
                              addr126:
                              while(_loc3_)
                              {
                                 §§goto(addr128);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr148);
                        })
                        {
                           §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                           while(true)
                           {
                              continue loop10;
                           }
                        }
                        while(true)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§ !G§);
                           §§goto(addr126);
                           §§goto(addr98);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr119);
                  §§goto(addr148);
               }
            }
         }
      }
   }
}
