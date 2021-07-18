package §7!0§
{
   import § !Y§.§%Y§;
   import § !Y§.§="6§;
   import §,"&§.§9q§;
   import §5Q§.§^!e§;
   import §`!j§.§9"!§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §1H§ extends EventDispatcher
   {
       
      
      private var §<!-§:Boolean = false;
      
      private var §5!o§:Number;
      
      protected var §6u§:§9"!§;
      
      protected var §3!v§:String;
      
      public function §1H§(param1:UncaughtErrorEvents, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§5!o§ = new Date().time;
               while(true)
               {
                  this.§3!v§ = param2;
                  loop2:
                  while(_loc4_)
                  {
                     continue loop0;
                     while(true)
                     {
                        param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§=e§);
                        if(!(_loc3_ && param2))
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
         §§goto(addr62);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §8"<§(param1:§9"!§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6u§ = param1;
         }
      }
      
      protected function §1I§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§5!o§) / 1000);
         if(_loc14_)
         {
            §§push(param1.error is Error);
            if(_loc14_)
            {
               if(§§pop())
               {
                  if(!(_loc13_ && param1))
                  {
                     _loc2_ = (_loc10_ = param1.error as Error).errorID;
                     _loc5_ = _loc10_.message;
                     if(!_loc13_)
                     {
                        §§push(_loc10_.getStackTrace());
                        if(_loc14_)
                        {
                           _loc3_ = §§pop();
                           if(!_loc13_)
                           {
                              addr103:
                              §="6§.§`" §(_loc2_,_loc6_);
                              if(_loc14_ || this)
                              {
                                 §§push(§9q§.§=!!§);
                                 if(_loc14_ || _loc2_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       while(true)
                                       {
                                          §§push(§9q§.§=!!§);
                                          addr166:
                                          while(true)
                                          {
                                             §§push(§§pop().§6![§());
                                             addr168:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr169:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       addr164:
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop2:
                                       while(_loc14_)
                                       {
                                          §§push(§§pop() == null);
                                          if(_loc14_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr152:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc13_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().length == 0);
                                                      if(_loc14_)
                                                      {
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop2;
                                                }
                                                addr151:
                                             }
                                             loop3:
                                             while(§§pop())
                                             {
                                                if(!_loc13_)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      addr130:
                                                      if(!(_loc13_ && _loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            _loc4_ = "NoState";
                                                            if(true)
                                                            {
                                                               break loop3;
                                                            }
                                                            continue loop1;
                                                            §§goto(addr130);
                                                         }
                                                         addr137:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr164);
                                                      }
                                                   }
                                                   §§goto(addr169);
                                                }
                                                else
                                                {
                                                   §§goto(addr152);
                                                }
                                             }
                                             var _loc7_:* = "";
                                             if(!_loc13_)
                                             {
                                                §§push(this.§6u§);
                                                if(!(_loc13_ && this))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc13_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc13_ && this))
                                                         {
                                                            §§pop();
                                                            if(_loc14_)
                                                            {
                                                               §§push(this.§6u§);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(§§pop().currentLevel);
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     §§push(§§pop() == null);
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        addr235:
                                                                        if(!§§pop())
                                                                        {
                                                                           addr250:
                                                                           if(!(_loc13_ && _loc3_))
                                                                           {
                                                                              addr245:
                                                                              §§push(this.§6u§.currentLevel);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                           var _loc8_:String = "GPU";
                                                                           if(_loc14_ || _loc2_)
                                                                           {
                                                                              if(§^!e§.§`?§ == null)
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr265:
                                                                                    _loc8_ = "NULL";
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr271:
                                                                                    _loc8_ = "CPU";
                                                                                 }
                                                                              }
                                                                              else if(§^!e§.§use§)
                                                                              {
                                                                                 §§goto(addr271);
                                                                              }
                                                                              §§push(_loc2_.toString() + "::");
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc14_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push("::");
                                                                                       if(!(_loc13_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(_loc14_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   §§push("::");
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr320:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         addr323:
                                                                                                         §§push(§§pop() + _loc8_);
                                                                                                         if(_loc14_ || _loc2_)
                                                                                                         {
                                                                                                            §§push("::");
                                                                                                            if(_loc14_ || _loc2_)
                                                                                                            {
                                                                                                               addr363:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!(_loc13_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr366:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push("::");
                                                                                                                     }
                                                                                                                     var _loc9_:String = §§pop();
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §="6§.§^!U§(§%Y§.§8!5§,_loc9_,_loc6_);
                                                                                                                        addr449:
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(_loc14_ || param1)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §="6§.§^!U§(§%Y§.§8!5§,_loc9_,_loc6_);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    if(_loc14_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc13_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr449);
                                                                                                                                       }
                                                                                                                                       §§goto(addr371);
                                                                                                                                    }
                                                                                                                                    addr421:
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       addr441:
                                                                                                                                       §§push(§§pop() + "::");
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + _loc3_);
                                                                                                                                       }
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                    }
                                                                                                                                    §§goto(addr441);
                                                                                                                                 }
                                                                                                                                 §="6§.§^!U§(§%Y§.§83§,_loc12_,_loc6_);
                                                                                                                                 addr410:
                                                                                                                                 addr371:
                                                                                                                                 return;
                                                                                                                                 addr410:
                                                                                                                              }
                                                                                                                              §§goto(addr410);
                                                                                                                           }
                                                                                                                           §§goto(addr421);
                                                                                                                        }
                                                                                                                        §§goto(addr441);
                                                                                                                     }
                                                                                                                     §§goto(addr410);
                                                                                                                  }
                                                                                                                  addr365:
                                                                                                                  §§goto(addr366);
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§goto(addr365);
                                                                                                               §§push(this.§3!v§);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr363);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§goto(addr363);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr366);
                                                                                             }
                                                                                             §§goto(addr365);
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 §§goto(addr365);
                                                                              }
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        §§goto(addr250);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  §§goto(addr250);
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr235);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr169);
                  }
                  else
                  {
                     addr93:
                     _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
                  }
               }
               else
               {
                  addr92:
                  if(param1.error is ErrorEvent)
                  {
                     §§goto(addr93);
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr92);
         }
         §§goto(addr93);
      }
      
      private function §=e§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§<!-§)
            {
               loop0:
               while(true)
               {
                  this.§<!-§ = true;
                  loop1:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§1I§(param1);
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr76);
      }
   }
}
