package §]+§
{
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §?N§.§!!m§;
   import §?N§.§]!e§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#@§
   {
      
      public static const §8'§:int = 300.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §8'§ = 5 * 60;
         }
      }
      
      private var §5g§:String = "";
      
      private var §&6§:int = 300.0;
      
      private var §^[§:Timer;
      
      private var §0M§:§7^§;
      
      private var §,A§:Boolean = false;
      
      private var §&3§:Boolean = false;
      
      public function §#@§(param1:String, param2:int = 300.0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            do
            {
               this.§5g§ = param1;
               do
               {
                  this.§&6§ = param2;
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
            if(!this.§^[§)
            {
               loop0:
               while(true)
               {
                  this.§^[§ = new Timer(this.§&6§ * 1000);
                  addr90:
                  while(true)
                  {
                     this.§^[§.addEventListener(TimerEvent.TIMER,this.§!!3§);
                     while(_loc2_ || this)
                     {
                        this.§^[§.start();
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
            if(this.§^[§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§^[§.stop();
                  do
                  {
                     this.§^[§.removeEventListener(TimerEvent.TIMER,this.§!!3§);
                     do
                     {
                        this.§^[§ = null;
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
      
      public function set §&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§,A§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§,A§);
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
                              §§push(this.§&3§);
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
                                       §]!e§.§1!&§();
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
      
      public function §7!O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§0M§);
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
                  this.§0M§ = new §7^§();
               }
               while(true)
               {
                  §§push(this.§0M§);
                  addr135:
                  addr124:
                  while(true)
                  {
                     §§pop().addEventListener(Event.COMPLETE,this.§%0§);
                     addr140:
                     while(true)
                     {
                        §§push(this.§0M§);
                        continue loop0;
                     }
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §§push(this.§0M§);
                  loop6:
                  while(true)
                  {
                     §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                     while(!_loc1_)
                     {
                        §§push(this.§0M§);
                        loop8:
                        while(!_loc1_)
                        {
                           §§pop().addEventListener(§!!5§.§[!§,this.onError);
                           while(true)
                           {
                              §§push(this.§0M§);
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
      
      private function §!!3§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!O§();
         }
      }
      
      private function §%0§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = this.§0M§.data;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§5g§);
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
                                 this.§5g§ = _loc2_;
                              }
                              while(true)
                              {
                              }
                              addr239:
                           }
                           loop4:
                           while(true)
                           {
                              §§push(this.§0M§);
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§%0§);
                                 addr208:
                                 while(true)
                                 {
                                    §§push(this.§0M§);
                                    loop7:
                                    while(true)
                                    {
                                       §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                       addr199:
                                       while(true)
                                       {
                                          §§push(this.§0M§);
                                          continue loop7;
                                       }
                                    }
                                 }
                                 if(_loc4_ && this)
                                 {
                                    continue;
                                 }
                                 §§pop().removeEventListener(§!!5§.§[!§,this.onError);
                                 loop14:
                                 while(true)
                                 {
                                    this.§0M§ = null;
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
                                             if(§§pop() != this.§5g§)
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
                                                   this.§&3§ = true;
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§5g§ = _loc2_;
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
                                                         §§push(this.§5g§);
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
            if(param1.type == §!!5§.§[!§)
            {
               while(true)
               {
                  §]!e§.§>k§(§!!m§.§[!x§);
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
               §§push(this.§0M§);
               while(true)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§%0§);
                  loop4:
                  while(true)
                  {
                     §§push(this.§0M§);
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
                        this.§0M§ = null;
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
            §§push(this.§0M§);
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
