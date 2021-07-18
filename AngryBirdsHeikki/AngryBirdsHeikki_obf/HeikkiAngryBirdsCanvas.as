package
{
   import §"^§.§+!'§;
   import §9L§.§^D§;
   import §9b§.§"!S§;
   import §=! §.§,Z§;
   import §=! §.§9>§;
   import §^!5§.§,4§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class HeikkiAngryBirdsCanvas extends §^D§
   {
      
      public static const VERSION:String = "0.0.0.1";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            VERSION = "0.0.0.1";
         }
      }
      
      private const §<!G§:RegExp;
      
      private var §'_§:Boolean = false;
      
      public function HeikkiAngryBirdsCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<!G§ = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-heikki.appspot\.com))|(angrybirds\-heikki.appspot\.com)|(heikki\.angrybirds\.com))(.*)/;
            loop0:
            while(true)
            {
               super();
               do
               {
                  if(stage)
                  {
                     continue loop0;
                  }
                  addEventListener(Event.ADDED_TO_STAGE,this.§,§);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     continue loop0;
                  }
               }
               while(_loc1_);
               
               §§goto(addr20);
            }
         }
         addr20:
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§0R§())
            {
               do
               {
                  if(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
                  {
                     this.§`"§();
                     if(_loc1_)
                     {
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                     }
                     else
                     {
                        addr77:
                        if(!_loc1_)
                        {
                           §§goto(addr83);
                        }
                     }
                  }
                  continue;
                  return;
               }
               while(!_loc1_);
               
               loaderInfo.addEventListener(Event.COMPLETE,this.§6@§);
               addr61:
               §§goto(addr77);
            }
            addr83:
            return;
         }
         §§goto(addr61);
      }
      
      private function §0R§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var pageURL:String = null;
         try
         {
            §§push(§§newactivation());
            if(!_loc3_)
            {
               §§pop().§§slot[1] = ExternalInterface.call("window.location.href.toString");
               if(_loc4_ || _loc1_)
               {
                  addr92:
                  §§push(false);
                  if(_loc4_ || this)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || _loc3_)
                           {
                              addr121:
                              §§push(§§pop().§§slot[1]);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() == null);
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          addr142:
                                          §§pop();
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             addr223:
                                             §§push(pageURL.indexOf(".swf") == -1);
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                             }
                                             addr237:
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             §§push(false);
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!this.§<!G§.test(pageURL))
                                                            {
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr239:
                                                                     navigateToURL(new URLRequest("http://heikki.angrybirds.com"),"_self");
                                                                     continue loop5;
                                                                  }
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  navigateToURL(new URLRequest("http://heikki.angrybirds.com"),"_self");
                                                               }
                                                               §§push(false);
                                                               break;
                                                            }
                                                            §§goto(addr152);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   addr238:
                                                }
                                                return §§pop();
                                             }
                                          }
                                          addr245:
                                       }
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr142);
                              }
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr201);
                     }
                     addr152:
                     while(true)
                     {
                        §§push(true);
                        if(_loc3_ && _loc1_)
                        {
                           break loop1;
                        }
                        if(_loc3_)
                        {
                           continue loop4;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr237);
                     }
                     return §§pop();
                  }
                  §§goto(addr142);
               }
               §§goto(addr245);
            }
         }
         catch(e:Error)
         {
            var _loc2_:* = e;
            if(!(_loc3_ && _loc1_))
            {
               pageURL == null;
            }
            §§goto(addr92);
         }
         catch(e:SecurityError)
         {
            _loc2_ = e;
            if(!(_loc3_ && _loc2_))
            {
               pageURL == null;
            }
            §§goto(addr92);
         }
         §§goto(addr121);
      }
      
      private function §,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§,§);
         }
         do
         {
            this.init();
         }
         while(!_loc2_);
         
      }
      
      private function §6@§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§6@§);
         }
         do
         {
            this.§`"§();
         }
         while(!(_loc2_ || this));
         
      }
      
      private function §`"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§ §);
         }
         do
         {
            new §,L§(this);
         }
         while(!_loc2_);
         
      }
      
      private function § §(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:* = null;
         if(!_loc13_)
         {
            if(!this.§'_§)
            {
               loop0:
               do
               {
                  this.§'_§ = true;
                  loop1:
                  while(true)
                  {
                     _loc2_ = 0;
                     loop2:
                     do
                     {
                        _loc3_ = null;
                        while(!_loc13_)
                        {
                           _loc4_ = "";
                           if(_loc14_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     while(!(_loc14_ || param1));
                     
                     continue loop0;
                  }
               }
               while(!(_loc14_ || _loc2_));
               
               addr94:
               while(true)
               {
                  _loc5_ = "-";
                  if(!_loc13_)
                  {
                     continue;
                  }
                  addr162:
                  _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
                  §9>§.§>%§(§,Z§.ACTION_APPLICATION_CRASH,_loc2_.toString());
                  if(_loc14_ || param1)
                  {
                     §§push(§"!S§.§%!U§);
                     if(_loc14_ || _loc3_)
                     {
                        if(§§pop() != null)
                        {
                           addr506:
                           while(true)
                           {
                              §§push(§"!S§.§%!U§);
                              addr508:
                              while(true)
                              {
                                 §§push(§§pop().§2!0§());
                                 addr510:
                                 loop8:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    addr511:
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           addr506:
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           loop13:
                           while(true)
                           {
                              if(_loc14_)
                              {
                                 while(true)
                                 {
                                    §§push(null);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop11:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§pop();
                                                addr470:
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc14_ || _loc2_)
                                                   {
                                                      if(_loc14_ || _loc2_)
                                                      {
                                                         §§push(_loc4_);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().length == 0);
                                                            if(!(_loc13_ && _loc2_))
                                                            {
                                                               if(!(_loc13_ && this))
                                                               {
                                                                  break loop7;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop12;
                                                         }
                                                         addr439:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr506);
                                                      }
                                                   }
                                                   §§goto(addr511);
                                                   continue loop12;
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             addr458:
                                             while(true)
                                             {
                                                _loc4_ = "NoState";
                                             }
                                             addr458:
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§,4§.§0!$§);
                                             if(_loc14_)
                                             {
                                                if(_loc13_ && this)
                                                {
                                                   continue loop13;
                                                }
                                                §§push(§§pop());
                                                if(_loc14_)
                                                {
                                                   addr405:
                                                   if(_loc14_ || this)
                                                   {
                                                      addr414:
                                                      §§push(_loc7_ = §§pop());
                                                      §§push(null);
                                                      if(!_loc14_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc7_ = "";
                                                               }
                                                               addr432:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr470);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               break loop6;
                                                            }
                                                         }
                                                      }
                                                      _loc8_ = "GPU";
                                                      if(§+!'§.§"!#§)
                                                      {
                                                         addr383:
                                                         _loc8_ = "CPU";
                                                      }
                                                      addr389:
                                                      §§push(_loc2_.toString() + "::");
                                                      if(_loc14_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc13_)
                                                         {
                                                            addr303:
                                                            §§push(§§pop() + §§pop());
                                                            §§push("::");
                                                            if(!(_loc13_ && _loc2_))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc14_)
                                                               {
                                                                  addr315:
                                                                  §§push(§§pop() + _loc5_);
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     §§push("::");
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc14_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() + _loc8_);
                                                                           if(_loc14_)
                                                                           {
                                                                              addr338:
                                                                              §§push("::");
                                                                              if(!(_loc13_ && this))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    addr368:
                                                                                    addr366:
                                                                                    addr367:
                                                                                    addr354:
                                                                                    §§push(_loc7_);
                                                                                    if(_loc14_ || _loc3_)
                                                                                    {
                                                                                       addr363:
                                                                                       §§push(§§pop() + §§pop() + "::");
                                                                                    }
                                                                                    _loc9_ = §§pop() + §§pop();
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       if(_loc14_ || param1)
                                                                                       {
                                                                                          §9>§.§>%§(§,Z§.§+!V§,_loc9_,_loc6_);
                                                                                          addr284:
                                                                                          if(!(_loc13_ && _loc2_))
                                                                                          {
                                                                                             addr199:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc14_ || _loc3_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§push(_loc9_);
                                                                                                      if(!(_loc13_ && this))
                                                                                                      {
                                                                                                         addr219:
                                                                                                         §§push(§§pop() + "::");
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            if(!(_loc13_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc14_ || param1)
                                                                                                               {
                                                                                                                  if(!(_loc13_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr265:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              addr273:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 §9>§.§>%§(§,Z§.§,+§,_loc12_,_loc6_);
                                                                                                                                 addr276:
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr199);
                                                                                                                                       }
                                                                                                                                       §§goto(addr512);
                                                                                                                                    }
                                                                                                                                    §§goto(addr284);
                                                                                                                                 }
                                                                                                                                 addr276:
                                                                                                                                 §§goto(addr276);
                                                                                                                              }
                                                                                                                              §§goto(addr368);
                                                                                                                           }
                                                                                                                           §§goto(addr366);
                                                                                                                           §§push(VERSION);
                                                                                                                        }
                                                                                                                        §§goto(addr315);
                                                                                                                     }
                                                                                                                     §§goto(addr368);
                                                                                                                  }
                                                                                                                  §§goto(addr303);
                                                                                                               }
                                                                                                               §§goto(addr363);
                                                                                                            }
                                                                                                            §§goto(addr367);
                                                                                                         }
                                                                                                         §§goto(addr265);
                                                                                                      }
                                                                                                      §§goto(addr273);
                                                                                                   }
                                                                                                   §§goto(addr276);
                                                                                                }
                                                                                                §§goto(addr512);
                                                                                             }
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          §§goto(addr368);
                                                                                       }
                                                                                       §§goto(addr389);
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 §§goto(addr368);
                                                                              }
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr354);
                                                                        }
                                                                        §§goto(addr265);
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                                  §§goto(addr368);
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                   §§goto(addr439);
                                                }
                                                §§goto(addr414);
                                             }
                                             §§goto(addr405);
                                          }
                                          §§goto(addr458);
                                       }
                                    }
                                 }
                                 addr465:
                              }
                              §§goto(addr510);
                           }
                        }
                     }
                     §§goto(addr508);
                  }
                  §§goto(addr506);
               }
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
                        §§goto(addr162);
                     }
                     §§goto(addr458);
                  }
                  §§goto(addr465);
               }
               §§goto(addr432);
            }
            addr512:
            return;
         }
         §§goto(addr94);
      }
   }
}
