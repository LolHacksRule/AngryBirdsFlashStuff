package
{
   import §!J§.§[&§;
   import §"!+§.§&2§;
   import §&! §.§%!Q§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §<!U§.StateConnecting;
   import §<o§.§7!1§;
   import §]B§.§!!3§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §7!1§
   {
      
      public static const VERSION:String = "0.0.0.10";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            VERSION = "0.0.0.10";
         }
      }
      
      private var §'0§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         do
         {
            if(!stage)
            {
               addEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               if(_loc2_ || _loc1_)
               {
                  §§goto(addr25);
               }
            }
            this.init();
         }
         while(_loc1_);
         
         addr25:
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.addExternalInterfaceCallbacks();
            while(true)
            {
               if(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
               {
                  this.§;O§();
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr24);
                  }
               }
               if(_loc2_)
               {
                  break;
               }
               if(_loc1_)
               {
                  loaderInfo.addEventListener(Event.COMPLETE,this.§[l§);
                  break;
               }
            }
         }
         addr24:
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,Y§.addCallback("loginPlayer",this.loginPlayer);
         }
         do
         {
            §,Y§.addCallback("logout",this.logout);
         }
         while(!_loc2_);
         
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
                  addr111:
               }
               while(true)
               {
                  §§push(§;!=§.§`!;§);
                  while(§§pop() != null)
                  {
                     §§push(§;!=§.§`!;§);
                     if(_loc3_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
                  addr115:
                  addr28:
                  this.§9&§(param1);
                  break loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr66);
      }
      
      private function §9&§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §;!=§.§`!;§ = new §!!3§();
            loop0:
            while(true)
            {
               §;!=§.§-j§ = §&2§.§;I§();
               while(true)
               {
                  §§push(§;!=§.§`!;§);
                  addr80:
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     addr81:
                     while(true)
                     {
                        §§pop().§each § = §§pop();
                        continue loop2;
                     }
                  }
                  addr40:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        return;
                        addr59:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(§;!=§.§`!;§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§pop().name = §§pop();
                  while(_loc3_)
                  {
                     §,l§.§,?§.§^!=§();
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr40);
                  }
                  continue;
               }
               §§goto(addr81);
            }
            §§goto(addr80);
         }
         §§goto(addr59);
      }
      
      public function logout() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §;!=§.§`!;§ = null;
            do
            {
               §;!=§.§-j§ = null;
               do
               {
                  §,l§.§,?§.§3C§(StateConnecting.§`O§);
               }
               while(_loc2_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
         return true;
      }
      
      private function §?!?§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
            do
            {
               this.init();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function §[l§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§[l§);
         }
         do
         {
            this.§;O§();
         }
         while(!_loc3_);
         
      }
      
      private function §#!?§(param1:Event) : void
      {
      }
      
      private function §1b§(param1:Event) : void
      {
      }
      
      private function §;O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§>u§);
         }
         do
         {
            new §,l§(this);
         }
         while(!_loc2_);
         
      }
      
      private function §>u§(param1:UncaughtErrorEvent) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:Error = null;
         var _loc9_:ErrorEvent = null;
         var _loc10_:* = null;
         if(_loc11_)
         {
            if(!this.§'0§)
            {
               if(!(_loc12_ && param1))
               {
                  this.§'0§ = true;
               }
               while(true)
               {
                  _loc2_ = 0;
                  loop1:
                  while(_loc11_ || _loc3_)
                  {
                     while(true)
                     {
                        _loc3_ = null;
                        while(_loc11_)
                        {
                           _loc4_ = "";
                           if(_loc12_)
                           {
                              continue;
                           }
                           loop4:
                           while(true)
                           {
                              _loc5_ = "-";
                              while(true)
                              {
                                 _loc6_ = Math.round(getTimer() / 1000);
                                 if(_loc11_)
                                 {
                                    if(_loc12_)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       continue loop4;
                                    }
                                    §§push(param1.error is Error);
                                    if(!_loc12_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc12_)
                                          {
                                             break;
                                          }
                                          _loc2_ = (_loc8_ = param1.error as Error).errorID;
                                          _loc5_ = _loc8_.message;
                                          if(_loc11_)
                                          {
                                             §§push(_loc8_.getStackTrace());
                                             if(!_loc12_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc12_)
                                                {
                                                   addr150:
                                                   §%!Q§.§4$§(§%!Q§.§1!W§,_loc2_.toString());
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      §§push(§[&§.§;L§);
                                                      if(_loc11_ || param1)
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§[&§.§;L§);
                                                               addr395:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§6!T§());
                                                                  addr397:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr398:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               addr291:
                                                               do
                                                               {
                                                                  §%!Q§.§4$§(§%!Q§.§5!C§,_loc10_,_loc6_);
                                                               }
                                                               while(_loc12_ && this);
                                                               
                                                               if(!_loc11_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc11_)
                                                                        {
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              if(!(_loc12_ && _loc2_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr399);
                                                                                    }
                                                                                    if(_loc11_ || _loc2_)
                                                                                    {
                                                                                       addr218:
                                                                                       if(_loc11_ || _loc2_)
                                                                                       {
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   if(_loc11_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() + "::");
                                                                                                      if(!(_loc12_ && _loc2_))
                                                                                                      {
                                                                                                         addr253:
                                                                                                         if(!(_loc12_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(!(_loc12_ && _loc2_))
                                                                                                            {
                                                                                                               if(!(_loc12_ && _loc2_))
                                                                                                               {
                                                                                                                  addr275:
                                                                                                                  if(_loc11_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr283:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr288:
                                                                                                                           §§push(§§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 §§goto(addr291);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr370:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().length == 0);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_ = "NoState";
                                                                                                                                          }
                                                                                                                                          addr354:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc2_.toString() + "::");
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§push("::");
                                                                                                                                                   if(_loc11_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         addr335:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc12_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push("::");
                                                                                                                                                               }
                                                                                                                                                               addr338:
                                                                                                                                                            }
                                                                                                                                                            break loop19;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr253);
                                                                                                                                                      }
                                                                                                                                                      addr334:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr340:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(VERSION);
                                                                                                                                                         addr341:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            break loop19;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr338);
                                                                                                                                                §§goto(addr275);
                                                                                                                                             }
                                                                                                                                             addr322:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop25:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr371:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr347);
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr347:
                                                                                                                                 addr370:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr288:
                                                                                                                        }
                                                                                                                        §§goto(addr340);
                                                                                                                     }
                                                                                                                     break loop19;
                                                                                                                  }
                                                                                                                  §§goto(addr322);
                                                                                                               }
                                                                                                               §§goto(addr335);
                                                                                                            }
                                                                                                            §§goto(addr341);
                                                                                                         }
                                                                                                         §§goto(addr334);
                                                                                                      }
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr397);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr288);
                                                                                             }
                                                                                             §§goto(addr398);
                                                                                          }
                                                                                          §§goto(addr354);
                                                                                       }
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc12_ && _loc3_))
                                                                                          {
                                                                                             if(_loc12_ && param1)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr344:
                                                                                          while(true)
                                                                                          {
                                                                                             §%!Q§.§4$§(§%!Q§.§<!'§,_loc7_,_loc6_);
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 addr210:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == null);
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 §§goto(addr370);
                                                                              }
                                                                              addr359:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              §§goto(addr344);
                                                                           }
                                                                           addr343:
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr343);
                                                                     }
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               addr180:
                                                            }
                                                            addr393:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr359);
                                                            §§goto(addr398);
                                                         }
                                                      }
                                                      §§goto(addr395);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr393);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr180);
                                       }
                                       else
                                       {
                                          addr139:
                                          if(param1.error is ErrorEvent)
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr139);
                                 }
                                 break;
                              }
                              _loc2_ = (_loc9_ = param1.error as ErrorEvent).errorID;
                              §§goto(addr150);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr399:
            return;
         }
         §§goto(addr86);
      }
   }
}
