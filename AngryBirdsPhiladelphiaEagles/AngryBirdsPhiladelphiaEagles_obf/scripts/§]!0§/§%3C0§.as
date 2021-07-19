package §]!0§
{
   import §0!E§.§;!D§;
   import §^]§.§7!K§;
   import §^]§.§`!K§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<0§ extends EventDispatcher
   {
      
      protected static const §'G§:Number = 1000;
      
      protected static const §@!I§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'G§ = 1000;
         }
         do
         {
            §@!I§ = 60;
         }
         while(_loc1_);
         
      }
      
      protected var §%p§:Dictionary;
      
      protected var §;1§:Dictionary;
      
      protected var §`-§:Dictionary;
      
      protected var §4!D§:Dictionary;
      
      protected var §<!;§:Boolean;
      
      protected var §@!<§:String;
      
      protected var §,W§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §<0§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§,W§ = param1;
            this.§%p§ = new Dictionary();
            while(!_loc2_)
            {
               this.§;1§ = new Dictionary();
               this.§`-§ = new Dictionary();
               if(!_loc2_)
               {
                  this.§4!D§ = new Dictionary();
                  do
                  {
                     this.§<!;§ = false;
                  }
                  while(!_loc3_);
                  
                  return;
               }
            }
         }
      }
      
      private function §;G§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§0F§));
         }
         do
         {
            this.§@!<§ = null;
         }
         while(_loc3_ && this);
         
      }
      
      public function §"o§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§@!<§ == param1)
            {
               if(!_loc3_)
               {
                  §§push(true);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr26);
                  }
                  addr83:
               }
               §§goto(addr82);
            }
            addr26:
            while(this.mMightyEagleTimer.running)
            {
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr66);
               }
               continue loop1;
            }
            §§push(true);
            if(!_loc3_)
            {
               return §§pop();
            }
            addr66:
            §§push(false);
            if(_loc2_ || this)
            {
               return §§pop();
            }
            addr82:
            return §§pop();
         }
         §§goto(addr83);
      }
      
      public function §2K§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§@!I§);
         if(!_loc4_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(§§pop() / §@!I§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!_loc4_)
         {
            §§push(§§pop() % §@!I§);
         }
         var _loc3_:int = §§pop();
         if(_loc5_ || this)
         {
            if(_loc3_ < 10)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr69:
                  §§push("");
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() + §§pop());
                     §§push(":0");
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && _loc1_))
                           {
                              addr108:
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 return §§pop();
                              }
                              addr115:
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr127);
                              }
                           }
                           addr127:
                           §§push(§§pop() + ":");
                           if(_loc5_)
                           {
                              §§push(_loc3_);
                           }
                           return §§pop();
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr108);
               }
               else
               {
                  addr112:
                  §§push("");
                  if(_loc5_)
                  {
                     §§goto(addr115);
                  }
               }
               §§goto(addr127);
            }
            §§goto(addr112);
         }
         §§goto(addr69);
      }
      
      public function §[u§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!D§ = null;
         if(_loc4_)
         {
            if(this.§%p§[param1])
            {
               addr37:
               _loc2_ = this.§%p§[param1];
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §`!C§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!D§ = null;
         if(!(_loc3_ && param1))
         {
            if(this.§;1§[param1])
            {
               addr52:
               _loc2_ = this.§;1§[param1];
               if(_loc4_ || param1)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr52);
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§[u§(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr106:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr107:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && param1))
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                 }
                                 addr85:
                              }
                              else
                              {
                                 if(_loc2_ && param1)
                                 {
                                    continue loop0;
                                 }
                                 addr20:
                                 §§push(false);
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    addr59:
                                    while(!(_loc2_ && _loc3_))
                                    {
                                       continue loop6;
                                    }
                                    continue loop2;
                                 }
                              }
                              while(true)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break loop6;
                                 }
                                 addr109:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr20);
                        }
                        return §§pop();
                     }
                     §§goto(addr109);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §&!!§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§`-§[param1] = param2;
         }
      }
      
      public function §=O§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§4!D§[param1] = param2;
         }
      }
      
      public function §,!0§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;!D§ = new §;!D§(param2);
         if(_loc4_)
         {
            this.§%p§[param1] = _loc3_;
         }
      }
      
      public function §6y§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;!D§ = new §;!D§(param2);
         if(!(_loc5_ && _loc3_))
         {
            this.§;1§[param1] = _loc3_;
         }
      }
      
      public function §7j§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§`!K§);
         §§push(param1);
         if(!_loc3_)
         {
            §§push(param2);
            if(!(_loc3_ && this))
            {
               if(§§pop() != -1)
               {
                  addr51:
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§push(int(§§pop()));
                     if(_loc4_)
                     {
                     }
                     §§goto(addr69);
                  }
               }
               else
               {
                  §§push(this.§[u§(param1));
                  if(_loc4_ || param1)
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr69);
            }
            addr69:
            return §§pop().§;$§(§§pop(),int(§§pop()));
         }
         §§goto(addr51);
      }
      
      public function §;'§(param1:§7!K§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§4!G§())
         {
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc2_);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(int(§§pop() + this.§[u§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §7!;§(param1:§7!K§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§4!G§())
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(_loc7_ || _loc2_)
               {
                  §§push(int(§§pop() + this.§7j§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §,!6§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§7!K§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() >= §`!K§.§<u§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = §`!K§.§5!<§(_loc2_);
               if(!(_loc6_ && _loc1_))
               {
                  §§push(this.§7!;§(_loc3_));
                  if(!(_loc6_ && _loc1_))
                  {
                     §§push(int(§§pop()));
                  }
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc5_)
                        {
                           §§push(int(§§pop() + _loc4_));
                        }
                        if(_loc6_)
                        {
                           break;
                        }
                        _loc1_ = §§pop();
                        while(_loc5_)
                        {
                           _loc2_++;
                           if(_loc5_ || _loc1_)
                           {
                              if(false)
                              {
                                 continue loop3;
                              }
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
               §§goto(addr96);
            }
            break;
         }
         return §§pop();
      }
      
      public function §;!3§(param1:§7!K§) : int
      {
         return param1.§4!G§().length * 3;
      }
      
      public function §&!%§(param1:§7!K§) : int
      {
         return param1.§4!G§().length;
      }
      
      public function §1R§(param1:§7!K§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4!G§())
         {
            if(!(_loc6_ && _loc3_))
            {
               if(this.§`!C§(_loc3_) == 100)
               {
                  if(_loc7_ || _loc2_)
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §^!3§() : Dictionary
      {
         return this.§`-§;
      }
      
      public function get §-!7§() : Boolean
      {
         return this.§<!;§;
      }
      
      public function set §-!7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!;§ = param1;
         }
      }
      
      public function get §?U§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §3!7§() : String
      {
         return this.§@!<§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§7!K§ = null;
         var _loc7_:§7!K§ = null;
         §§push(param1);
         if(!_loc9_)
         {
            if(§§pop() != null)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(_loc8_ || _loc2_)
                  {
                     if(§§pop() == §`!K§.§?!%§)
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(true);
                           break;
                        }
                        continue;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(this.§[u§(param1));
                        loop2:
                        while(true)
                        {
                           §§push(0);
                           loop3:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          break loop2;
                                       }
                                       addr47:
                                       if(_loc8_ || _loc2_)
                                       {
                                          §§push(true);
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                if(_loc8_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             break loop0;
                                          }
                                          break loop3;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr112:
                                 }
                                 if(!_loc9_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop1;
                                 return §§pop();
                              }
                              while(true)
                              {
                                 §§push(this.§`!C§(param1));
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr47);
                                       }
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              addr115:
                              var _loc2_:Array = param1.split("-");
                              if(_loc8_)
                              {
                                 if(_loc2_.length == 2)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(int(parseInt(_loc2_[0])));
                                       if(!_loc9_)
                                       {
                                          _loc4_ = §§pop();
                                          addr150:
                                          if(!_loc9_)
                                          {
                                             addr143:
                                             §§push(int(parseInt(_loc2_[1])));
                                          }
                                          §§push((_loc6_ = §`!K§.§0@§(param1)).pageIndexes[0] == _loc4_);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc8_ || param1)
                                                {
                                                   §§pop();
                                                   if(_loc8_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(1);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc8_)
                                                            {
                                                               addr204:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(true);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  addr303:
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§[u§(_loc3_));
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        addr350:
                                                                        §§push(0);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr327:
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 §§push(true);
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    §§goto(addr343);
                                                                                 }
                                                                              }
                                                                              §§goto(addr352);
                                                                           }
                                                                           addr346:
                                                                           §§push(this.§`!C§(_loc3_));
                                                                        }
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           §§goto(addr353);
                                                                        }
                                                                        addr352:
                                                                        return §§pop();
                                                                        §§push(true);
                                                                     }
                                                                     §§goto(addr350);
                                                                     §§push(0);
                                                                  }
                                                                  addr353:
                                                                  return false;
                                                                  addr254:
                                                                  §§goto(addr352);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc8_)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc8_ || this)
                                                                           {
                                                                              addr233:
                                                                              §§push(§§pop() + "-");
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 §§push(§§pop() + (_loc5_ - 1));
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 §§goto(addr254);
                                                                              }
                                                                              §§goto(addr303);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr269:
                                                                                       if(_loc7_ = §`!K§.§0@§(_loc4_ - 1 + "-1"))
                                                                                       {
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             §§push(_loc4_ - 1 + "-");
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                             }
                                                                                             _loc3_ = §§pop();
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                            addr343:
                                                            return §§pop();
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   §§goto(addr269);
                                                }
                                             }
                                             §§goto(addr204);
                                          }
                                          §§goto(addr352);
                                       }
                                       _loc5_ = §§pop();
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr353);
                              }
                              §§goto(addr143);
                           }
                           return §§pop();
                        }
                     }
                  }
                  §§goto(addr115);
               }
               return §§pop();
            }
            §§goto(addr112);
            §§push(false);
         }
         §§goto(addr115);
      }
      
      public function §';§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §6!M§(param1:String) : void
      {
      }
      
      public function §;a§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §"!Q§() : Dictionary
      {
         return this.§`-§;
      }
   }
}
