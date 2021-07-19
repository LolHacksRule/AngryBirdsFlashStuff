package
{
   import §!V§.§<!g§;
   import §!V§.§>d§;
   import §1!E§.§>f§;
   import §1!E§.§class§;
   import §=!g§.§!!@§;
   import §[h§.§0G§;
   import §`h§.§@!Z§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   import §throw§.§=! §;
   
   public class CheetosAngryBirdsCanvas extends §=! §
   {
      
      public static const VERSION:String = "(r106595)";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            VERSION = "(r106595)";
         }
      }
      
      private var §`I§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            do
            {
               if(!stage)
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.§-!e§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr24);
                  }
               }
               this.init();
            }
            while(!(_loc1_ || _loc1_));
            
         }
         addr24:
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.addExternalInterfaceCallbacks();
            while(true)
            {
               if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
               {
                  if(!_loc2_)
                  {
                     loaderInfo.addEventListener(Event.COMPLETE,this.§;x§);
                     addr66:
                     break;
                  }
                  break;
               }
               this.§6!'§();
               if(!(_loc1_ || _loc1_))
               {
                  break;
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr24);
            }
            addr24:
            return;
         }
         §§goto(addr66);
      }
      
      private function §<t§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var pageURL:String = null;
         try
         {
            §§push(§§newactivation());
            if(!(_loc3_ && _loc3_))
            {
               §§pop().§§slot[1] = ExternalInterface.call("window.location.href.toString");
               if(!_loc3_)
               {
                  addr97:
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     §§push(§§pop().§§slot[1]);
                     if(_loc4_)
                     {
                        §§push(§§pop() == null);
                        if(_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§pop();
                                 if(_loc4_ || this)
                                 {
                                    addr161:
                                    §§push(pageURL.indexOf(".swf") == -1);
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       §§goto(addr176);
                                    }
                                    addr175:
                                 }
                                 §§goto(addr177);
                              }
                              return §§pop();
                           }
                           addr176:
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr177:
                                 while(true)
                                 {
                                    navigateToURL(new URLRequest("http://cheetos.angrybirds.com"));
                                    §§push(false);
                                 }
                                 addr177:
                              }
                              else
                              {
                                 addr130:
                                 §§push(true);
                                 if(!(_loc3_ && this))
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                              }
                              while(!(_loc4_ || _loc2_))
                              {
                                 continue loop2;
                                 §§goto(addr130);
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr175);
                     }
                  }
                  §§goto(addr161);
               }
               §§goto(addr177);
            }
         }
         catch(e:Error)
         {
            var _loc2_:* = e;
            if(!_loc3_)
            {
               pageURL == null;
            }
            §§goto(addr97);
         }
         catch(e:SecurityError)
         {
            _loc2_ = e;
            if(_loc4_ || _loc2_)
            {
               pageURL == null;
            }
            §§goto(addr97);
         }
         §§goto(addr161);
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!!@§.addCallback("loginPlayer",this.§#>§);
            while(true)
            {
               §!!@§.addCallback("logout",this.§&!a§);
               while(_loc2_)
               {
                  §!!@§.addCallback("creditsAdded",this.§%!D§);
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        §!!@§.addCallback("reportSessionErrorToFlash",this.§6!g§);
                        if(_loc2_)
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
         §§goto(addr56);
      }
      
      private function §#>§(param1:Object) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr155:
                     while(true)
                     {
                        §§push(Boolean(param1.id));
                     }
                  }
                  addr154:
               }
               loop3:
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§>f§.§%!`§);
                           while(§§pop() != null)
                           {
                              §§push(§>f§.§%!`§);
                              if(_loc2_ && _loc2_)
                              {
                                 continue;
                              }
                              if(§§pop().id != param1.id)
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    break loop5;
                                 }
                                 this.logout();
                                 if(_loc2_ && param1)
                                 {
                                    continue loop5;
                                 }
                                 this.§!I§(param1);
                                 if(!(_loc2_ && this))
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(true);
                                       continue loop4;
                                    }
                                    addr35:
                                 }
                                 while(true)
                                 {
                                 }
                              }
                              §§goto(addr35);
                           }
                           addr136:
                           while(true)
                           {
                              this.§!I§(param1);
                              §§goto(addr149);
                           }
                        }
                     }
                     else
                     {
                        §§push(false);
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr155);
                  }
                  continue loop0;
               }
               return §§pop();
            }
            while(_loc2_ && this);
            
            return §§pop();
         }
         §§goto(addr136);
      }
      
      private function §!I§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && _loc3_))
         {
            §>f§.§%!`§ = new §class§();
            while(true)
            {
               §>f§.§5!`§ = §0G§.§?e§();
               loop1:
               while(true)
               {
                  §§push(§>f§.§%!`§);
                  loop2:
                  while(true)
                  {
                     §§pop().name = param1.nickName;
                     loop3:
                     while(true)
                     {
                        §§push(§>f§.§%!`§);
                        loop4:
                        while(!_loc6_)
                        {
                           §§pop().id = param1.id;
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(§>f§.§%!`§);
                                 loop6:
                                 while(!_loc6_)
                                 {
                                    §§pop().verified = param1.verified;
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(§>f§.§%!`§);
                                          if(_loc5_)
                                          {
                                             §§pop().§#]§ = param1.security;
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           for each(_loc2_ in param1.tutorials)
                           {
                              if(_loc5_)
                              {
                                 §5!9§.§#%§.§2!;§(_loc2_);
                              }
                           }
                           if(!_loc6_)
                           {
                              §§goto(addr181);
                           }
                           §§goto(addr180);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §&!a§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.logout();
         }
         return true;
      }
      
      private function logout() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §>f§.logout();
         }
      }
      
      private function §%!D§(param1:int) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(§>f§.§%!`§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        §§push(§>f§.§%!`§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop().§06§);
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    §§push(§>f§.§%!`§);
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop().§06§);
                                    }
                                 }
                                 addr42:
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                              addr91:
                           }
                           while(true)
                           {
                              §§pop().§5<§(param1);
                              §§goto(addr42);
                           }
                        }
                        §§goto(addr95);
                     }
                     return §§pop();
                  }
                  §§goto(addr91);
               }
            }
         }
         else
         {
            §§goto(addr24);
         }
         §§goto(addr42);
      }
      
      private function §6!g§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>f§.logout();
         }
      }
      
      private function §-!e§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§-!e§);
         }
         do
         {
            this.init();
         }
         while(!_loc2_);
         
      }
      
      private function §;x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§;x§);
         }
         do
         {
            this.§6!'§();
         }
         while(!_loc2_);
         
      }
      
      private function §"!%§(param1:Event) : void
      {
      }
      
      private function §+r§(param1:Event) : void
      {
      }
      
      private function §6!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§%!!§);
            do
            {
               new §5!9§(this);
            }
            while(_loc1_);
            
         }
      }
      
      private function §%!!§(param1:UncaughtErrorEvent) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:Error = null;
         var _loc9_:ErrorEvent = null;
         var _loc10_:* = null;
         if(!_loc12_)
         {
            if(!this.§`I§)
            {
               loop0:
               while(true)
               {
                  this.§`I§ = true;
                  loop1:
                  while(true)
                  {
                     _loc2_ = 0;
                     loop2:
                     while(_loc11_)
                     {
                        _loc3_ = null;
                        do
                        {
                           if(_loc11_ || _loc2_)
                           {
                              if(_loc11_ || this)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        while(_loc4_ = "", _loc12_ && _loc2_);
                        
                        while(true)
                        {
                           _loc5_ = "-";
                           if(_loc11_ || param1)
                           {
                              continue;
                           }
                           addr135:
                           _loc2_ = (_loc8_ = param1.error as Error).errorID;
                           _loc5_ = _loc8_.message;
                           if(_loc11_)
                           {
                              §§push(_loc8_.getStackTrace());
                              if(_loc11_)
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc12_ && this))
                                 {
                                    addr180:
                                    §>d§.§@Y§(§<!g§.ACTION_APPLICATION_CRASH,_loc2_.toString());
                                    if(_loc11_)
                                    {
                                       §§push(§@!Z§.§^Y§);
                                       if(_loc11_ || this)
                                       {
                                          if(§§pop() != null)
                                          {
                                             if(!_loc12_)
                                             {
                                                addr405:
                                                §§push(§@!Z§.§^Y§.§@n§());
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                }
                                                addr407:
                                             }
                                             while(true)
                                             {
                                             }
                                             addr408:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             loop7:
                                             while(true)
                                             {
                                                if(!_loc12_)
                                                {
                                                   §§push(§§pop() == null);
                                                   if(_loc11_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr379:
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               addr351:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().length == 0);
                                                                  if(_loc11_ || this)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               continue loop22;
                                                            }
                                                         }
                                                         addr378:
                                                      }
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(!_loc12_)
                                                            {
                                                               _loc4_ = "NoState";
                                                            }
                                                            §§goto(addr379);
                                                            addr363:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.toString() + "::");
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push("::");
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc12_ && this))
                                                                        {
                                                                           §§push(_loc5_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              addr333:
                                                                              while(true)
                                                                              {
                                                                                 §§push("::");
                                                                                 addr334:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(VERSION);
                                                                                          addr338:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                       addr337:
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr332:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           continue loop7;
                                                                        }
                                                                        addr339:
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr338);
                                                               addr257:
                                                               if(_loc12_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc3_);
                                                               if(_loc11_ || param1)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr275:
                                                                     §§push(§§pop() + §§pop());
                                                                     loop26:
                                                                     while(_loc11_ || param1)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        while(!_loc12_)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           §>d§.§@Y§(§<!g§.§#!b§,_loc10_,_loc6_);
                                                                           if(!_loc11_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc12_)
                                                                           {
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!(_loc11_ || param1))
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       while(_loc11_ || _loc2_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             if(!(_loc11_ || param1))
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§push(§§pop() + "::");
                                                                                             if(!(_loc12_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr257);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                §§goto(addr339);
                                                                                             }
                                                                                             §§goto(addr275);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                       continue loop23;
                                                                                    }
                                                                                    addr212:
                                                                                 }
                                                                                 §§goto(addr409);
                                                                              }
                                                                              addr210:
                                                                           }
                                                                           §§goto(addr222);
                                                                        }
                                                                        while(_loc11_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr212);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §>d§.§@Y§(§<!g§.§^!A§,_loc7_,_loc6_);
                                                                           §§goto(addr296);
                                                                        }
                                                                        addr296:
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr378);
                                                }
                                                else
                                                {
                                                   §§goto(addr407);
                                                }
                                             }
                                             §§goto(addr408);
                                          }
                                       }
                                       §§goto(addr405);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr298);
                              }
                              §§goto(addr405);
                           }
                           §§goto(addr229);
                        }
                        _loc2_ = (_loc9_ = param1.error as ErrorEvent).errorID;
                        §§goto(addr180);
                     }
                     continue loop0;
                  }
               }
            }
            addr409:
            return;
         }
         §§goto(addr83);
      }
   }
}
