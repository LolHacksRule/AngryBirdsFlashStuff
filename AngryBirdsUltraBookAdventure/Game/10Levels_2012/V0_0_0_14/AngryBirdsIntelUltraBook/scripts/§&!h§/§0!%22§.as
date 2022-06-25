package §&!h§
{
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §9!Q§.§2!S§;
   import §9!Q§.§7o§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §0!"§
   {
      
      public static const §2U§:int = 300.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §2U§ = 5 * 60;
         }
      }
      
      private var §"o§:String = "";
      
      private var §-!+§:int = 300.0;
      
      private var §1!<§:Timer;
      
      private var §?p§:§"!m§;
      
      private var §%4§:Boolean = false;
      
      private var §7'§:Boolean = false;
      
      public function §0!"§(param1:String, param2:int = 300.0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            do
            {
               this.§"o§ = param1;
               do
               {
                  this.§-!+§ = param2;
               }
               while(!_loc3_);
               
            }
            while(_loc4_ && this);
            
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§1!<§)
            {
               loop0:
               while(true)
               {
                  this.§1!<§ = new Timer(this.§-!+§ * 1000);
                  addr90:
                  while(true)
                  {
                     this.§1!<§.addEventListener(TimerEvent.TIMER,this.§3$§);
                     while(_loc2_ || this)
                     {
                        this.§1!<§.start();
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr62:
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
         if(_loc2_)
         {
            if(this.§1!<§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§1!<§.stop();
                  do
                  {
                     this.§1!<§.removeEventListener(TimerEvent.TIMER,this.§3$§);
                     do
                     {
                        this.§1!<§ = null;
                     }
                     while(!(_loc2_ || this));
                     
                  }
                  while(!_loc2_);
                  
                  addr80:
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function set §?0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§%4§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§%4§);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§7'§);
                              if(_loc2_ || param1)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                              }
                              while(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       §7o§.§<!_§();
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       break loop4;
                                    }
                                    continue loop0;
                                 }
                              }
                              break;
                           }
                           return;
                        }
                     }
                     §§goto(addr65);
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §0!X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§?p§);
            loop0:
            for(; !§§pop(); while(!(_loc1_ && this))
            {
               §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
               §§goto(addr122);
               §§goto(addr39);
            })
            {
               if(_loc2_)
               {
                  this.§?p§ = new §"!m§();
               }
               while(true)
               {
                  §§push(this.§?p§);
                  addr135:
                  addr124:
                  while(true)
                  {
                     §§pop().addEventListener(Event.COMPLETE,this.§7?§);
                     addr140:
                     while(true)
                     {
                        §§push(this.§?p§);
                        continue loop0;
                     }
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §§push(this.§?p§);
                  loop6:
                  while(true)
                  {
                     §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                     while(!_loc1_)
                     {
                        §§push(this.§?p§);
                        loop8:
                        while(!_loc1_)
                        {
                           §§pop().addEventListener(§^!g§.§]P§,this.onError);
                           while(true)
                           {
                              §§push(this.§?p§);
                              if(_loc1_ && this)
                              {
                                 continue loop8;
                              }
                              if(_loc1_ && this)
                              {
                                 continue loop0;
                              }
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr135);
                           }
                        }
                        continue loop6;
                     }
                     addr122:
                     while(_loc2_)
                     {
                        §§goto(addr124);
                     }
                     §§goto(addr140);
                  }
               }
            }
            return;
         }
         §§goto(addr85);
      }
      
      private function §3$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0!X§();
         }
      }
      
      private function §7?§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = this.§?p§.data;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§"o§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!(_loc4_ && this))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 this.§"o§ = _loc2_;
                              }
                              while(true)
                              {
                              }
                              addr239:
                           }
                           loop4:
                           while(true)
                           {
                              §§push(this.§?p§);
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§7?§);
                                 addr208:
                                 while(true)
                                 {
                                    §§push(this.§?p§);
                                    loop7:
                                    while(true)
                                    {
                                       §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                       addr199:
                                       while(true)
                                       {
                                          §§push(this.§?p§);
                                          continue loop7;
                                       }
                                    }
                                 }
                                 if(_loc4_ && this)
                                 {
                                    continue;
                                 }
                                 §§pop().removeEventListener(§^!g§.§]P§,this.onError);
                                 loop14:
                                 while(true)
                                 {
                                    this.§?p§ = null;
                                    while(true)
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          continue loop14;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          §§push(_loc2_);
                                          if(_loc3_ || this)
                                          {
                                             if(§§pop() != this.§"o§)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                addr108:
                                                loop16:
                                                for(; _loc3_ || param1; if(!(_loc3_ || this))
                                                {
                                                   continue;
                                                },this.stop(),if(!(_loc3_ || this))
                                                {
                                                   §§goto(addr50);
                                                })
                                                {
                                                   this.§7'§ = true;
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§"o§ = _loc2_;
                                                            addr50:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               continue loop17;
                                                            }
                                                            continue loop16;
                                                            addr79:
                                                         }
                                                         continue;
                                                      }
                                                      addr254:
                                                      while(true)
                                                      {
                                                         §§push(this.§"o§);
                                                         continue loop0;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr199);
                                             }
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr208);
                                 }
                              }
                           }
                        }
                        addr229:
                     }
                  }
               }
               §§goto(addr253);
            }
         }
         §§goto(addr190);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.type == §^!g§.§]P§)
            {
               while(true)
               {
                  §7o§.§-Y§(§2!S§.§2u§);
                  addr118:
                  while(true)
                  {
                  }
               }
               addr114:
            }
            loop2:
            while(true)
            {
               §§push(this.§?p§);
               while(true)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§7?§);
                  loop4:
                  while(true)
                  {
                     §§push(this.§?p§);
                     addr92:
                     loop5:
                     while(true)
                     {
                        §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        addr97:
                        while(_loc2_)
                        {
                           continue loop5;
                        }
                        continue loop4;
                     }
                  }
                  addr42:
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(!(_loc3_ && _loc3_))
                  {
                     if(_loc2_ || param1)
                     {
                        this.§?p§ = null;
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           return;
                           addr31:
                        }
                        §§goto(addr114);
                        continue;
                     }
                     continue loop2;
                  }
                  §§goto(addr97);
               }
            }
         }
         while(true)
         {
            §§push(this.§?p§);
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr42);
            }
            §§goto(addr92);
         }
         §§goto(addr31);
      }
   }
}
