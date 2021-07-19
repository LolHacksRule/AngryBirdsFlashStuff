package §;_§
{
   import §0!!§.§2N§;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §#1§ extends EventDispatcher
   {
      
      protected static const §<!0§:Number = 1000;
      
      protected static const §'c§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §#1§))
         {
            §<!0§ = 1000;
            do
            {
               §'c§ = 60;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      protected var §4r§:Dictionary;
      
      protected var §3l§:Dictionary;
      
      protected var §-!?§:Dictionary;
      
      protected var §@!8§:Dictionary;
      
      protected var §%!=§:Boolean;
      
      protected var §-6§:String;
      
      protected var §"!5§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §#1§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super();
         while(true)
         {
            this.§"!5§ = param1;
            this.§4r§ = new Dictionary();
            this.§3l§ = new Dictionary();
            while(!(_loc3_ && _loc2_))
            {
               this.§-!?§ = new Dictionary();
               this.§@!8§ = new Dictionary();
               while(_loc2_)
               {
                  this.§%!=§ = false;
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §%7§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§0f§));
            do
            {
               this.§-6§ = null;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §0=§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§-6§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(_loc2_ && _loc3_)
                  {
                     break;
                  }
                  addr82:
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr81);
                     }
                     else
                     {
                        addr88:
                     }
                     return true;
                  }
               }
               §§push(true);
               if(_loc2_ && _loc3_)
               {
                  addr81:
                  return false;
               }
               if(_loc3_ || _loc2_)
               {
                  return §§pop();
               }
               §§goto(addr88);
            }
            §§goto(addr88);
         }
         §§goto(addr82);
      }
      
      public function §3m§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§'c§);
         if(_loc4_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc4_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc4_ || _loc1_)
         {
            §§push(§§pop() / §'c§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!(_loc5_ && _loc1_))
         {
            §§push(§§pop() % §'c§);
         }
         var _loc3_:int = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ < 10)
            {
               if(_loc4_ || _loc1_)
               {
                  §§push("");
                  if(_loc4_)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(":0");
                        if(_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc5_)
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 addr104:
                                 return §§pop() + §§pop();
                              }
                              else
                              {
                                 addr126:
                                 return §§pop() + §§pop();
                                 addr125:
                              }
                           }
                           return §§pop();
                        }
                        addr121:
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           §§goto(addr125);
                           §§push(_loc3_);
                        }
                        §§goto(addr126);
                        §§goto(addr126);
                     }
                     §§goto(addr104);
                  }
               }
               else
               {
                  addr106:
                  §§push("");
                  if(_loc4_)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc5_)
                        {
                           §§goto(addr121);
                           §§push(":");
                        }
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr126);
            }
         }
         §§goto(addr106);
      }
      
      public function §5!4§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2N§ = null;
         if(!(_loc4_ && param1))
         {
            if(this.§4r§[param1])
            {
               addr41:
               _loc2_ = this.§4r§[param1];
               if(_loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §!!@§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2N§ = null;
         if(_loc3_ || param1)
         {
            if(this.§3l§[param1])
            {
               addr41:
               _loc2_ = this.§3l§[param1];
               if(!_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5!4§(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr95:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr96:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr98:
                     }
                     else
                     {
                        while(§§pop())
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              §§goto(addr89);
                           }
                           continue loop0;
                        }
                        §§push(false);
                        if(!(_loc3_ && param1))
                        {
                           return §§pop();
                        }
                        addr89:
                        return true;
                        addr82:
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §6§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§-!?§[param1] = param2;
         }
      }
      
      public function §6w§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§-!?§[param1] = param2;
         }
      }
      
      public function §,! §(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2N§ = new §2N§(param2);
         if(!(_loc4_ && param1))
         {
            this.§4r§[param1] = _loc3_;
         }
      }
      
      public function §=+§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2N§ = new §2N§(param2);
         if(_loc5_ || param2)
         {
            this.§3l§[param1] = _loc3_;
         }
      }
      
      public function §1!8§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§0$§);
         §§push(param1);
         if(!_loc4_)
         {
            §§push(param2);
            if(_loc3_)
            {
               if(§§pop() != -1)
               {
                  addr35:
                  §§push(param2);
                  if(!(_loc4_ && this))
                  {
                     addr53:
                     §§push(int(§§pop()));
                     if(_loc4_ && param2)
                     {
                     }
                  }
                  else
                  {
                     addr72:
                     §§push(int(§§pop()));
                  }
               }
               else
               {
                  §§push(this.§5!4§(param1));
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr72);
                  }
               }
               return §§pop().§5Y§(§§pop(),§§pop());
            }
            §§goto(addr53);
         }
         §§goto(addr35);
      }
      
      public function §3<§(param1:§&9§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§ ;§())
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc2_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(int(§§pop() + this.§5!4§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §!!E§(param1:§&9§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§ ;§())
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(int(§§pop() + this.§1!8§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §4q§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§&9§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               break;
            }
            if(§§pop() >= §0$§.§ l§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = §0$§.§]>§(_loc2_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(this.§!!E§(_loc3_));
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
               loop1:
               while(true)
               {
                  _loc4_ = §§pop();
                  loop2:
                  while(true)
                  {
                     addr58:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        addr82:
                        _loc1_ = §§pop();
                        do
                        {
                           _loc2_++;
                        }
                        while(!_loc5_);
                        
                        if(!_loc5_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr58);
            }
         }
         return §§pop();
      }
      
      public function §9b§(param1:§&9§) : int
      {
         return param1.§ ;§().length * 3;
      }
      
      public function §'o§(param1:§&9§) : int
      {
         return param1.§ ;§().length;
      }
      
      public function §@!=§(param1:§&9§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ ;§())
         {
            if(_loc6_)
            {
               if(this.§!!@§(_loc3_) != 100)
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function get §!@§() : Dictionary
      {
         return this.§-!?§;
      }
      
      public function get §&,§() : Dictionary
      {
         return this.§-!?§;
      }
      
      public function get §7!@§() : Boolean
      {
         return this.§%!=§;
      }
      
      public function set §7!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!=§ = param1;
         }
      }
      
      public function get §[w§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §'!3§() : String
      {
         return this.§-6§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§&9§ = null;
         var _loc7_:§&9§ = null;
         §§push(param1);
         while(true)
         {
            if(§§pop() == null)
            {
               §§goto(addr115);
            }
            §§push(param1);
            if(!_loc9_)
            {
               break;
            }
            if(_loc8_ && _loc3_)
            {
               continue;
            }
            if(§§pop() == §0$§.§!!C§)
            {
               if(_loc9_ || param1)
               {
                  return true;
               }
               else
               {
                  loop1:
                  do
                  {
                     §§push(this.§5!4§(param1));
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(true);
                              break;
                           }
                           §§push(this.§!!@§(param1));
                           if(_loc8_ && _loc3_)
                           {
                              continue loop2;
                           }
                           §§push(0);
                           if(_loc8_ && _loc2_)
                           {
                              continue;
                           }
                           if(§§pop() <= §§pop())
                           {
                              break loop1;
                           }
                           if(_loc8_)
                           {
                              continue loop1;
                           }
                           §§push(true);
                           if(_loc8_ && this)
                           {
                              break;
                           }
                           if(_loc9_ || param1)
                           {
                              if(_loc9_ || param1)
                              {
                                 return §§pop();
                              }
                              addr115:
                              return false;
                           }
                        }
                        return §§pop();
                     }
                  }
                  while(false);
                  
                  §§push(param1);
                  break;
                  addr78:
               }
               return §§pop();
            }
            §§goto(addr78);
         }
         var _loc2_:Array = §§pop().split("-");
         if(_loc9_)
         {
            if(_loc2_.length == 2)
            {
               if(_loc9_)
               {
                  §§push(int(parseInt(_loc2_[0])));
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc4_ = §§pop();
                     §§goto(addr168);
                  }
                  _loc5_ = §§pop();
               }
               addr168:
               if(_loc9_ || param1)
               {
                  addr151:
                  §§push(int(parseInt(_loc2_[1])));
               }
               §§push((_loc6_ = §0$§.§,o§(param1)).pageIndexes[0] == _loc4_);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(!(_loc8_ && param1))
                        {
                           §§push(_loc5_);
                           if(_loc9_ || _loc2_)
                           {
                              §§push(1);
                              if(_loc9_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc9_)
                                 {
                                    addr207:
                                    if(§§pop())
                                    {
                                       §§push(true);
                                       if(!_loc8_)
                                       {
                                          §§goto(addr211);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(1);
                                          if(!_loc8_)
                                          {
                                             addr223:
                                             if(§§pop() > §§pop())
                                             {
                                                addr224:
                                                §§push(_loc4_);
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop() + "-");
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() + (_loc5_ - 1));
                                                   }
                                                   §§push(§§pop());
                                                   if(!(_loc8_ && this))
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr284:
                                                      §§push(_loc3_);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§push(this.§5!4§(_loc3_));
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         addr296:
                                                         §§push(0);
                                                         if(_loc9_ || this)
                                                         {
                                                            addr314:
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(true);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§goto(addr325);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr335:
                                                                  return true;
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr332);
                                                            §§goto(addr335);
                                                         }
                                                         addr332:
                                                         if(this.§!!@§(_loc3_) > 0)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr337);
                                                            }
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                   }
                                                   §§goto(addr337);
                                                }
                                                else
                                                {
                                                   addr247:
                                                   §§push(1);
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(_loc7_ = §0$§.§,o§(_loc4_ - 1 + "-1"))
                                                         {
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(_loc4_ - 1 + "-");
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() + _loc7_.levelsPerPage);
                                                               }
                                                               _loc3_ = §§pop();
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   §§goto(addr314);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc4_);
                                                if(_loc9_)
                                                {
                                                   §§goto(addr247);
                                                }
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr247);
                                    }
                                 }
                                 addr325:
                                 return §§pop();
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr296);
                        }
                        §§goto(addr224);
                     }
                  }
                  §§goto(addr207);
               }
               addr211:
               return §§pop();
            }
            addr337:
            return false;
         }
         §§goto(addr151);
      }
      
      public function §-!7§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
   }
}
