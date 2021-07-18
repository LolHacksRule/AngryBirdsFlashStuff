package
{
   import §%!j§.§%K§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §6!k§.§@B§;
   import §<!1§.§&%§;
   import §<!1§.§0W§;
   import §<i§.§`!r§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsBuildAndShareCanvas extends §@B§
   {
      
      public static const VERSION:String = "0.0.1.7 (r101125)";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            VERSION = "0.0.1.7 (r101125)";
         }
      }
      
      private var §2!s§:Boolean = false;
      
      public function AngryBirdsBuildAndShareCanvas()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            do
            {
               §?s§.doJsCall("flashStartsLoading");
               do
               {
                  if(stage)
                  {
                     continue;
                  }
                  addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                  if(!(_loc2_ && this))
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
               }
               while(!_loc1_);
               
               this.initialize();
            }
            while(_loc2_);
            
            §§goto(addr19);
         }
         addr19:
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            do
            {
               this.initialize();
            }
            while(_loc2_);
            
         }
      }
      
      private function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
            {
               this.§![§();
               if(_loc1_ && this)
               {
                  addr75:
               }
               return;
            }
            if(!(_loc1_ && _loc2_))
            {
               loaderInfo.addEventListener(Event.COMPLETE,this.§!p§);
            }
         }
         §§goto(addr75);
      }
      
      protected function §!p§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§!p§);
            do
            {
               this.§![§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      private function §![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§?K§);
            do
            {
               new §[!^§(this);
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §?K§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:* = null;
         if(_loc14_ || _loc3_)
         {
            if(!this.§2!s§)
            {
               if(!(_loc13_ && param1))
               {
                  this.§2!s§ = true;
               }
               loop0:
               while(true)
               {
                  _loc2_ = 0;
                  addr108:
                  while(true)
                  {
                     _loc3_ = null;
                     do
                     {
                        _loc4_ = "";
                     }
                     while(!_loc14_);
                     
                     if(!(_loc13_ && this))
                     {
                        if(!_loc13_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     _loc5_ = "-";
                     if(!(_loc14_ || _loc2_))
                     {
                        break;
                     }
                     _loc6_ = Math.round(getTimer() / 1000);
                     if(!(_loc13_ && param1))
                     {
                        if(false)
                        {
                           continue;
                        }
                        §§push(param1.error is Error);
                        if(_loc14_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc14_ || _loc2_))
                              {
                                 break;
                              }
                              _loc2_ = (_loc10_ = param1.error as Error).errorID;
                              _loc5_ = _loc10_.message;
                              if(_loc14_ || _loc2_)
                              {
                                 §§push(_loc10_.getStackTrace());
                                 if(!(_loc13_ && param1))
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc13_)
                                    {
                                       addr192:
                                       §0W§.§#W§(§&%§.ACTION_APPLICATION_CRASH,_loc2_.toString());
                                       if(_loc14_)
                                       {
                                          §§push(§'_§.§+1§);
                                          if(_loc14_ || this)
                                          {
                                             if(§§pop() != null)
                                             {
                                                while(true)
                                                {
                                                   §§push(§'_§.§+1§);
                                                   addr503:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§get §());
                                                      addr505:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr506:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                addr501:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                loop29:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   loop30:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc14_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop36:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop33:
                                                               for(; !_loc13_; continue loop36)
                                                               {
                                                                  §§push(_loc4_);
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().length == 0);
                                                                     if(!_loc14_)
                                                                     {
                                                                        continue loop36;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc13_ && _loc3_)
                                                                              {
                                                                                 continue loop33;
                                                                              }
                                                                              _loc4_ = "NoState";
                                                                           }
                                                                           continue loop33;
                                                                           addr458:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§`!r§.§0B§);
                                                                           if(!_loc13_)
                                                                           {
                                                                              continue loop29;
                                                                           }
                                                                           addr424:
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(null);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(_loc14_ || this)
                                                                                       {
                                                                                          if(!(_loc13_ && _loc2_))
                                                                                          {
                                                                                             addr446:
                                                                                             _loc7_ = "";
                                                                                             addr448:
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr501);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr458);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr448);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop30;
                                                                           }
                                                                           continue loop35;
                                                                        }
                                                                        _loc8_ = "GPU";
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           if(§%K§.§%!R§)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc8_ = "CPU";
                                                                                 loop14:
                                                                                 while(!(_loc13_ && _loc3_))
                                                                                 {
                                                                                    §0W§.§#W§(§&%§.§2v§,_loc9_,_loc6_);
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr256:
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + "::");
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc13_ && _loc2_))
                                                                                                {
                                                                                                   addr268:
                                                                                                   if(_loc14_ || param1)
                                                                                                   {
                                                                                                      addr276:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         if(_loc14_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc14_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     _loc12_ = §§pop();
                                                                                                                     while(_loc14_)
                                                                                                                     {
                                                                                                                        §0W§.§#W§(§&%§.§!!`§,_loc12_,_loc6_);
                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr215:
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc14_ || this)
                                                                                                                              {
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    break loop16;
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr293:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push("::");
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 break loop19;
                                                                                                                              }
                                                                                                                              addr372:
                                                                                                                           }
                                                                                                                           addr378:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              addr379:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr380:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr364:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push("::");
                                                                                                                        addr376:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           break loop19;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr376);
                                                                                                               }
                                                                                                               addr358:
                                                                                                            }
                                                                                                            §§goto(addr380);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push("::");
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc14_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc14_ || _loc2_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push("::");
                                                                                                                              if(_loc14_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc14_ || this)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr358);
                                                                                                                                    }
                                                                                                                                    addr356:
                                                                                                                                 }
                                                                                                                                 break loop19;
                                                                                                                              }
                                                                                                                              §§goto(addr376);
                                                                                                                           }
                                                                                                                           addr340:
                                                                                                                        }
                                                                                                                        §§goto(addr356);
                                                                                                                     }
                                                                                                                     §§goto(addr372);
                                                                                                                  }
                                                                                                                  addr324:
                                                                                                               }
                                                                                                               §§goto(addr364);
                                                                                                            }
                                                                                                            §§goto(addr376);
                                                                                                         }
                                                                                                         §§goto(addr340);
                                                                                                         §§goto(addr268);
                                                                                                      }
                                                                                                      addr315:
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr507);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr393:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.toString() + "::");
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§goto(addr315);
                                                                                 §§push(_loc4_);
                                                                              }
                                                                              §§goto(addr324);
                                                                              §§goto(addr393);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr506);
                                                            }
                                                            addr476:
                                                         }
                                                         §§goto(addr456);
                                                      }
                                                      §§goto(addr476);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr503);
                                       }
                                    }
                                    §§goto(addr448);
                                 }
                                 §§goto(addr505);
                              }
                              §§goto(addr446);
                           }
                           else
                           {
                              addr181:
                              if(param1.error is ErrorEvent)
                              {
                                 break;
                              }
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr181);
                     }
                     break;
                  }
                  _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
                  §§goto(addr192);
               }
            }
            addr507:
            return;
         }
         §§goto(addr108);
      }
   }
}
