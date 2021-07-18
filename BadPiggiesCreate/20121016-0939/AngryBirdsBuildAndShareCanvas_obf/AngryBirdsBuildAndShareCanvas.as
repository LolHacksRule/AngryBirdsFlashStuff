package
{
   import §""3§.§,"5§;
   import §"v§.§3!w§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'@§.§4!n§;
   import §'@§.§4&§;
   import §6p§.§?%§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsBuildAndShareCanvas extends §,"5§
   {
      
      public static const VERSION:String = "0.0.1.7 (r99948)";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            VERSION = "0.0.1.7 (r99948)";
         }
      }
      
      private var §0Z§:Boolean = false;
      
      public function AngryBirdsBuildAndShareCanvas()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               §4m§.doJsCall("flashStartsLoading");
               do
               {
                  if(stage)
                  {
                     if(!(_loc2_ && this))
                     {
                        continue loop0;
                     }
                  }
                  else
                  {
                     addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr24);
                     }
                  }
               }
               while(!(_loc1_ || _loc1_));
               
            }
         }
         addr24:
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         do
         {
            this.initialize();
         }
         while(_loc3_ && param1);
         
      }
      
      private function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
            {
               this.§2!@§();
               if(!_loc1_)
               {
                  if(_loc1_ && _loc2_)
                  {
                     addr64:
                     loaderInfo.addEventListener(Event.COMPLETE,this.§"!N§);
                     addr70:
                  }
                  return;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr64);
      }
      
      protected function §"!N§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§"!N§);
         }
         do
         {
            this.§2!@§();
         }
         while(!(_loc2_ || param1));
         
      }
      
      private function §2!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§7!5§);
            do
            {
               new §>"§(this);
            }
            while(!_loc1_);
            
         }
      }
      
      private function §7!5§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(!_loc14_)
         {
            if(!this.§0Z§)
            {
               if(!(_loc14_ && param1))
               {
                  this.§0Z§ = true;
               }
               loop0:
               while(true)
               {
                  _loc2_ = 0;
                  addr97:
                  while(true)
                  {
                     _loc3_ = null;
                     do
                     {
                        _loc4_ = "";
                     }
                     while(_loc14_ && this);
                     
                     if(_loc13_ || _loc2_)
                     {
                        if(!_loc14_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     _loc5_ = "-";
                     if(!_loc13_)
                     {
                        break;
                     }
                     _loc6_ = Math.round(getTimer() / 1000);
                     if(_loc13_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        §§push(param1.error is Error);
                        if(!(_loc14_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!_loc13_)
                              {
                                 break;
                              }
                              _loc2_ = (_loc10_ = param1.error as Error).errorID;
                              _loc5_ = _loc10_.message;
                              if(_loc13_ || _loc3_)
                              {
                                 §§push(_loc10_.getStackTrace());
                                 if(!(_loc14_ && _loc3_))
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc14_)
                                    {
                                       addr176:
                                       §4&§.§@!Q§(§4!n§.ACTION_APPLICATION_CRASH,_loc2_.toString());
                                       if(!_loc14_)
                                       {
                                          §§push(§=!X§.§9'§);
                                          if(!(_loc14_ && _loc3_))
                                          {
                                             if(§§pop() != null)
                                             {
                                                loop37:
                                                while(true)
                                                {
                                                   §§push(§=!X§.§9'§);
                                                   addr502:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§^!t§());
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr505:
                                                         while(true)
                                                         {
                                                         }
                                                         addr399:
                                                         if(!(_loc13_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc13_ || this)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               addr418:
                                                               §§push(_loc7_ = §§pop());
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(null);
                                                                     if(_loc13_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc13_ || _loc2_)
                                                                           {
                                                                              _loc7_ = "";
                                                                           }
                                                                           if(!(_loc14_ && _loc2_))
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr449:
                                                                                    break;
                                                                                 }
                                                                                 continue loop37;
                                                                              }
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc13_ || _loc2_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().length == 0);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr468:
                                                                                             while(§§pop())
                                                                                             {
                                                                                             }
                                                                                             continue loop8;
                                                                                             addr468:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_ = "NoState";
                                                                                                }
                                                                                                addr461:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§3!w§.§%n§);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    addr452:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr505);
                                                                                 }
                                                                                 §§goto(addr468);
                                                                              }
                                                                           }
                                                                           §§goto(addr461);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr467:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr468);
                                                                     }
                                                                  }
                                                                  _loc8_ = "GPU";
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(§?%§.§ !J§)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc8_ = "CPU";
                                                                           addr212:
                                                                           if(_loc14_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc9_);
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                              addr227:
                                                                              if(_loc13_ || this)
                                                                              {
                                                                                 §§push(§§pop() + "::");
                                                                                 if(!(_loc14_ && this))
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       if(!(_loc14_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(_loc13_ || param1)
                                                                                                {
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr277:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc13_ || this)
                                                                                                      {
                                                                                                         if(_loc13_ || this)
                                                                                                         {
                                                                                                            addr292:
                                                                                                            _loc12_ = §§pop();
                                                                                                            while(!_loc14_)
                                                                                                            {
                                                                                                               §4&§.§@!Q§(§4!n§.§'"&§,_loc12_,_loc6_);
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                            }
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr203:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr506);
                                                                                                                     }
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           §§goto(addr212);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §4&§.§@!Q§(§4!n§.§3!c§,_loc9_,_loc6_);
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        addr382:
                                                                                                                     }
                                                                                                                     §§goto(addr293);
                                                                                                                  }
                                                                                                                  §§goto(addr227);
                                                                                                               }
                                                                                                               addr347:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push("::");
                                                                                                                  if(!(_loc14_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(!(_loc14_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc13_ || param1)
                                                                                                                              {
                                                                                                                                 addr375:
                                                                                                                                 §§push("::");
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr380:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr381:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                          §§goto(addr382);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr375:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(VERSION);
                                                                                                                                 addr379:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr380);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr379);
                                                                                                                        }
                                                                                                                        addr358:
                                                                                                                     }
                                                                                                                     §§goto(addr380);
                                                                                                                  }
                                                                                                                  §§goto(addr375);
                                                                                                               }
                                                                                                            }
                                                                                                            addr293:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr347);
                                                                                                         }
                                                                                                         addr345:
                                                                                                      }
                                                                                                      §§goto(addr380);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr336:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push("::");
                                                                                                         if(!(_loc14_ && _loc2_))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr345);
                                                                                                            }
                                                                                                            addr344:
                                                                                                         }
                                                                                                         §§goto(addr375);
                                                                                                      }
                                                                                                   }
                                                                                                   addr335:
                                                                                                }
                                                                                                §§goto(addr379);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push("::");
                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr335);
                                                                                                   }
                                                                                                   addr334:
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                             addr325:
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr277);
                                                                              }
                                                                              §§goto(addr381);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        addr387:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.toString() + "::");
                                                                        if(_loc13_ || _loc3_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc13_ || this)
                                                                           {
                                                                              §§goto(addr325);
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§goto(addr379);
                                                                        }
                                                                        §§goto(addr358);
                                                                        §§goto(addr387);
                                                                     }
                                                                  }
                                                                  addr425:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr467);
                                                                  §§goto(addr418);
                                                               }
                                                               addr466:
                                                            }
                                                            §§goto(addr452);
                                                         }
                                                         §§goto(addr418);
                                                      }
                                                   }
                                                }
                                                addr500:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr466);
                                             }
                                          }
                                          §§goto(addr502);
                                       }
                                       §§goto(addr500);
                                    }
                                    §§goto(addr449);
                                 }
                                 §§goto(addr425);
                              }
                              §§goto(addr449);
                           }
                           else
                           {
                              addr165:
                              if(param1.error is ErrorEvent)
                              {
                                 break;
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr165);
                     }
                     break;
                  }
                  _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
                  §§goto(addr176);
               }
            }
            addr506:
            return;
         }
         §§goto(addr97);
      }
   }
}
