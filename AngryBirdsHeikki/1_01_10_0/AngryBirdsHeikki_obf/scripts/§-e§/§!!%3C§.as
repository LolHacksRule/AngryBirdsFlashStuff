package §-e§
{
   import §=! §.§[2§;
   import §^!5§.§,4§;
   import §^!5§.§0M§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §!!<§ extends EventDispatcher
   {
      
      protected static const §1!d§:Number = 1000;
      
      protected static const §,!"§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1!d§ = 1000;
         }
         do
         {
            §,!"§ = 60;
         }
         while(_loc2_);
         
      }
      
      protected var §0!I§:Dictionary;
      
      protected var §5!+§:Dictionary;
      
      protected var §#H§:Dictionary;
      
      protected var § o§:Dictionary;
      
      protected var § c§:Boolean;
      
      protected var §`s§:String;
      
      protected var §]f§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §!!<§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               this.§]f§ = param1;
               while(true)
               {
                  this.§0!I§ = new Dictionary();
                  loop2:
                  for(; _loc2_ || this; if(_loc2_ || _loc3_)
                  {
                     if(_loc2_)
                     {
                        return;
                        addr65:
                     }
                     continue loop0;
                  })
                  {
                     this.§5!+§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        this.§#H§ = new Dictionary();
                        do
                        {
                           this.§ o§ = new Dictionary();
                           continue loop3;
                        }
                        while(_loc3_ && _loc2_);
                        
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §+E§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§1!I§));
            do
            {
               this.§`s§ = null;
            }
            while(_loc3_);
            
         }
      }
      
      public function §2!L§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§`s§ == param1)
            {
               if(_loc3_)
               {
                  §§push(true);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr27);
                  }
                  addr79:
               }
               §§goto(addr78);
            }
            addr27:
            while(this.mMightyEagleTimer.running)
            {
               if(!(_loc3_ || param1))
               {
                  break;
               }
               if(_loc3_)
               {
                  §§goto(addr52);
               }
               continue loop1;
            }
            §§push(true);
            if(_loc3_)
            {
               return §§pop();
            }
            addr52:
            §§push(false);
            if(!(_loc2_ && param1))
            {
               return §§pop();
            }
            addr78:
            return §§pop();
         }
         §§goto(addr79);
      }
      
      public function §&!<§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§,!"§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc5_ || _loc2_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(_loc5_)
            {
               §§push(§§pop() / §,!"§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(_loc5_ || _loc1_)
            {
               §§push(§§pop() % §,!"§);
            }
            var _loc3_:int = §§pop();
            if(!_loc4_)
            {
               if(_loc3_ < 10)
               {
                  if(_loc5_)
                  {
                     §§push("");
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              addr83:
                              §§push(§§pop() + ":0");
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(_loc3_);
                                 if(!_loc4_)
                                 {
                                    addr95:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    addr133:
                                    §§push(§§pop() + _loc3_);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr134);
                           }
                           else
                           {
                              addr102:
                              §§push(_loc2_);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_)
                                 {
                                    addr113:
                                    §§push(§§pop() + ":");
                                    if(!(_loc4_ && this))
                                    {
                                       §§goto(addr133);
                                    }
                                 }
                                 addr134:
                                 return §§pop();
                              }
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr83);
                  }
                  else
                  {
                     addr99:
                     §§push("");
                     if(!_loc4_)
                     {
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr113);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr36);
      }
      
      public function §%=§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[2§ = null;
         if(!(_loc4_ && _loc2_))
         {
            if(this.§0!I§[param1])
            {
               _loc2_ = this.§0!I§[param1];
               addr41:
               if(_loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §=!T§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[2§ = null;
         if(!(_loc4_ && _loc2_))
         {
            if(this.§5!+§[param1])
            {
               _loc2_ = this.§5!+§[param1];
               addr41:
               if(!_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §,!9§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§%=§(param1));
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
                              if(_loc3_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    break loop6;
                                 }
                                 addr75:
                              }
                              else if(_loc2_ && this)
                              {
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                           addr59:
                           while(!(_loc2_ && this))
                           {
                              continue loop6;
                           }
                        }
                        while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §&0§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§#H§[param1] = param2;
         }
      }
      
      public function §=t§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§ o§[param1] = param2;
         }
      }
      
      public function §!!N§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§[2§ = new §[2§(param2);
         if(_loc4_)
         {
            this.§0!I§[param1] = _loc3_;
         }
      }
      
      public function §,!6§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§[2§ = new §[2§(param2);
         if(_loc4_)
         {
            this.§5!+§[param1] = _loc3_;
         }
      }
      
      public function §2!a§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§,4§);
         §§push(param1);
         if(!_loc3_)
         {
            §§push(param2);
            if(!_loc3_)
            {
               if(§§pop() != -1)
               {
                  addr36:
                  §§push(param2);
                  if(_loc4_)
                  {
                     addr39:
                     §§push(int(§§pop()));
                     if(_loc3_ && this)
                     {
                     }
                  }
                  else
                  {
                     addr63:
                     §§push(int(§§pop()));
                  }
               }
               else
               {
                  §§push(this.§%=§(param1));
                  if(_loc4_)
                  {
                     §§goto(addr63);
                  }
               }
               return §§pop().§8F§(§§pop(),§§pop());
            }
            §§goto(addr39);
         }
         §§goto(addr36);
      }
      
      public function §;m§(param1:§0M§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§9$§())
         {
            if(_loc7_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(int(§§pop() + this.§%=§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §+!!§(param1:§0M§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§9$§())
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(int(§§pop() + this.§2!a§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §4T§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§0M§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_ && _loc3_)
            {
               break;
            }
            if(§§pop() >= §,4§.§#o§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = §,4§.§5A§(_loc2_);
            if(_loc5_ || _loc3_)
            {
               §§push(this.§+!!§(_loc3_));
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr86:
                     while(true)
                     {
                        addr63:
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
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            while(true)
            {
               _loc2_++;
               if(_loc6_)
               {
                  continue;
               }
               if(_loc5_ || this)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr63);
               }
               §§goto(addr86);
            }
         }
         return §§pop();
      }
      
      public function §8?§(param1:§0M§) : int
      {
         return param1.§9$§().length * 3;
      }
      
      public function §5!§(param1:§0M§) : int
      {
         return param1.§9$§().length;
      }
      
      public function §2h§(param1:§0M§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9$§())
         {
            if(_loc7_ || _loc2_)
            {
               if(this.§=!T§(_loc3_) == 100)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §+!W§() : Dictionary
      {
         return this.§#H§;
      }
      
      public function get §@!P§() : Boolean
      {
         return this.§ c§;
      }
      
      public function set §@!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ c§ = param1;
         }
      }
      
      public function get §`O§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §0!9§() : String
      {
         return this.§`s§;
      }
      
      public function §2!-§(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:§0M§ = null;
         var _loc7_:§0M§ = null;
         if(_loc9_)
         {
            §§push(param1);
            if(!(_loc8_ && this))
            {
               if(§§pop() == null)
               {
                  if(_loc9_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr99:
                        addr125:
                        loop1:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc9_)
                           {
                              if(§§pop() != §,4§.§9!&§)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§%=§(param1));
                                    loop3:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§push(true);
                                                   break;
                                                }
                                                addr106:
                                                §§goto(addr107);
                                             }
                                             while(true)
                                             {
                                                addr68:
                                                if(!(_loc8_ && this))
                                                {
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§=!T§(param1));
                                             if(!_loc9_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(0);
                                             if(_loc8_ && _loc3_)
                                             {
                                                continue loop4;
                                             }
                                             if(§§pop() <= §§pop())
                                             {
                                                break;
                                             }
                                             if(_loc9_ || this)
                                             {
                                                if(_loc9_)
                                                {
                                                   §§push(true);
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr122:
                                                      return §§pop();
                                                   }
                                                   break loop4;
                                                }
                                                addr108:
                                                while(true)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr68);
                                             }
                                          }
                                          addr124:
                                          break loop1;
                                       }
                                       if(!_loc8_)
                                       {
                                          return §§pop();
                                       }
                                       addr107:
                                       return true;
                                    }
                                 }
                                 addr84:
                              }
                              §§goto(addr106);
                           }
                           break;
                        }
                        var _loc2_:Array = §§pop().split("-");
                        if(_loc9_)
                        {
                           if(_loc2_.length == 2)
                           {
                              if(!_loc8_)
                              {
                                 §§push(int(parseInt(_loc2_[0])));
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc9_ || _loc2_)
                                    {
                                       addr164:
                                       _loc5_ = parseInt(_loc2_[1]);
                                    }
                                    §§push((_loc6_ = §,4§.§5!=§(param1)).pageIndexes[0] == _loc4_);
                                    if(_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§pop();
                                             if(_loc9_ || this)
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_)
                                                {
                                                   §§push(1);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc8_)
                                                      {
                                                         addr209:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§push(true);
                                                               if(_loc9_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr330:
                                                               §§push(this.§%=§(_loc3_));
                                                               if(_loc9_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr338:
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           §§push(true);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§goto(addr349);
                                                                           }
                                                                           §§goto(addr375);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     addr370:
                                                                     §§push(this.§=!T§(_loc3_));
                                                                     §§push(0);
                                                                     §§goto(addr376);
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        addr374:
                                                                        addr375:
                                                                        return §§pop();
                                                                        §§push(true);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr376);
                                                                     }
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               §§goto(addr370);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc5_);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(1);
                                                               if(_loc9_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           §§push(§§pop() + "-");
                                                                           if(_loc9_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() + (_loc5_ - 1));
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!_loc8_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§push(1);
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           §§goto(addr290);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                            §§goto(addr370);
                                                         }
                                                         §§goto(addr370);
                                                      }
                                                      addr349:
                                                      return §§pop();
                                                   }
                                                   addr290:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         addr293:
                                                         if(_loc7_ = §,4§.§5!=§(_loc4_ - 1 + "-1"))
                                                         {
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§push(_loc4_ - 1 + "-");
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() + _loc7_.levelsPerPage);
                                                               }
                                                               _loc3_ = §§pop();
                                                            }
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                   addr322:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§goto(addr330);
                                                      }
                                                   }
                                                   §§goto(addr376);
                                                }
                                                §§goto(addr370);
                                             }
                                             §§goto(addr293);
                                          }
                                       }
                                    }
                                    §§goto(addr209);
                                 }
                              }
                              §§goto(addr164);
                           }
                           addr376:
                           return false;
                        }
                        §§goto(addr164);
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr99);
            }
            §§goto(addr125);
         }
         §§goto(addr108);
      }
      
      public function §!!1§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §;0§() : Dictionary
      {
         return this.§#H§;
      }
   }
}
