package §1h§
{
   import §&! §.§3!§;
   import §<!+§.§2s§;
   import §<!+§.§[!!§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §9!1§ extends EventDispatcher
   {
      
      protected static const §'!K§:Number = 1000;
      
      protected static const §1!1§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §9!1§))
         {
            §'!K§ = 1000;
            do
            {
               §1!1§ = 60;
            }
            while(!(_loc1_ || §9!1§));
            
         }
      }
      
      protected var §=x§:Dictionary;
      
      protected var §+'§:Dictionary;
      
      protected var §1!'§:Dictionary;
      
      protected var §;!!§:Dictionary;
      
      protected var §;!'§:Boolean;
      
      protected var §;,§:String;
      
      protected var §6Q§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §9!1§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§6Q§ = param1;
               loop1:
               while(true)
               {
                  this.§=x§ = new Dictionary();
                  while(true)
                  {
                     this.§+'§ = new Dictionary();
                     addr75:
                     while(_loc2_ || _loc3_)
                     {
                        this.§1!'§ = new Dictionary();
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      private function §=%§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§`!A§));
            do
            {
               this.§;,§ = null;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §-!$§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§;,§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(!_loc2_)
                  {
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     §§push(false);
                     if(!(_loc2_ && param1))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     addr82:
                     return true;
                  }
                  return §§pop();
               }
               §§push(true);
               if(!_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr52);
            }
         }
         §§goto(addr82);
      }
      
      public function § N§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§1!1§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(!(_loc4_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(§§pop() / §1!1§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop() % §1!1§);
         }
         var _loc3_:int = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ < 10)
            {
               if(!_loc4_)
               {
                  §§push("");
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() + ":0");
                           if(!(_loc4_ && this))
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 addr100:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr143);
                              }
                           }
                           else
                           {
                              addr117:
                              §§push(_loc2_);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§goto(addr143);
                                 }
                                 §§goto(addr147);
                              }
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr100);
                  }
                  addr143:
                  §§push(§§pop() + ":");
                  if(!_loc4_)
                  {
                     addr147:
                     return _loc3_;
                  }
               }
               addr109:
               §§push("");
               if(_loc5_ || _loc1_)
               {
                  §§goto(addr117);
               }
               §§goto(addr147);
            }
         }
         §§goto(addr109);
      }
      
      public function §=!V§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3!§ = null;
         if(!(_loc3_ && param1))
         {
            if(this.§=x§[param1])
            {
               _loc2_ = this.§=x§[param1];
               addr42:
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function §%!?§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3!§ = null;
         if(_loc4_)
         {
            if(this.§+'§[param1])
            {
               addr37:
               _loc2_ = this.§+'§[param1];
               if(_loc4_ || _loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §'D§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§=!V§(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr100:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr101:
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr103:
                     }
                     else
                     {
                        loop5:
                        while(§§pop())
                        {
                           if(_loc2_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr84);
                              }
                              continue loop0;
                           }
                           addr85:
                           while(true)
                           {
                              break loop5;
                           }
                        }
                        while(true)
                        {
                           §§push(false);
                           if(_loc3_ && this)
                           {
                              addr84:
                           }
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           continue loop2;
                           return true;
                        }
                        addr72:
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §-!?§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§1!'§[param1] = param2;
         }
      }
      
      public function §4y§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§1!'§[param1] = param2;
         }
      }
      
      public function §!I§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3!§ = new §3!§(param2);
         if(_loc5_)
         {
            this.§=x§[param1] = _loc3_;
         }
      }
      
      public function §1!9§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3!§ = new §3!§(param2);
         if(_loc5_ || param2)
         {
            this.§+'§[param1] = _loc3_;
         }
      }
      
      public function §&!A§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§[!!§);
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(param2);
            if(!_loc4_)
            {
               if(§§pop() != -1)
               {
                  addr40:
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                     if(_loc4_)
                     {
                        addr67:
                        §§push(int(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(this.§=!V§(param1));
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr67);
                  }
               }
               return §§pop().§``§(§§pop(),§§pop());
            }
            §§goto(addr67);
         }
         §§goto(addr40);
      }
      
      public function §]W§(param1:§2s§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§^!!§())
         {
            if(!(_loc6_ && _loc2_))
            {
               §§push(_loc2_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(int(§§pop() + this.§=!V§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §!>§(param1:§2s§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§^!!§())
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(int(§§pop() + this.§&!A§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §[!R§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§2s§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               break;
            }
            if(§§pop() >= §[!!§.§@i§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = §[!!§.§,3§(_loc2_);
            if(!_loc5_)
            {
               §§push(this.§!>§(_loc3_));
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr102:
                     while(true)
                     {
                        addr64:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!(_loc5_ && this))
                           {
                              §§push(int(§§pop() + _loc4_));
                           }
                           if(!(_loc6_ || _loc2_))
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           _loc1_ = §§pop();
                        }
                        continue loop2;
                     }
                  }
               }
            }
            while(true)
            {
               _loc2_++;
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
               if(!(_loc5_ && this))
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr64);
               }
               §§goto(addr102);
            }
         }
         return §§pop();
      }
      
      public function §5!=§(param1:§2s§) : int
      {
         return param1.§^!!§().length * 3;
      }
      
      public function § do§(param1:§2s§) : int
      {
         return param1.§^!!§().length;
      }
      
      public function §]G§(param1:§2s§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§^!!§())
         {
            if(_loc7_ || param1)
            {
               if(this.§%!?§(_loc3_) == 100)
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
      
      public function get §+x§() : Dictionary
      {
         return this.§1!'§;
      }
      
      public function get §3!-§() : Dictionary
      {
         return this.§1!'§;
      }
      
      public function get §&!4§() : Boolean
      {
         return this.§;!'§;
      }
      
      public function set §&!4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!'§ = param1;
         }
      }
      
      public function get §9V§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §6^§() : String
      {
         return this.§;,§;
      }
      
      public function §^!?§(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§2s§ = null;
         var _loc7_:§2s§ = null;
         if(!(_loc8_ && this))
         {
            §§push(param1);
            loop0:
            while(§§pop() != null)
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!_loc8_)
                  {
                     if(_loc8_)
                     {
                        break;
                     }
                     if(§§pop() != §[!!§.§`k§)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§=!V§(param1));
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              loop4:
                              while(§§pop() <= §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§%!?§(param1));
                                    if(!(_loc9_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    §§push(0);
                                    if(_loc8_)
                                    {
                                       continue loop4;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc9_ || _loc2_)
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             §§push(true);
                                             if(!(_loc8_ && param1))
                                             {
                                                return §§pop();
                                             }
                                             addr103:
                                             if(_loc9_)
                                             {
                                                if(_loc9_)
                                                {
                                                   return §§pop();
                                                }
                                                addr132:
                                                return §§pop();
                                             }
                                             break;
                                          }
                                          break loop0;
                                       }
                                       if(_loc8_)
                                       {
                                          if(_loc9_ || _loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       if(!(_loc9_ || this))
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
                                    var _loc2_:Array = param1.split("-");
                                    if(_loc9_)
                                    {
                                       if(_loc2_.length == 2)
                                       {
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             §§push(int(parseInt(_loc2_[0])));
                                             if(!(_loc8_ && param1))
                                             {
                                                _loc4_ = §§pop();
                                                addr175:
                                                if(!_loc8_)
                                                {
                                                   §§push(int(parseInt(_loc2_[1])));
                                                }
                                                §§push((_loc6_ = §[!!§.§5S§(param1)).pageIndexes[0] == _loc4_);
                                                if(!_loc8_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§pop();
                                                         if(_loc9_ || _loc2_)
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
                                                                     addr224:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           addr227:
                                                                           §§push(true);
                                                                           if(!_loc8_)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(1);
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(§§pop() + "-");
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§pop() + (_loc5_ - 1));
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          if(_loc8_ && this)
                                                                                          {
                                                                                             addr293:
                                                                                             if(_loc7_ = §[!!§.§5S§(_loc4_ - 1 + "-1"))
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(_loc4_ - 1 + "-");
                                                                                                   if(!(_loc8_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                                   }
                                                                                                   _loc3_ = §§pop();
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr321:
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             §§push(this.§=!V§(_loc3_));
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr335:
                                                                                                §§push(0);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr341:
                                                                                                         §§push(true);
                                                                                                         if(!(_loc8_ && _loc2_))
                                                                                                         {
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr356);
                                                                                                      }
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                          addr356:
                                                                                          if(this.§%!?§(_loc3_) > 0)
                                                                                          {
                                                                                             if(!(_loc9_ || _loc3_))
                                                                                             {
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                             addr374:
                                                                                             §§push(true);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr282:
                                                                                       §§push(1);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr285:
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                §§goto(addr293);
                                                                                             }
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr282);
                                                                                 }
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr374);
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      addr349:
                                                      return §§pop();
                                                   }
                                                }
                                                §§goto(addr224);
                                             }
                                             _loc5_ = §§pop();
                                          }
                                          §§goto(addr175);
                                       }
                                       addr376:
                                       return false;
                                    }
                                    §§goto(addr175);
                                 }
                                 return §§pop();
                              }
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§goto(addr103);
                                 §§push(true);
                              }
                              else
                              {
                                 addr125:
                                 §§push(true);
                              }
                              §§goto(addr126);
                           }
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr132);
            §§push(false);
         }
         §§goto(addr125);
      }
   }
}
