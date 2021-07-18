package §<Y§
{
   import §-!0§.§1^§;
   import §-!0§.§4!N§;
   import §8!Q§.§2!7§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §;!i§ extends EventDispatcher
   {
      
      protected static const §]!+§:Number = 1000;
      
      protected static const §#!l§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §;!i§)
         {
            §]!+§ = 1000;
            if(_loc2_)
            {
               addr29:
               §#!l§ = 60;
            }
            return;
         }
         §§goto(addr29);
      }
      
      protected var §[!q§:Dictionary;
      
      protected var §+!>§:Dictionary;
      
      protected var §break§:Dictionary;
      
      protected var §+§:Dictionary;
      
      protected var §2'§:Boolean;
      
      protected var §,!B§:String;
      
      protected var §1!D§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §;!i§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super();
         if(!(_loc2_ && param1))
         {
            this.§1!D§ = param1;
            if(!(_loc2_ && _loc3_))
            {
               this.§[!q§ = new Dictionary();
               if(!_loc2_)
               {
                  this.§+!>§ = new Dictionary();
               }
               §§goto(addr66);
            }
            §§goto(addr76);
         }
         addr66:
         this.§break§ = new Dictionary();
         if(_loc3_)
         {
            this.§+§ = new Dictionary();
            addr76:
            this.§2'§ = false;
         }
      }
      
      private function §,!2§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§>W§));
            if(_loc3_)
            {
               addr42:
               this.§,!B§ = null;
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function §&!R§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§,!B§ == param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr55:
                  §§push(true);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr81:
                  §§push(true);
               }
               §§goto(addr82);
            }
            else if(this.mMightyEagleTimer.running)
            {
               if(!(_loc2_ && this))
               {
                  §§push(false);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr81);
               }
               addr82:
               return §§pop();
            }
            §§goto(addr81);
         }
         §§goto(addr55);
      }
      
      public function §56§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§#!l§);
         if(_loc5_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(!(_loc4_ && this))
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() / §#!l§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() % §#!l§);
            }
            var _loc3_:int = §§pop();
            if(_loc5_ || _loc3_)
            {
               if(_loc3_ < 10)
               {
                  if(_loc5_)
                  {
                     addr79:
                     §§push("");
                     if(_loc5_ || _loc1_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           §§push(":0");
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() + §§pop());
                           }
                           else
                           {
                              addr141:
                              return §§pop() + §§pop() + _loc3_;
                              addr140:
                           }
                        }
                        §§goto(addr140);
                     }
                     §§push(_loc3_);
                     if(!(_loc4_ && _loc3_))
                     {
                        return §§pop() + §§pop();
                     }
                  }
                  else
                  {
                     addr125:
                     §§push("");
                     §§push(_loc2_);
                     if(_loc5_ || _loc1_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_)
                        {
                           §§goto(addr140);
                           §§push(":");
                        }
                        §§goto(addr141);
                     }
                  }
                  §§goto(addr141);
               }
               §§goto(addr125);
            }
            §§goto(addr79);
         }
         §§goto(addr31);
      }
      
      public function §!7§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2!7§ = null;
         if(_loc4_ || this)
         {
            if(this.§[!q§[param1])
            {
               addr42:
               _loc2_ = this.§[!q§[param1];
               if(!(_loc3_ && param1))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function §8!O§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2!7§ = null;
         if(!_loc3_)
         {
            if(this.§+!>§[param1])
            {
               addr37:
               _loc2_ = this.§+!>§[param1];
               if(_loc4_ || param1)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§!7§(param1));
            if(!(_loc2_ && _loc3_))
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(_loc3_ || param1)
                           {
                              addr76:
                              §§push(this.§8!O§(param1) > 0);
                              if(!_loc2_)
                              {
                                 addr79:
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       §§push(true);
                                       if(!_loc2_)
                                       {
                                          §§goto(addr90);
                                       }
                                       else
                                       {
                                          §§goto(addr92);
                                       }
                                    }
                                    §§goto(addr92);
                                 }
                              }
                              §§goto(addr92);
                           }
                           §§push(false);
                        }
                        addr92:
                        return §§pop();
                     }
                     §§goto(addr79);
                  }
                  addr90:
                  return §§pop();
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §#+§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§break§[param1] = param2;
         }
      }
      
      public function §&,§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§break§[param1] = param2;
         }
      }
      
      public function §8!f§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2!7§ = new §2!7§(param2);
         if(!(_loc5_ && param2))
         {
            this.§[!q§[param1] = _loc3_;
         }
      }
      
      public function §]!L§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2!7§ = new §2!7§(param2);
         if(_loc4_)
         {
            this.§+!>§[param1] = _loc3_;
         }
      }
      
      public function §"!%§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§1^§);
         §§push(param1);
         if(_loc4_)
         {
            §§push(param2);
            if(!(_loc3_ && param2))
            {
               if(§§pop() != -1)
               {
                  addr51:
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc4_ || param2))
                     {
                        addr68:
                        §§push(int(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(this.§!7§(param1));
                  if(_loc4_)
                  {
                     §§goto(addr68);
                  }
               }
            }
            return §§pop().§>6§(§§pop(),§§pop());
         }
         §§goto(addr51);
      }
      
      public function §,!6§(param1:§4!N§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§ >§())
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + this.§!7§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §!k§(param1:§4!N§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§ >§())
         {
            if(!(_loc6_ && _loc2_))
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + this.§"!%§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §#!p§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§4!N§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() >= §1^§.§9!d§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = §1^§.§?!0§(_loc2_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(this.§!k§(_loc3_));
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           addr75:
                           §§push(_loc1_);
                           if(_loc5_)
                           {
                              addr81:
                              _loc1_ = §§pop() + _loc4_;
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr81);
                        }
                        _loc2_++;
                        continue;
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr75);
            }
            break;
         }
         return §§pop();
      }
      
      public function §null §(param1:§4!N§) : int
      {
         return param1.§ >§().length * 3;
      }
      
      public function §<3§(param1:§4!N§) : int
      {
         return param1.§ >§().length;
      }
      
      public function §]!-§(param1:§4!N§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ >§())
         {
            if(!(_loc6_ && _loc3_))
            {
               if(this.§8!O§(_loc3_) == 100)
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
      
      public function get §3%§() : Dictionary
      {
         return this.§break§;
      }
      
      public function get §1h§() : Dictionary
      {
         return this.§break§;
      }
      
      public function get §throw§() : Boolean
      {
         return this.§2'§;
      }
      
      public function set §throw§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§2'§ = param1;
         }
      }
      
      public function get §!P§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §`!%§() : String
      {
         return this.§,!B§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§4!N§ = null;
         var _loc7_:§4!N§ = null;
         if(_loc8_ || _loc2_)
         {
            §§push(param1);
            if(_loc8_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc9_)
                  {
                     §§push(false);
                     if(_loc8_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr109:
                     §§push(true);
                     if(_loc9_ && _loc3_)
                     {
                        §§goto(addr126);
                     }
                  }
                  return §§pop();
               }
               addr59:
               §§push(param1);
               if(_loc8_)
               {
                  if(§§pop() == §1^§.§;!8§)
                  {
                     if(_loc8_ || param1)
                     {
                        §§push(true);
                        if(!(_loc9_ && _loc2_))
                        {
                           return §§pop();
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr126);
                  }
                  §§push(this.§!7§(param1));
                  if(_loc8_ || _loc3_)
                  {
                     §§push(0);
                     if(_loc8_ || _loc2_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              §§goto(addr109);
                           }
                        }
                        else
                        {
                           addr124:
                           if(this.§8!O§(param1) > 0)
                           {
                              addr126:
                              return §§pop();
                              §§push(true);
                           }
                        }
                        addr128:
                        var _loc2_:Array = param1.split("-");
                        if(!(_loc9_ && this))
                        {
                           if(_loc2_.length == 2)
                           {
                              if(!_loc9_)
                              {
                                 §§push(int(parseInt(_loc2_[0])));
                                 if(!(_loc9_ && this))
                                 {
                                    _loc4_ = §§pop();
                                    addr178:
                                    if(_loc8_)
                                    {
                                       §§push(int(parseInt(_loc2_[1])));
                                    }
                                    §§push((_loc6_ = §1^§.§['§(param1)).pageIndexes[0] == _loc4_);
                                    if(_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc8_ || _loc2_)
                                          {
                                             §§pop();
                                             §§push(_loc5_);
                                             if(_loc8_)
                                             {
                                                §§push(1);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      addr215:
                                                      if(§§pop())
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            §§push(true);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§goto(addr226);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr341:
                                                            §§push(true);
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc9_)
                                                         {
                                                            addr230:
                                                            §§push(1);
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        §§push(§§pop() + "-");
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() + (_loc5_ - 1));
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr300:
                                                                              §§push(_loc3_);
                                                                           }
                                                                           §§goto(addr341);
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              addr304:
                                                                              §§push(this.§!7§(_loc3_));
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr319:
                                                                                 §§push(0);
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    addr327:
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             addr342:
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr343);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr339:
                                                                                       §§push(this.§8!O§(_loc3_));
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§goto(addr341);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr343);
                                                                                 }
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                                  §§goto(addr339);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr266:
                                                                     §§push(1);
                                                                     if(_loc8_)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc7_ = §1^§.§['§(_loc4_ - 1 + "-1"))
                                                                              {
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    §§push(_loc4_ - 1 + "-");
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                   }
                                                   addr333:
                                                   return §§pop();
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr230);
                                          }
                                          addr226:
                                          return §§pop();
                                       }
                                    }
                                    §§goto(addr215);
                                 }
                                 _loc5_ = §§pop();
                              }
                              §§goto(addr178);
                           }
                           addr343:
                           return false;
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr128);
               §§goto(addr126);
            }
            §§goto(addr128);
         }
         §§goto(addr59);
      }
      
      public function § true§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
   }
}
