package §?!3§
{
   import §+!B§.§<!M§;
   import §1!-§.§2n§;
   import §1!-§.§[4§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §`!K§ extends EventDispatcher
   {
      
      protected static const §%!,§:Number = 1000;
      
      protected static const §;t§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §%!,§ = 1000;
            if(!(_loc2_ && _loc2_))
            {
               addr43:
               §;t§ = 60;
            }
            return;
         }
         §§goto(addr43);
      }
      
      protected var §"!2§:Dictionary;
      
      protected var §6r§:Dictionary;
      
      protected var §?!F§:Dictionary;
      
      protected var §5!9§:Dictionary;
      
      protected var §^_§:Boolean;
      
      protected var §!!5§:String;
      
      protected var §56§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §`!K§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            this.§56§ = param1;
            this.§"!2§ = new Dictionary();
            this.§6r§ = new Dictionary();
         }
         this.§?!F§ = new Dictionary();
         if(_loc2_ || _loc3_)
         {
            this.§5!9§ = new Dictionary();
            this.§^_§ = false;
         }
      }
      
      private function §6!;§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§-0§));
            if(!(_loc3_ && _loc2_))
            {
               addr31:
               this.§!!5§ = null;
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §-!H§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§!!5§ == param1)
            {
               if(_loc2_ || _loc3_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr65:
                  if(this.mMightyEagleTimer.running)
                  {
                     if(!_loc3_)
                     {
                        addr71:
                        §§push(false);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr76);
                  }
                  §§push(true);
               }
               addr76:
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr71);
      }
      
      public function §,!6§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§;t§);
         if(_loc4_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() / §;t§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!(_loc5_ && _loc1_))
         {
            §§push(§§pop() % §;t§);
         }
         var _loc3_:int = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(_loc3_ < 10)
            {
               if(_loc4_)
               {
                  §§push("");
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc4_)
                     {
                        §§push(":0");
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr102:
                              §§push(§§pop() + §§pop());
                              if(!_loc5_)
                              {
                                 return §§pop();
                              }
                              addr109:
                              §§push(_loc2_);
                              if(!(_loc5_ && _loc1_))
                              {
                                 §§goto(addr117);
                              }
                              §§goto(addr125);
                           }
                           addr117:
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              addr121:
                              §§push(§§pop() + ":");
                              if(_loc4_)
                              {
                                 addr125:
                                 §§push(§§pop() + _loc3_);
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr102);
               }
               else
               {
                  addr106:
                  §§push("");
                  if(!_loc5_)
                  {
                     §§goto(addr109);
                  }
               }
               §§goto(addr125);
            }
         }
         §§goto(addr106);
      }
      
      public function §0!3§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!M§ = null;
         if(!(_loc4_ && param1))
         {
            if(this.§"!2§[param1])
            {
               addr41:
               _loc2_ = this.§"!2§[param1];
               if(!_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §3I§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!M§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§6r§[param1])
            {
               addr42:
               _loc2_ = this.§6r§[param1];
               if(_loc4_ || this)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§0!3§(param1));
            if(_loc3_ || _loc2_)
            {
               §§push(0);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() > §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              addr76:
                              §§push(this.§3I§(param1) > 0);
                              if(_loc3_ || param1)
                              {
                                 addr84:
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(true);
                                       if(_loc3_ || this)
                                       {
                                          §§goto(addr95);
                                       }
                                    }
                                    else
                                    {
                                       addr96:
                                       §§push(false);
                                    }
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr96);
                        }
                        return §§pop();
                     }
                     §§goto(addr84);
                  }
                  addr95:
                  return §§pop();
               }
            }
            §§goto(addr76);
         }
         §§goto(addr96);
      }
      
      public function §-l§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§?!F§[param1] = param2;
         }
      }
      
      public function §]0§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§5!9§[param1] = param2;
         }
      }
      
      public function §'`§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!M§ = new §<!M§(param2);
         if(!_loc5_)
         {
            this.§"!2§[param1] = _loc3_;
         }
      }
      
      public function §7z§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!M§ = new §<!M§(param2);
         if(!_loc5_)
         {
            this.§6r§[param1] = _loc3_;
         }
      }
      
      public function §%i§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§[4§);
         §§push(param1);
         if(_loc3_)
         {
            §§push(param2);
            if(!(_loc4_ && this))
            {
               if(§§pop() != -1)
               {
                  addr40:
                  §§push(param2);
                  if(!(_loc4_ && param2))
                  {
                     §§push(int(§§pop()));
                     if(_loc4_)
                     {
                     }
                     §§goto(addr58);
                  }
               }
               else
               {
                  §§push(this.§0!3§(param1));
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            addr58:
            return §§pop().§"r§(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public function §>U§(param1:§2n§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§=!N§())
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + this.§0!3§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §8!,§(param1:§2n§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§=!N§())
         {
            if(_loc6_ || _loc2_)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(int(§§pop() + this.§%i§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §`!E§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§2n§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && this))
            {
               if(§§pop() >= §[4§.§99§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = §[4§.§2A§(_loc2_);
               if(_loc6_ || _loc2_)
               {
                  §§push(this.§8!,§(_loc3_));
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                     if(_loc6_)
                     {
                        addr58:
                        _loc4_ = §§pop();
                        if(!(_loc5_ && this))
                        {
                           addr76:
                           §§push(_loc1_);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr84:
                              §§push(int(§§pop() + _loc4_));
                           }
                           _loc1_ = §§pop();
                           if(_loc6_)
                           {
                              _loc2_++;
                           }
                        }
                        continue;
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr58);
               }
               §§goto(addr76);
            }
            break;
         }
         return §§pop();
      }
      
      public function §-"§(param1:§2n§) : int
      {
         return param1.§=!N§().length * 3;
      }
      
      public function §]P§(param1:§2n§) : int
      {
         return param1.§=!N§().length;
      }
      
      public function §=Z§(param1:§2n§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=!N§())
         {
            if(!_loc7_)
            {
               if(this.§3I§(_loc3_) == 100)
               {
                  if(_loc6_ || _loc2_)
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §>G§() : Dictionary
      {
         return this.§?!F§;
      }
      
      public function get §^3§() : Boolean
      {
         return this.§^_§;
      }
      
      public function set §^3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§^_§ = param1;
         }
      }
      
      public function get §"p§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §-!0§() : String
      {
         return this.§!!5§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§2n§ = null;
         var _loc7_:§2n§ = null;
         §§push(param1);
         if(_loc9_ || _loc2_)
         {
            if(§§pop() == null)
            {
               if(!_loc8_)
               {
                  §§push(false);
                  if(!(_loc8_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr71:
                  §§push(true);
                  if(_loc8_ && _loc2_)
                  {
                     §§goto(addr111);
                  }
               }
               return §§pop();
            }
            §§push(param1);
            if(_loc9_)
            {
               if(§§pop() == §[4§.§<=§)
               {
                  if(!(_loc8_ && param1))
                  {
                     §§goto(addr71);
                  }
                  §§goto(addr111);
               }
               else
               {
                  §§push(this.§0!3§(param1));
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(0);
                     if(!_loc8_)
                     {
                        if(§§pop() > §§pop())
                        {
                           §§push(true);
                           if(!(_loc8_ && param1))
                           {
                              return §§pop();
                           }
                           §§goto(addr111);
                        }
                        else
                        {
                           addr108:
                           §§push(this.§3I§(param1));
                           §§push(0);
                        }
                        §§goto(addr111);
                     }
                     if(§§pop() > §§pop())
                     {
                        addr110:
                        addr111:
                        return §§pop();
                        §§push(true);
                     }
                     else
                     {
                        addr113:
                        var _loc2_:Array = param1.split("-");
                        if(!(_loc8_ && _loc3_))
                        {
                           if(_loc2_.length == 2)
                           {
                              if(_loc9_ || this)
                              {
                                 §§push(int(parseInt(_loc2_[0])));
                                 if(_loc9_ || param1)
                                 {
                                    _loc4_ = §§pop();
                                    addr173:
                                    if(_loc9_ || param1)
                                    {
                                       addr166:
                                       §§push(int(parseInt(_loc2_[1])));
                                    }
                                    §§push((_loc6_ = §[4§.§<%§(param1)).pageIndexes[0] == _loc4_);
                                    if(_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             addr195:
                                             §§pop();
                                             §§push(_loc5_);
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(1);
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc8_)
                                                   {
                                                      addr215:
                                                      if(§§pop())
                                                      {
                                                         §§push(true);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            return §§pop();
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
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§goto(addr237);
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  addr329:
                                                                  return §§pop();
                                                                  §§push(true);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr260:
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc7_ = §[4§.§<%§(_loc4_ - 1 + "-1"))
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(_loc4_ - 1 + "-");
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr284);
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         addr237:
                                                         §§push(§§pop() + "-");
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            §§push(§§pop() + (_loc5_ - 1));
                                                         }
                                                         §§push(§§pop());
                                                         if(!_loc8_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr284:
                                                            §§push(_loc3_);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(this.§0!3§(_loc3_));
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  addr308:
                                                                  §§push(0);
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        §§push(true);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§goto(addr320);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr329);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr325);
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               addr325:
                                                               if(this.§3I§(_loc3_) > 0)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§goto(addr330);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr329);
                                                   }
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr325);
                                          }
                                          addr320:
                                          return §§pop();
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr195);
                                 }
                                 _loc5_ = §§pop();
                                 §§goto(addr173);
                              }
                              §§goto(addr166);
                           }
                           addr330:
                           return false;
                        }
                        §§goto(addr173);
                     }
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr113);
            §§goto(addr111);
         }
         §§goto(addr113);
      }
      
      public function § v§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §,7§(param1:String) : void
      {
      }
      
      public function §'!<§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §[C§() : Dictionary
      {
         return this.§?!F§;
      }
   }
}
