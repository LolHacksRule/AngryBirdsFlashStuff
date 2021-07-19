package com.angrybirds.utils
{
   import §!!!§.§6!l§;
   import §%!B§.§0![§;
   import §0!m§.§@!S§;
   import §4!i§.§0!<§;
   import §4!i§.§^"#§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §`"§ extends EventDispatcher
   {
       
      
      private var §,@§:Boolean = false;
      
      private var §'!E§:Number;
      
      protected var §4a§:§0![§;
      
      protected var §;Q§:String;
      
      public function §`"§(param1:UncaughtErrorEvents, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§'!E§ = new Date().time;
               while(!_loc3_)
               {
                  this.§;Q§ = param2;
                  while(!_loc3_)
                  {
                     param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§1",§);
                     if(_loc4_)
                     {
                        return;
                        addr48:
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §<!&§(param1:§0![§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4a§ = param1;
         }
      }
      
      protected function reportError(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§'!E§) / 1000);
         if(_loc13_ || _loc3_)
         {
            §§push(param1.error is Error);
            if(_loc13_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc14_ && this))
                  {
                     _loc2_ = (_loc10_ = param1.error as Error).errorID;
                     _loc5_ = _loc10_.message;
                     if(!(_loc14_ && this))
                     {
                        §§push(_loc10_.getStackTrace());
                        if(!_loc14_)
                        {
                           _loc3_ = §§pop();
                           if(!_loc14_)
                           {
                              addr117:
                              §0!<§.§<[§(_loc2_,_loc6_);
                              if(!(_loc14_ && this))
                              {
                                 §§push(§@!S§.§[!%§);
                                 if(_loc13_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       while(true)
                                       {
                                          §§push(§@!S§.§[!%§);
                                          addr180:
                                          while(true)
                                          {
                                             §§push(§§pop().§!!w§());
                                             addr182:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr183:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr164:
                                          if(!(_loc13_ || param1))
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_);
                                          if(_loc13_ || _loc3_)
                                          {
                                             if(!_loc14_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop().length == 0);
                                                   if(!_loc14_)
                                                   {
                                                      loop3:
                                                      while(§§pop())
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc4_ = "NoState";
                                                               if(true)
                                                               {
                                                                  break loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  addr155:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == null);
                                                                     if(_loc13_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                        }
                                                                        addr161:
                                                                     }
                                                                     §§goto(addr161);
                                                                  }
                                                               }
                                                            }
                                                            addr149:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               §§goto(addr164);
                                                            }
                                                            break;
                                                            §§goto(addr161);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      var _loc7_:String = "";
                                                      if(_loc13_)
                                                      {
                                                         §§push(this.§4a§);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc14_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr199:
                                                                     §§pop();
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        addr207:
                                                                        §§push(this.§4a§);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(§§pop().currentLevel);
                                                                           if(!(_loc14_ && param1))
                                                                           {
                                                                              §§push(§§pop() == null);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr224:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       addr239:
                                                                                       §§push(this.§4a§.currentLevel);
                                                                                       if(!(_loc14_ && this))
                                                                                       {
                                                                                          addr248:
                                                                                          _loc7_ = §§pop();
                                                                                       }
                                                                                       §§goto(addr248);
                                                                                    }
                                                                                 }
                                                                                 var _loc8_:String = "GPU";
                                                                                 if(_loc13_ || _loc2_)
                                                                                 {
                                                                                    if(§6!l§.§+J§ == null)
                                                                                    {
                                                                                       if(!(_loc14_ && _loc2_))
                                                                                       {
                                                                                          _loc8_ = "NULL";
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr275:
                                                                                          _loc8_ = "CPU";
                                                                                       }
                                                                                    }
                                                                                    else if(§6!l§.§`k§)
                                                                                    {
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    §§push(_loc2_.toString() + "::");
                                                                                    if(_loc13_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc14_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push("::");
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc13_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc13_ || this)
                                                                                                      {
                                                                                                         addr321:
                                                                                                         §§push("::");
                                                                                                         if(!(_loc14_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               addr332:
                                                                                                               §§push(§§pop() + _loc8_);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  §§push("::");
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc13_ || _loc2_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr375:
                                                                                                                     var _loc9_:String = §§pop() + this.§;Q§;
                                                                                                                     addr372:
                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                     {
                                                                                                                        §0!<§.§1x§(§^"#§.§3",§,_loc9_,_loc6_);
                                                                                                                        loop11:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!(_loc14_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §0!<§.§1x§(§^"#§.§3",§,_loc9_,_loc6_);
                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr407:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    loop14:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc13_ || param1)
                                                                                                                                       {
                                                                                                                                          addr422:
                                                                                                                                          if(!(_loc13_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             loop12:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   break loop11;
                                                                                                                                                }
                                                                                                                                                addr465:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                   addr466:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §0!<§.§1x§(§^"#§.§9"&§,_loc12_,_loc6_);
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr440:
                                                                                                                                          }
                                                                                                                                          §§goto(addr385);
                                                                                                                                       }
                                                                                                                                       §§goto(addr466);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr385:
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr440);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + "::");
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc3_);
                                                                                                                           }
                                                                                                                           §§goto(addr465);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr407);
                                                                                                                  }
                                                                                                                  addr364:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr372);
                                                                                                                  }
                                                                                                                  §§goto(addr375);
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc14_ && this))
                                                                                                            {
                                                                                                               addr355:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc14_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr364);
                                                                                                                  §§push("::");
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         §§goto(addr364);
                                                                                                      }
                                                                                                      §§goto(addr375);
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                                §§goto(addr332);
                                                                                             }
                                                                                             §§goto(addr364);
                                                                                          }
                                                                                          §§goto(addr375);
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr275);
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                addr140:
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr180);
                                 addr128:
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr183);
                  }
                  else
                  {
                     addr107:
                     _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
                  }
               }
               else
               {
                  addr106:
                  if(param1.error is ErrorEvent)
                  {
                     §§goto(addr107);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr106);
         }
         §§goto(addr107);
      }
      
      private function §1",§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.§,@§)
            {
               loop0:
               while(true)
               {
                  this.§,@§ = true;
                  while(true)
                  {
                     this.reportError(param1);
                     for(; _loc3_; this.onError(param1),if(!(_loc2_ && _loc3_))
                     {
                        return;
                     })
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           continue;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
   }
}
