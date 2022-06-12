package §<a§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §?q§
   {
      
      public static const §,!"§:int = 300.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §,!"§ = 5 * 60;
         }
      }
      
      private var §=i§:String = "";
      
      private var §[R§:int = 300.0;
      
      private var §]"1§:Timer;
      
      private var § 5§:§0]§;
      
      private var §9J§:Boolean = false;
      
      private var §>Q§:Boolean = false;
      
      public function §?q§(param1:String, param2:int = 300.0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super();
         }
         while(true)
         {
            this.§=i§ = param1;
            while(!(_loc4_ && _loc3_))
            {
               this.§[R§ = param2;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§]"1§)
            {
               loop0:
               while(true)
               {
                  this.§]"1§ = new Timer(this.§[R§ * 1000);
                  addr90:
                  while(true)
                  {
                     this.§]"1§.addEventListener(TimerEvent.TIMER,this.§6!!§);
                     while(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_)
                        {
                           this.§]"1§.start();
                           if(_loc1_ && _loc2_)
                           {
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§]"1§)
            {
               if(_loc2_ || this)
               {
                  addr77:
                  this.§]"1§.stop();
               }
               do
               {
                  this.§]"1§.removeEventListener(TimerEvent.TIMER,this.§6!!§);
                  do
                  {
                     this.§]"1§ = null;
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(_loc1_);
               
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function set §`W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§9J§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§9J§);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§pop();
                           addr84:
                           while(true)
                           {
                              §§push(this.§>Q§);
                              if(_loc2_ && this)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 break;
                              }
                              continue loop4;
                           }
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                        }
                        addr83:
                     }
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              §%?§.§&B§();
                           }
                           else
                           {
                              §§goto(addr84);
                           }
                        }
                        if(!_loc2_)
                        {
                           addr74:
                           break;
                        }
                        continue loop0;
                     }
                     return;
                  }
               }
               §§goto(addr83);
            }
         }
         §§goto(addr74);
      }
      
      public function §""§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§ 5§);
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  this.§ 5§ = new §0]§();
               }
               loop3:
               while(true)
               {
                  if(_loc1_ && this)
                  {
                     continue loop0;
                  }
                  §§pop().addEventListener(Event.COMPLETE,this.§1!w§);
                  loop4:
                  while(true)
                  {
                     §§push(this.§ 5§);
                     addr117:
                     while(true)
                     {
                        §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        addr122:
                        addr165:
                        while(_loc2_)
                        {
                           if(_loc2_ || this)
                           {
                              §§push(this.§ 5§);
                              while(true)
                              {
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                 continue loop4;
                              }
                              addr101:
                           }
                           else
                           {
                              §§goto(addr161);
                           }
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr165);
      }
      
      private function §6!!§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§""§();
         }
      }
      
      private function §1!w§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = this.§ 5§.data;
         if(_loc4_)
         {
            §§push(this.§=i§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr230:
                        loop20:
                        while(true)
                        {
                           addr204:
                           addr207:
                           §§push(this.§=i§);
                           while(true)
                           {
                              §§push(§§pop().length == 0);
                              addr210:
                              while(!(_loc3_ && _loc3_))
                              {
                              }
                              continue loop20;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§=i§ = _loc2_;
                           addr222:
                           while(true)
                           {
                           }
                        }
                        addr219:
                     }
                     while(true)
                     {
                        §§push(this.§ 5§);
                        loop7:
                        while(true)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§1!w§);
                           loop8:
                           while(true)
                           {
                              §§push(this.§ 5§);
                              loop9:
                              while(true)
                              {
                                 §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§ 5§);
                                    loop11:
                                    for(; _loc4_; §§push(this.§ 5§),if(_loc4_ || param1)
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop().removeEventListener(§+!D§.§25§,this.onError);
                                          while(!(_loc3_ && this))
                                          {
                                             this.§ 5§ = null;
                                             continue loop8;
                                          }
                                          continue loop10;
                                          addr155:
                                       }
                                       continue loop9;
                                    })
                                    {
                                       §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop11;
                                          }
                                          §§goto(addr219);
                                          addr38:
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr28);
                                             }
                                             break;
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                    continue loop7;
                                 }
                              }
                              loop14:
                              while(true)
                              {
                                 if(_loc3_ && param1)
                                 {
                                    continue loop8;
                                 }
                                 §§push(_loc2_);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(§§pop() == this.§=i§)
                                    {
                                       break;
                                    }
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(this.§9J§);
                                          if(!_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             if(!§§pop())
                                             {
                                                §%?§.§&B§();
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         addr115:
                                                         while(true)
                                                         {
                                                            this.§>Q§ = true;
                                                            addr118:
                                                            while(true)
                                                            {
                                                               if(_loc3_ && this)
                                                               {
                                                                  break loop15;
                                                               }
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         addr115:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§=i§ = _loc2_;
                                                         continue loop14;
                                                      }
                                                   }
                                                   §§goto(addr118);
                                                }
                                                §§goto(addr230);
                                                addr65:
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr210);
                                       }
                                       else
                                       {
                                          §§goto(addr155);
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr207);
                              }
                              addr28:
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr230);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1.type == §+!D§.§25§)
            {
               addr125:
               while(true)
               {
                  §%?§.§6!7§(§-d§.§]x§);
                  addr129:
                  while(true)
                  {
                  }
               }
               addr125:
            }
            loop0:
            while(true)
            {
               §§push(this.§ 5§);
               while(true)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§1!w§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§ 5§);
                     loop3:
                     while(true)
                     {
                        §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(!(_loc3_ || this))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop2;
                           addr77:
                           §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                           do
                           {
                              this.§ 5§ = null;
                           }
                           while(!(_loc3_ || param1));
                           
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           if(!(_loc2_ && param1))
                           {
                              return;
                           }
                           §§goto(addr125);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
   }
}
