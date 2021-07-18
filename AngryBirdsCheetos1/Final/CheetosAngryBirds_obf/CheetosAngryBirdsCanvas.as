package
{
   import § !0§.§##§;
   import §#!F§.§"!L§;
   import §#!F§.§'^§;
   import §%w§.StateConnecting;
   import §&!7§.§,!A§;
   import §&o§.§^O§;
   import §&p§.§9!H§;
   import §'!3§.§`!X§;
   import §?m§.§7?§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §##§
   {
      
      public static const VERSION:String = "1.0.1.1";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            VERSION = "1.0.1.1";
         }
      }
      
      private var §&!S§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            do
            {
               if(!stage)
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.§]j§);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  if(!(_loc1_ && _loc1_))
                  {
                     addr25:
                     return;
                     addr62:
                  }
               }
               this.init();
            }
            while(!_loc2_);
            
            §§goto(addr25);
         }
         §§goto(addr62);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.addExternalInterfaceCallbacks();
            do
            {
               if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
               {
                  if(!_loc1_)
                  {
                     loaderInfo.addEventListener(Event.COMPLETE,this.§9R§);
                  }
                  continue;
               }
               this.§<F§();
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
            }
            while(_loc1_ && _loc1_);
            
            §§goto(addr25);
         }
         addr25:
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §,!A§.addCallback("loginPlayer",this.loginPlayer);
         }
         do
         {
            §,!A§.addCallback("logout",this.logout);
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(false);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  break;
               }
               addr75:
               §§push(§§pop().name);
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               if(§§pop() != param1)
               {
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              §§push(§9!H§.§ o§);
                              while(§§pop() != null)
                              {
                                 §§push(§9!H§.§ o§);
                                 if(!(_loc3_ || param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr75);
                              }
                              addr115:
                              addr33:
                              this.§]!C§(param1);
                              addr33:
                              break loop0;
                           }
                           do
                           {
                              this.§]!C§(param1);
                           }
                           while(_loc2_);
                           
                           addr98:
                           if(_loc2_ && _loc3_)
                           {
                           }
                           §§goto(addr33);
                           addr111:
                        }
                        this.logout();
                        §§goto(addr98);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr98);
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         §§goto(addr111);
      }
      
      private function §]!C§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §9!H§.§ o§ = new §^O§();
            while(true)
            {
               §9!H§.§<!7§ = §`!X§.§&1§();
               loop5:
               while(_loc2_ || _loc2_)
               {
                  §#x§.§=!!§.§9!2§();
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     addr31:
                     if(!(_loc3_ && this))
                     {
                        return;
                     }
                     while(true)
                     {
                        §§push(§9!H§.§ o§);
                        addr74:
                        loop2:
                        while(true)
                        {
                           §§push(param1);
                           addr75:
                           while(true)
                           {
                              §§pop().§ I§ = §§pop();
                              continue loop2;
                           }
                        }
                        §§goto(addr31);
                     }
                     addr92:
                  }
                  while(true)
                  {
                     §§push(§9!H§.§ o§);
                     if(!(_loc2_ || this))
                     {
                        break;
                     }
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§pop().name = §§pop();
                        continue loop5;
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr92);
      }
      
      public function logout() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!H§.§ o§ = null;
            while(true)
            {
               §9!H§.§<!7§ = null;
               while(!(_loc2_ && this))
               {
                  §#x§.§=!!§.§3!3§(StateConnecting.§9!P§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  return true;
                  addr42:
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §]j§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§]j§);
            do
            {
               this.init();
            }
            while(_loc3_);
            
         }
      }
      
      private function §9R§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§9R§);
            do
            {
               this.§<F§();
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function §?T§(param1:Event) : void
      {
      }
      
      private function §?!+§(param1:Event) : void
      {
      }
      
      private function §<F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§-8§);
            do
            {
               new §#x§(this);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §-8§(param1:UncaughtErrorEvent) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:Error = null;
         var _loc9_:ErrorEvent = null;
         var _loc10_:* = null;
         if(!_loc11_)
         {
            if(!this.§&!S§)
            {
               loop0:
               while(true)
               {
                  this.§&!S§ = true;
                  addr106:
                  while(true)
                  {
                     _loc2_ = 0;
                     while(_loc12_)
                     {
                        _loc3_ = null;
                        do
                        {
                           _loc4_ = "";
                        }
                        while(_loc11_ && _loc2_);
                        
                        if(_loc12_ || this)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr88:
                  loop4:
                  while(true)
                  {
                     _loc5_ = "-";
                     while(true)
                     {
                        _loc6_ = Math.round(getTimer() / 1000);
                        if(_loc12_)
                        {
                           if(_loc11_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              continue loop4;
                           }
                           §§push(param1.error is Error);
                           if(_loc12_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc12_ || this))
                                 {
                                    break;
                                 }
                                 _loc2_ = (_loc8_ = param1.error as Error).errorID;
                                 _loc5_ = _loc8_.message;
                                 if(_loc12_ || _loc3_)
                                 {
                                    §§push(_loc8_.getStackTrace());
                                    if(_loc12_)
                                    {
                                       _loc3_ = §§pop();
                                       if(!_loc11_)
                                       {
                                          addr166:
                                          §'^§.§`0§(§"!L§.ACTION_APPLICATION_CRASH,_loc2_.toString());
                                          if(!_loc11_)
                                          {
                                             §§push(§7?§.§>!M§);
                                             if(!_loc11_)
                                             {
                                                if(§§pop() != null)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§7?§.§>!M§);
                                                      addr411:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§&G§());
                                                         addr413:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr414:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr409:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   loop24:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == null);
                                                      loop13:
                                                      while(§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc4_ = "NoState";
                                                               }
                                                               addr382:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.toString() + "::");
                                                               if(_loc12_ || this)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push("::");
                                                                        if(_loc12_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              addr322:
                                                                              §§push(_loc5_);
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 addr330:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    addr339:
                                                                                    §§push(§§pop() + "::");
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(VERSION);
                                                                                    }
                                                                                    addr340:
                                                                                 }
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       if(_loc12_ || _loc3_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc11_ && this))
                                                                                             {
                                                                                                §'^§.§`0§(§"!L§.§;!O§,_loc7_,_loc6_);
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(!(_loc11_ && this))
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc11_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc11_ && param1))
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ && _loc2_))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + "::");
                                                                                                                           if(_loc12_ || this)
                                                                                                                           {
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr341:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    addr341:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr340);
                                                                                                                              }
                                                                                                                              §§goto(addr341);
                                                                                                                           }
                                                                                                                           if(_loc11_ && param1)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              addr272:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc11_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr248:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().length == 0);
                                                                                                                           if(!(_loc12_ || param1))
                                                                                                                           {
                                                                                                                              break loop13;
                                                                                                                           }
                                                                                                                           if(!(_loc11_ && param1))
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        addr363:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr271);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr363);
                                                                                                                  break loop13;
                                                                                                               }
                                                                                                               addr392:
                                                                                                            }
                                                                                                            §§goto(addr272);
                                                                                                         }
                                                                                                         §§goto(addr415);
                                                                                                      }
                                                                                                      §§goto(addr271);
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                addr287:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr382);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr413);
                                                                                    }
                                                                                 }
                                                                                 addr342:
                                                                              }
                                                                              §§goto(addr341);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                            continue loop24;
                                                         }
                                                      }
                                                      §§pop();
                                                      §§goto(addr392);
                                                   }
                                                }
                                             }
                                             §§goto(addr411);
                                          }
                                          §§goto(addr414);
                                       }
                                       §§goto(addr287);
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr414);
                              }
                              else
                              {
                                 addr155:
                                 if(param1.error is ErrorEvent)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr155);
                        }
                        break;
                     }
                     _loc2_ = (_loc9_ = param1.error as ErrorEvent).errorID;
                     §§goto(addr166);
                  }
               }
            }
            §§goto(addr415);
         }
         §§goto(addr106);
      }
   }
}
