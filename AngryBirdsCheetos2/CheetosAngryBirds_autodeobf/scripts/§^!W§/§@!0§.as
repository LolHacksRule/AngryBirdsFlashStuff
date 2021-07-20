package §^!W§
{
   import §!V§.§!!i§;
   import §`![§.§1!K§;
   import §`![§.§@;§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §@!0§ extends EventDispatcher
   {
      
      protected static const §<!R§:Number = 1000;
      
      protected static const §"!i§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §<!R§ = 1000;
            do
            {
               §"!i§ = 60;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      protected var §<!U§:Dictionary;
      
      protected var §+!`§:Dictionary;
      
      protected var §+!R§:Dictionary;
      
      protected var §<!K§:Dictionary;
      
      protected var §'!a§:Boolean;
      
      protected var §^9§:String;
      
      protected var §0c§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §@!0§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§0c§ = param1;
            while(true)
            {
               this.§<!U§ = new Dictionary();
               addr85:
               while(!_loc2_)
               {
                  continue loop0;
               }
            }
         }
      }
      
      private function §0=§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§'!6§));
            do
            {
               this.§^9§ = null;
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §?!Z§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§^9§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr61:
                        §§push(false);
                        if(_loc2_ || this)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr86:
                        return true;
                     }
                     return §§pop();
                  }
                  if(_loc2_)
                  {
                     addr81:
                     break;
                  }
               }
               §§push(true);
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
               §§goto(addr61);
            }
            §§goto(addr86);
         }
         §§goto(addr81);
      }
      
      public function §^O§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§"!i§);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(!_loc4_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() / §"!i§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(_loc5_)
            {
               §§push(§§pop() % §"!i§);
            }
            var _loc3_:int = §§pop();
            if(_loc5_ || _loc3_)
            {
               if(_loc3_ < 10)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push("");
                     if(_loc5_ || _loc1_)
                     {
                        §§push(_loc2_);
                        if(_loc5_ || _loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() + ":0");
                              if(_loc5_ || _loc3_)
                              {
                                 addr107:
                                 §§push(_loc3_);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    addr115:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr158);
                                 }
                              }
                              §§goto(addr162);
                           }
                           else
                           {
                              addr132:
                              §§push(_loc2_);
                              if(_loc5_ || _loc1_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§goto(addr158);
                                 }
                                 addr158:
                                 §§push(§§pop() + ":");
                                 if(!_loc4_)
                                 {
                                    addr162:
                                    return §§pop() + _loc3_;
                                 }
                              }
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     addr124:
                     §§push("");
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr132);
                     }
                  }
                  §§goto(addr162);
               }
            }
            §§goto(addr124);
         }
         §§goto(addr31);
      }
      
      public function §9!C§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!!i§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§<!U§[param1])
            {
               _loc2_ = this.§<!U§[param1];
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
      
      public function §+!H§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!!i§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§+!`§[param1])
            {
               _loc2_ = this.§+!`§[param1];
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
      
      public function § y§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§9!C§(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr86:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr87:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(true);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr25:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc3_)
                                       {
                                          break loop5;
                                       }
                                    }
                                 }
                                 addr71:
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                    addr89:
                                 }
                                 return §§pop();
                              }
                              addr68:
                           }
                           §§goto(addr25);
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue;
                        addr56:
                     }
                     §§goto(addr89);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §2!;§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+!R§[param1] = param2;
         }
      }
      
      public function §21§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§<!K§[param1] = param2;
         }
      }
      
      public function §6!X§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!!i§ = new §!!i§(param2);
         if(_loc4_ || _loc3_)
         {
            this.§<!U§[param1] = _loc3_;
         }
      }
      
      public function §,n§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!!i§ = new §!!i§(param2);
         if(_loc5_)
         {
            this.§+!`§[param1] = _loc3_;
         }
      }
      
      public function §[![§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§@;§);
         §§push(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(param2);
            if(_loc4_)
            {
               if(§§pop() != -1)
               {
                  addr41:
                  §§push(param2);
                  if(!(_loc3_ && param2))
                  {
                     addr49:
                     §§push(int(§§pop()));
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr69);
                  }
               }
               else
               {
                  §§push(this.§9!C§(param1));
                  if(!_loc3_)
                  {
                     §§goto(addr69);
                  }
               }
               addr69:
               return §§pop().§@T§(§§pop(),int(§§pop()));
            }
            §§goto(addr49);
         }
         §§goto(addr41);
      }
      
      public function §4!L§(param1:§1!K§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§4%§())
         {
            if(_loc7_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc7_ || this)
               {
                  §§push(int(§§pop() + this.§9!C§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §=s§(param1:§1!K§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§4%§())
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push(int(§§pop() + this.§[![§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §5!U§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§1!K§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ || this))
            {
               break;
            }
            if(§§pop() >= §@;§.§7!I§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = §@;§.§default§(_loc2_);
            if(!(_loc6_ && this))
            {
               §§push(this.§=s§(_loc3_));
               if(!(_loc6_ && _loc1_))
               {
                  §§push(int(§§pop()));
               }
               loop1:
               while(true)
               {
                  _loc4_ = §§pop();
                  addr96:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr46);
            }
         }
         return §§pop();
      }
      
      public function §4!6§(param1:§1!K§) : int
      {
         return param1.§4%§().length * 3;
      }
      
      public function §@!6§(param1:§1!K§) : int
      {
         return param1.§4%§().length;
      }
      
      public function §4!d§(param1:§1!K§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4%§())
         {
            if(_loc6_ || param1)
            {
               if(this.§+!H§(_loc3_) == 100)
               {
                  if(_loc6_)
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §^!D§() : Dictionary
      {
         return this.§+!R§;
      }
      
      public function get §'!e§() : Boolean
      {
         return this.§'!a§;
      }
      
      public function set §'!e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§'!a§ = param1;
         }
      }
      
      public function get §3!Q§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §&i§() : String
      {
         return this.§^9§;
      }
      
      public function §3!@§(param1:String) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§1!K§ = null;
         var _loc7_:§1!K§ = null;
         if(!(_loc9_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc9_ && this))
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc9_)
                     {
                        if(§§pop() != §@;§.§7%§)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§9!C§(param1));
                              loop2:
                              while(true)
                              {
                                 §§push(0);
                                 loop3:
                                 while(§§pop() <= §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§+!H§(param1));
                                       if(_loc8_ || this)
                                       {
                                          §§push(0);
                                          if(_loc8_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc8_ || _loc2_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      break loop3;
                                                   }
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(true);
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr85);
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                }
                                                if(!_loc8_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   addr96:
                                                   if(_loc8_ || this)
                                                   {
                                                      §§push(true);
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                if(false)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             §§push(param1);
                                             break loop0;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    if(!_loc9_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr121);
                                 }
                                 addr85:
                                 return §§pop();
                              }
                           }
                           addr120:
                           addr121:
                           return §§pop();
                           §§push(false);
                        }
                        §§goto(addr96);
                     }
                     break;
                  }
               }
               §§goto(addr120);
            }
            var _loc2_:Array = §§pop().split("-");
            if(_loc8_)
            {
               if(_loc2_.length == 2)
               {
                  if(!_loc9_)
                  {
                     §§push(int(parseInt(_loc2_[0])));
                     if(_loc8_)
                     {
                        _loc4_ = §§pop();
                        §§goto(addr159);
                     }
                     _loc5_ = §§pop();
                  }
                  addr159:
                  if(!(_loc9_ && _loc3_))
                  {
                     addr152:
                     §§push(int(parseInt(_loc2_[1])));
                  }
                  §§push((_loc6_ = §@;§.§4!`§(param1)).pageIndexes[0] == _loc4_);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || param1)
                        {
                           §§pop();
                           if(_loc8_)
                           {
                              §§push(_loc5_);
                              if(!_loc9_)
                              {
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc8_)
                                    {
                                       addr203:
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(true);
                                             if(_loc8_ || this)
                                             {
                                                §§goto(addr214);
                                             }
                                          }
                                          else
                                          {
                                             addr217:
                                             §§push(_loc5_);
                                             if(_loc8_ || this)
                                             {
                                                §§push(1);
                                                if(_loc8_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() + "-");
                                                            if(_loc8_ || this)
                                                            {
                                                               §§push(§§pop() + (_loc5_ - 1));
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc8_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                      }
                                                      §§goto(addr340);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc8_ || param1)
                                                      {
                                                         addr261:
                                                         §§push(1);
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  if(_loc7_ = §@;§.§4!`§(_loc4_ - 1 + "-1"))
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(_loc4_ - 1 + "-");
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop() + _loc7_.levelsPerPage);
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                     }
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            addr296:
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  §§push(this.§9!C§(_loc3_));
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     addr314:
                                                                     §§push(0);
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        addr322:
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(!(_loc8_ || _loc3_))
                                                                           {
                                                                              §§goto(addr360);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr340:
                                                                           if(this.§+!H§(_loc3_) > 0)
                                                                           {
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr359);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr360);
                                                                              }
                                                                           }
                                                                           §§goto(addr360);
                                                                        }
                                                                        §§goto(addr360);
                                                                     }
                                                                  }
                                                                  §§goto(addr340);
                                                               }
                                                               §§push(true);
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr333);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr359);
                                                               }
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                   }
                                                }
                                                §§goto(addr340);
                                             }
                                             §§goto(addr314);
                                          }
                                          addr333:
                                          return §§pop();
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr340);
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr217);
                        }
                        addr359:
                        return true;
                     }
                     §§goto(addr203);
                  }
                  addr214:
                  return §§pop();
               }
               addr360:
               return false;
            }
            §§goto(addr152);
         }
         §§goto(addr120);
      }
      
      public function §`R§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function §2!§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §,e§() : Dictionary
      {
         return this.§+!R§;
      }
   }
}
