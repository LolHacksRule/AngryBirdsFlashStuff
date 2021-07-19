package §`!y§
{
   import §"v§.§"! §;
   import §"v§.§3!w§;
   import §'@§.§^J§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §,!u§ extends EventDispatcher
   {
      
      protected static const §6"6§:Number = 1000;
      
      protected static const §0w§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6"6§ = 1000;
            do
            {
               §0w§ = 60;
            }
            while(_loc2_);
            
         }
      }
      
      protected var §>!$§:Dictionary;
      
      protected var §2!1§:Dictionary;
      
      protected var §'"-§:Dictionary;
      
      protected var §1'§:Dictionary;
      
      protected var §!h§:Boolean;
      
      protected var §@!N§:String;
      
      protected var §#y§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §,!u§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§#y§ = param1;
            while(true)
            {
               this.§>!$§ = new Dictionary();
               addr92:
               while(!_loc2_)
               {
                  this.§2!1§ = new Dictionary();
                  continue loop0;
               }
            }
         }
      }
      
      private function §5!N§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§=c§));
         }
         do
         {
            this.§@!N§ = null;
         }
         while(!_loc3_);
         
      }
      
      public function §'o§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§@!N§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(_loc3_ || param1)
                  {
                     addr60:
                     §§push(false);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc3_ || _loc3_)
                     {
                        addr87:
                        break;
                     }
                     addr92:
                     return true;
                  }
                  return §§pop();
               }
               §§push(true);
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop();
               }
               §§goto(addr60);
            }
            §§goto(addr92);
         }
         §§goto(addr87);
      }
      
      public function §^!G§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§0w§);
         if(!_loc4_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(§§pop() / §0w§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!_loc4_)
         {
            §§push(§§pop() % §0w§);
         }
         var _loc3_:int = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ < 10)
            {
               if(_loc5_)
               {
                  §§push("");
                  if(_loc5_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() + ":0");
                           if(_loc5_)
                           {
                              addr77:
                              §§push(_loc3_);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§goto(addr93);
                                 }
                                 else
                                 {
                                    addr97:
                                    §§push(_loc2_);
                                    if(_loc4_ && this)
                                    {
                                    }
                                    §§goto(addr129);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() + ":");
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr129);
                              }
                              addr129:
                              return §§pop() + §§pop();
                              §§push(_loc3_);
                           }
                           addr93:
                           return §§pop();
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr77);
               }
               else
               {
                  addr94:
                  §§push("");
                  if(_loc5_)
                  {
                     §§goto(addr97);
                  }
               }
               §§goto(addr97);
            }
         }
         §§goto(addr94);
      }
      
      public function §%"0§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§^J§ = null;
         if(!_loc4_)
         {
            if(this.§>!$§[param1])
            {
               addr36:
               _loc2_ = this.§>!$§[param1];
               if(!(_loc4_ && _loc2_))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr36);
      }
      
      public function §2?§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^J§ = null;
         if(_loc4_)
         {
            if(this.§2!1§[param1])
            {
               addr37:
               _loc2_ = this.§2!1§[param1];
               if(!(_loc3_ && param1))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §6&§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%"0§(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr91:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr92:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || param1)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(true);
                              }
                              else
                              {
                                 addr20:
                                 §§push(false);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                              }
                              while(_loc2_)
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                              return §§pop();
                              addr73:
                           }
                           §§goto(addr20);
                        }
                        return §§pop();
                        addr61:
                     }
                     §§goto(addr94);
                  }
               }
            }
            addr90:
         }
         while(true)
         {
            §§push(this.§2?§(param1));
            if(_loc3_ || _loc2_)
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc2_)
                  {
                     if(_loc2_ && param1)
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr73);
               }
               else
               {
                  §§goto(addr91);
               }
            }
            else
            {
               §§goto(addr90);
            }
            §§goto(addr91);
         }
      }
      
      public function §>"1§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§'"-§[param1] = param2;
         }
      }
      
      public function §^"9§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§1'§[param1] = param2;
         }
      }
      
      public function §0!§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§^J§ = new §^J§(param2);
         if(!_loc5_)
         {
            this.§>!$§[param1] = _loc3_;
         }
      }
      
      public function each(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§^J§ = new §^J§(param2);
         if(!_loc5_)
         {
            this.§2!1§[param1] = _loc3_;
         }
      }
      
      public function §&!;§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§3!w§);
         §§push(param1);
         if(_loc4_)
         {
            §§push(param2);
            if(!_loc3_)
            {
               if(§§pop() != -1)
               {
                  addr36:
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc4_ || param1))
                     {
                        addr68:
                        §§push(int(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(this.§%"0§(param1));
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr68);
                  }
               }
               return §§pop().§^"3§(§§pop(),§§pop());
            }
            §§goto(addr68);
         }
         §§goto(addr36);
      }
      
      public function §3"=§(param1:§"! §) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§3h§())
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc6_ || this)
               {
                  §§push(int(§§pop() + this.§%"0§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §var §(param1:§"! §) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§3h§())
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(!(_loc6_ && param1))
               {
                  §§push(int(§§pop() + this.§&!;§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §3"'§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§"! § = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ || _loc2_))
            {
               break;
            }
            if(§§pop() >= §3!w§.§!K§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = §3!w§.§2I§(_loc2_);
            if(_loc5_ || _loc3_)
            {
               §§push(this.§var §(_loc3_));
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr91:
                     while(true)
                     {
                        addr68:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!(_loc6_ && this))
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 continue loop1;
                              }
                              §§push(int(§§pop() + _loc4_));
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
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               if(_loc5_ || this)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr68);
               }
               §§goto(addr91);
            }
         }
         return §§pop();
      }
      
      public function §08§(param1:§"! §) : int
      {
         return param1.§3h§().length * 3;
      }
      
      public function §%Y§(param1:§"! §) : int
      {
         return param1.§3h§().length;
      }
      
      public function §4w§(param1:§"! §) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3h§())
         {
            if(_loc6_ || _loc2_)
            {
               if(this.§2?§(_loc3_) == 100)
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
      
      public function get §4!;§() : Dictionary
      {
         return this.§'"-§;
      }
      
      public function get §`";§() : Boolean
      {
         return this.§!h§;
      }
      
      public function set §`";§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§!h§ = param1;
         }
      }
      
      public function get §=!T§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §=6§() : String
      {
         return this.§@!N§;
      }
      
      public function §>1§(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§"! § = null;
         var _loc7_:§"! § = null;
         if(!(_loc8_ && _loc2_))
         {
            §§push(param1);
            if(_loc9_)
            {
               if(§§pop() != null)
               {
                  loop0:
                  do
                  {
                     §§push(param1);
                     if(_loc9_)
                     {
                        if(§§pop() == §3!w§.§ for§)
                        {
                           if(!_loc8_)
                           {
                              §§push(true);
                           }
                           else
                           {
                              loop1:
                              while(true)
                              {
                                 addr87:
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§%"0§(param1));
                                    loop3:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop4:
                                       while(§§pop() <= §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§2?§(param1));
                                             if(_loc9_ || _loc2_)
                                             {
                                                §§push(0);
                                                if(_loc9_)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§push(true);
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr132:
                                                            return §§pop();
                                                         }
                                                         addr110:
                                                         if(!_loc8_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      break loop4;
                                                   }
                                                   if(_loc9_ || param1)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             continue loop3;
                                          }
                                          var _loc2_:Array = param1.split("-");
                                          if(_loc9_ || this)
                                          {
                                             if(_loc2_.length == 2)
                                             {
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push(int(parseInt(_loc2_[0])));
                                                   if(_loc9_ || param1)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr180:
                                                      if(!_loc8_)
                                                      {
                                                         addr173:
                                                         §§push(int(parseInt(_loc2_[1])));
                                                      }
                                                      §§push((_loc6_ = §3!w§.§>! §(param1)).pageIndexes[0] == _loc4_);
                                                      if(_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_ || this)
                                                            {
                                                               §§pop();
                                                               if(_loc9_ || param1)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           addr239:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 §§push(true);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr362:
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr365:
                                                                                       §§push(this.§%"0§(_loc3_));
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr370:
                                                                                          §§push(0);
                                                                                          if(!(_loc8_ && _loc2_))
                                                                                          {
                                                                                             addr378:
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr381:
                                                                                                   §§push(true);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§goto(addr384);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                addr414:
                                                                                                addr415:
                                                                                                return §§pop();
                                                                                                §§push(true);
                                                                                                §§goto(addr415);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr395:
                                                                                                §§push(this.§2?§(_loc3_));
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§goto(addr414);
                                                                                          }
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(_loc8_ && _loc3_)
                                                                                             {
                                                                                                §§goto(addr416);
                                                                                             }
                                                                                             §§goto(addr414);
                                                                                          }
                                                                                          §§goto(addr416);
                                                                                       }
                                                                                       §§goto(addr395);
                                                                                    }
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 addr416:
                                                                                 return false;
                                                                                 addr303:
                                                                              }
                                                                              addr384:
                                                                              return §§pop();
                                                                           }
                                                                           §§push(_loc5_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          §§push(§§pop() + "-");
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop() + (_loc5_ - 1));
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             if(!(_loc8_ && param1))
                                                                                             {
                                                                                                §§goto(addr303);
                                                                                             }
                                                                                             §§goto(addr365);
                                                                                          }
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr312:
                                                                                          §§push(1);
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc7_ = §3!w§.§>! §(_loc4_ - 1 + "-1"))
                                                                                                   {
                                                                                                      if(!(_loc8_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(_loc4_ - 1 + "-");
                                                                                                         if(_loc9_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                                         }
                                                                                                         _loc3_ = §§pop();
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr362);
                                                                                                }
                                                                                                §§goto(addr381);
                                                                                             }
                                                                                             §§goto(addr362);
                                                                                          }
                                                                                          §§goto(addr378);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr370);
                                                                                 }
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                           §§goto(addr312);
                                                                        }
                                                                        §§goto(addr415);
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr414);
                                                            }
                                                            §§goto(addr415);
                                                         }
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   _loc5_ = §§pop();
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr416);
                                          }
                                          §§goto(addr180);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           addr124:
                           return §§pop();
                        }
                        §§goto(addr87);
                     }
                  }
                  while(_loc8_ && _loc3_);
                  
                  if(!_loc8_)
                  {
                     §§goto(addr110);
                     §§push(true);
                  }
                  else
                  {
                     addr131:
                     §§goto(addr132);
                     §§push(false);
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr135);
         }
         §§goto(addr131);
      }
      
      public function §>!o§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §3!p§(param1:String) : void
      {
      }
      
      public function §,v§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §^_§() : Dictionary
      {
         return this.§'"-§;
      }
   }
}
