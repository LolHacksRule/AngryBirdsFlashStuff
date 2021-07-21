package §'j§
{
   import §<!1§.§9!=§;
   import §<i§.§3!l§;
   import §<i§.§`!r§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §##§ extends EventDispatcher
   {
      
      protected static const §0%§:Number = 1000;
      
      protected static const §"t§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0%§ = 1000;
            do
            {
               §"t§ = 60;
            }
            while(!(_loc1_ || §##§));
            
         }
      }
      
      protected var §8;§:Dictionary;
      
      protected var §%!,§:Dictionary;
      
      protected var §9_§:Dictionary;
      
      protected var §4!R§:Dictionary;
      
      protected var §8J§:Boolean;
      
      protected var §^"2§:String;
      
      protected var §[!]§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §##§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§[!]§ = param1;
               loop1:
               while(true)
               {
                  this.§8;§ = new Dictionary();
                  while(true)
                  {
                     this.§%!,§ = new Dictionary();
                     continue loop1;
                     addr43:
                     if(_loc3_ || this)
                     {
                        loop6:
                        while(true)
                        {
                           this.§8J§ = false;
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr66:
                           while(_loc3_ || this)
                           {
                              §§goto(addr43);
                              continue loop6;
                           }
                           while(!(_loc2_ && _loc2_))
                           {
                              this.§4!R§ = new Dictionary();
                              §§goto(addr36);
                           }
                           addr36:
                           continue loop1;
                        }
                        return;
                        addr60:
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §+"3§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§5t§));
            do
            {
               this.§^"2§ = null;
            }
            while(_loc2_);
            
         }
      }
      
      public function §,!B§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§^"2§ == param1)
            {
               if(_loc2_ || this)
               {
                  return true;
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr53:
                     while(this.mMightyEagleTimer.running)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        addr64:
                        if(!_loc3_)
                        {
                           §§goto(addr63);
                        }
                        continue loop0;
                     }
                     §§push(true);
                     if(_loc3_ && _loc2_)
                     {
                        addr63:
                        return false;
                     }
                     if(_loc2_ || param1)
                     {
                        return §§pop();
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr64);
      }
      
      public function §>!W§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§"t§);
         if(!_loc5_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc4_)
         {
            §§push(§§pop() / §"t§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() % §"t§);
         }
         var _loc3_:int = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ < 10)
            {
               if(!(_loc5_ && _loc2_))
               {
                  §§push("");
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           §§push(§§pop() + ":0");
                           if(_loc4_)
                           {
                              §§push(_loc3_);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ || this))
                                 {
                                    §§goto(addr138);
                                 }
                              }
                              else
                              {
                                 addr114:
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr117:
                                    §§push(§§pop() + ":");
                                    if(_loc4_ || _loc3_)
                                    {
                                    }
                                    §§goto(addr138);
                                 }
                                 addr138:
                                 return §§pop();
                                 §§push(§§pop() + _loc3_);
                              }
                              §§goto(addr138);
                           }
                           return §§pop();
                        }
                        addr111:
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr117);
               }
               else
               {
                  addr103:
                  §§push("");
                  if(!(_loc5_ && _loc1_))
                  {
                     §§goto(addr111);
                  }
               }
               §§goto(addr138);
            }
         }
         §§goto(addr103);
      }
      
      public function §="?§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9!=§ = null;
         if(!_loc3_)
         {
            if(this.§8;§[param1])
            {
               addr37:
               _loc2_ = this.§8;§[param1];
               if(!(_loc3_ && _loc3_))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §6!G§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9!=§ = null;
         if(!_loc3_)
         {
            if(this.§%!,§[param1])
            {
               _loc2_ = this.§%!,§[param1];
               addr37:
               if(!_loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §]"9§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§="?§(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr111:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr112:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(true);
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr96:
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 §§push(false);
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    break loop6;
                                 }
                                 continue loop6;
                              }
                           }
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 break loop5;
                              }
                           }
                        }
                        return §§pop();
                        addr71:
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
         §§goto(addr96);
      }
      
      public function §^!l§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§9_§[param1] = param2;
         }
      }
      
      public function §@"'§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§4!R§[param1] = param2;
         }
      }
      
      public function §0!Y§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§9!=§ = new §9!=§(param2);
         if(!(_loc5_ && param2))
         {
            this.§8;§[param1] = _loc3_;
         }
      }
      
      public function §;"6§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§9!=§ = new §9!=§(param2);
         if(!(_loc5_ && _loc3_))
         {
            this.§%!,§[param1] = _loc3_;
         }
      }
      
      public function §6!I§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§`!r§);
         §§push(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(param2);
            if(_loc4_ || this)
            {
               if(§§pop() != -1)
               {
                  addr46:
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     addr73:
                     §§push(int(§§pop()));
                  }
               }
               else
               {
                  §§push(this.§="?§(param1));
                  if(!(_loc3_ && param2))
                  {
                     §§goto(addr73);
                  }
               }
            }
            return §§pop().§%!g§(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      public function §[!i§(param1:§3!l§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§ "?§())
         {
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(int(§§pop() + this.§="?§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function § 8§(param1:§3!l§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§ "?§())
         {
            if(!(_loc6_ && _loc2_))
            {
               §§push(_loc2_);
               if(_loc7_ || param1)
               {
                  §§push(int(§§pop() + this.§6!I§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §9"3§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§3!l§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc6_ || _loc2_))
            {
               break;
            }
            if(§§pop() >= §`!r§.§1!o§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = §`!r§.§]-§(_loc2_);
            if(_loc6_)
            {
               §§push(this.§ 8§(_loc3_));
               if(!(_loc5_ && _loc3_))
               {
                  §§push(int(§§pop()));
               }
               loop1:
               while(true)
               {
                  _loc4_ = §§pop();
                  addr87:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr59);
            }
         }
         return §§pop();
      }
      
      public function §7!z§(param1:§3!l§) : int
      {
         return param1.§ "?§().length * 3;
      }
      
      public function §?!Y§(param1:§3!l§) : int
      {
         return param1.§ "?§().length;
      }
      
      public function §3k§(param1:§3!l§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ "?§())
         {
            if(_loc6_ || _loc3_)
            {
               if(this.§6!G§(_loc3_) != 100)
               {
                  continue;
               }
               if(_loc7_ && param1)
               {
                  continue;
               }
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function get §>">§() : Dictionary
      {
         return this.§9_§;
      }
      
      public function get §3!I§() : Boolean
      {
         return this.§8J§;
      }
      
      public function set §3!I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§8J§ = param1;
         }
      }
      
      public function get §&F§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §4"$§() : String
      {
         return this.§^"2§;
      }
      
      public function §%!a§(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§3!l§ = null;
         var _loc7_:§3!l§ = null;
         if(_loc9_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != null; if(_loc8_ && _loc3_)
            {
               continue;
            },if(§§pop() != §`!r§.§2!l§)
            {
               loop2:
               while(true)
               {
                  §§push(this.§="?§(param1));
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     loop4:
                     while(§§pop() <= §§pop())
                     {
                        while(true)
                        {
                           §§push(this.§6!G§(param1));
                           if(!_loc9_)
                           {
                              continue loop3;
                           }
                           §§push(0);
                           if(!_loc9_)
                           {
                              continue loop4;
                           }
                           if(§§pop() > §§pop())
                           {
                              if(_loc9_)
                              {
                                 break loop2;
                              }
                              if(!(_loc9_ || this))
                              {
                                 if(_loc8_ && _loc3_)
                                 {
                                    §§push(true);
                                 }
                                 else
                                 {
                                    addr108:
                                 }
                                 continue;
                                 break;
                              }
                              if(!_loc9_)
                              {
                                 break loop4;
                              }
                              if(!_loc9_)
                              {
                                 continue loop2;
                              }
                              if(false)
                              {
                                 continue loop2;
                              }
                           }
                           §§goto(addr120);
                           §§push(param1);
                        }
                        if(!_loc8_)
                        {
                           return §§pop();
                        }
                        addr117:
                        return §§pop();
                     }
                     if(!_loc8_)
                     {
                        addr78:
                        §§push(true);
                        if(_loc9_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        §§goto(addr89);
                     }
                     §§goto(addr109);
                  }
               }
               if(!_loc9_)
               {
                  break;
               }
               §§push(true);
               if(!(_loc8_ && this))
               {
                  return §§pop();
               }
               §§goto(addr78);
            },§§goto(addr108))
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc9_ || param1)
                  {
                     continue loop0;
                  }
                  addr120:
                  var _loc2_:Array = §§pop().split("-");
                  if(!(_loc8_ && _loc3_))
                  {
                     if(_loc2_.length == 2)
                     {
                        if(!_loc8_)
                        {
                           §§push(int(parseInt(_loc2_[0])));
                           if(_loc9_)
                           {
                              _loc4_ = §§pop();
                              addr155:
                              if(!_loc8_)
                              {
                                 addr148:
                                 §§push(int(parseInt(_loc2_[1])));
                              }
                              §§push((_loc6_ = §`!r§.§6!8§(param1)).pageIndexes[0] == _loc4_);
                              if(!_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc9_ || this)
                                    {
                                       §§pop();
                                       if(_loc9_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc8_)
                                          {
                                             §§push(1);
                                             if(_loc9_ || param1)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc8_)
                                                {
                                                   addr204:
                                                   if(§§pop())
                                                   {
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(true);
                                                         if(_loc9_)
                                                         {
                                                            §§goto(addr215);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr352);
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                   §§push(_loc5_);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(1);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  §§goto(addr240);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§push(1);
                                                               if(!(_loc8_ && _loc2_))
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§goto(addr283);
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                         }
                                                         §§goto(addr352);
                                                      }
                                                      §§goto(addr338);
                                                   }
                                                   §§goto(addr330);
                                                   §§goto(addr352);
                                                }
                                                addr215:
                                                return §§pop();
                                             }
                                             §§goto(addr352);
                                          }
                                          addr240:
                                          §§push(§§pop() + "-");
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() + (_loc5_ - 1));
                                          }
                                          §§push(§§pop());
                                          if(_loc9_ || param1)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc8_ && this)
                                             {
                                                addr283:
                                                if(_loc7_ = §`!r§.§6!8§(_loc4_ - 1 + "-1"))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc4_ - 1 + "-");
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§push(§§pop() + _loc7_.levelsPerPage);
                                                      }
                                                      _loc3_ = §§pop();
                                                   }
                                                }
                                             }
                                             addr311:
                                             §§push(_loc3_);
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc9_ || this)
                                             {
                                                addr320:
                                                §§push(this.§="?§(_loc3_));
                                                if(_loc9_ || this)
                                                {
                                                   addr330:
                                                   §§push(0);
                                                   if(_loc9_ || this)
                                                   {
                                                      addr338:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §§push(true);
                                                            if(_loc9_)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr369);
                                                         }
                                                         addr370:
                                                         return §§pop();
                                                      }
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                addr352:
                                                if(this.§6!G§(_loc3_) > 0)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr371);
                                                   }
                                                   addr369:
                                                   §§push(true);
                                                }
                                                §§goto(addr371);
                                             }
                                             §§goto(addr369);
                                          }
                                          §§goto(addr371);
                                       }
                                       §§goto(addr320);
                                    }
                                 }
                              }
                              §§goto(addr204);
                           }
                           _loc5_ = §§pop();
                           §§goto(addr155);
                        }
                        §§goto(addr148);
                     }
                     addr371:
                     return false;
                  }
                  §§goto(addr155);
               }
            }
            §§goto(addr117);
            §§push(false);
         }
         §§goto(addr78);
      }
      
      public function §[,§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §5! §(param1:String) : void
      {
      }
      
      public function §1!#§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §?!`§() : Dictionary
      {
         return this.§9_§;
      }
   }
}
