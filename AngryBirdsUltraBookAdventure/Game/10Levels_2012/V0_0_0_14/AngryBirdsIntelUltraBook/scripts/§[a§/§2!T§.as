package §[a§
{
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §&!h§.§?!K§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §2!T§ extends EventDispatcher
   {
      
      protected static const §7!Q§:Number = 1000;
      
      protected static const §4f§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7!Q§ = 1000;
         }
         do
         {
            §4f§ = 60;
         }
         while(!_loc1_);
         
      }
      
      protected var §21§:Dictionary;
      
      protected var §1!B§:Dictionary;
      
      protected var §?E§:Dictionary;
      
      protected var §9s§:Dictionary;
      
      protected var §#!i§:Boolean;
      
      protected var §7!c§:String;
      
      protected var §0'§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §2!T§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            while(true)
            {
               this.§0'§ = param1;
               loop1:
               while(true)
               {
                  this.§21§ = new Dictionary();
                  while(true)
                  {
                     this.§1!B§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        this.§?E§ = new Dictionary();
                        while(true)
                        {
                           this.§9s§ = new Dictionary();
                           loop5:
                           while(!(_loc3_ && param1))
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§#!i§ = false;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 return;
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §,!@§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§&x§));
         }
         do
         {
            this.§7!c§ = null;
         }
         while(_loc3_);
         
      }
      
      public function §"!9§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§7!c§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        addr49:
                        §§push(false);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr57:
                        return true;
                     }
                     return §§pop();
                  }
               }
               §§push(true);
               if(_loc3_)
               {
                  return §§pop();
               }
               §§goto(addr49);
            }
         }
         §§goto(addr57);
      }
      
      public function §];§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§4f§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(!_loc4_)
         {
            §§push(§§pop() / §4f§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(§§pop() % §4f§);
         }
         var _loc3_:int = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            if(_loc3_ < 10)
            {
               if(!_loc4_)
               {
                  addr59:
                  §§push("");
                  if(_loc5_ || _loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc4_ && _loc2_))
                        {
                           addr93:
                           §§push(":0");
                           if(!_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_ || this)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr140);
                                 }
                              }
                              else
                              {
                                 addr129:
                                 §§push(_loc2_);
                                 if(!_loc4_)
                                 {
                                    addr132:
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_ && _loc2_)
                                    {
                                    }
                                    §§goto(addr140);
                                 }
                              }
                              §§goto(addr150);
                           }
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr93);
               }
               else
               {
                  addr126:
                  §§push("");
                  if(_loc5_)
                  {
                     §§goto(addr129);
                  }
               }
               addr140:
               §§push(§§pop() + ":");
               if(_loc5_ || _loc2_)
               {
                  addr150:
                  return §§pop() + _loc3_;
               }
            }
            §§goto(addr126);
         }
         §§goto(addr59);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§?!K§ = null;
         if(_loc3_)
         {
            if(this.§21§[param1])
            {
               addr36:
               _loc2_ = this.§21§[param1];
               if(_loc3_ || param1)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr36);
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?!K§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§1!B§[param1])
            {
               addr42:
               _loc2_ = this.§1!B§[param1];
               if(!_loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function §+G§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.getScoreForLevel(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr86:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr87:
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
                              if(_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(true);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr20:
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr29:
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr64:
                                          while(!_loc2_)
                                          {
                                             continue loop6;
                                             §§goto(addr29);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr81:
                              }
                              while(true)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    break loop6;
                                 }
                                 addr89:
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
                     §§goto(addr89);
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §`!I§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§?E§[param1] = param2;
         }
      }
      
      public function §6!I§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§9s§[param1] = param2;
         }
      }
      
      public function §,x§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§?!K§ = new §?!K§(param2);
         if(_loc4_ || _loc3_)
         {
            this.§21§[param1] = _loc3_;
         }
      }
      
      public function §#]§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?!K§ = new §?!K§(param2);
         if(_loc5_)
         {
            this.§1!B§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(LevelManager);
         §§push(param1);
         if(!_loc3_)
         {
            §§push(param2);
            if(!(_loc3_ && param1))
            {
               if(§§pop() != -1)
               {
                  addr51:
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                     if(_loc4_)
                     {
                        addr57:
                     }
                  }
                  else
                  {
                     addr68:
                     §§push(int(§§pop()));
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(_loc4_ || param1)
                  {
                     §§goto(addr68);
                  }
               }
               return §§pop().§'!J§(§§pop(),§§pop());
            }
            §§goto(addr57);
         }
         §§goto(addr51);
      }
      
      public function §9!C§(param1:§@+§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§-K§())
         {
            if(_loc6_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc6_ || this)
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §^!E§(param1:§@+§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§-K§())
         {
            if(_loc7_ || this)
            {
               §§push(_loc2_);
               if(_loc7_ || _loc2_)
               {
                  §§push(int(§§pop() + this.getStarsForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§@+§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() >= LevelManager.§`!v§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§'v§(_loc2_);
               if(!(_loc6_ && this))
               {
                  §§push(this.§^!E§(_loc3_));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr101:
                        while(true)
                        {
                           addr56:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(int(§§pop() + _loc4_));
                              }
                              if(!_loc5_)
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
               §§goto(addr95);
            }
            break;
         }
         return §§pop();
      }
      
      public function §[y§(param1:§@+§) : int
      {
         return param1.§-K§().length * 3;
      }
      
      public function §%!u§(param1:§@+§) : int
      {
         return param1.§-K§().length;
      }
      
      public function §<!=§(param1:§@+§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-K§())
         {
            if(_loc6_ || _loc2_)
            {
               if(this.getEagleScoreForLevel(_loc3_) == 100)
               {
                  if(!_loc7_)
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §5!g§() : Dictionary
      {
         return this.§?E§;
      }
      
      public function get §4!f§() : Boolean
      {
         return this.§#!i§;
      }
      
      public function set §4!f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!i§ = param1;
         }
      }
      
      public function get §<!l§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §,!k§() : String
      {
         return this.§7!c§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§@+§ = null;
         var _loc7_:§@+§ = null;
         if(_loc9_)
         {
            §§push(param1);
            if(_loc9_)
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
                        addr104:
                        addr125:
                        loop1:
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc8_)
                           {
                              if(§§pop() != LevelManager.§3!&§)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.getScoreForLevel(param1));
                                    loop3:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc8_ && _loc2_)
                                                   {
                                                      break loop3;
                                                   }
                                                   addr61:
                                                   if(!(_loc9_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(true)
                                                      {
                                                         addr124:
                                                         §§push(param1);
                                                      }
                                                      continue loop2;
                                                      break loop1;
                                                   }
                                                   addr113:
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                                addr112:
                                             }
                                             else
                                             {
                                                addr112:
                                             }
                                             continue loop0;
                                             return §§pop();
                                          }
                                          while(true)
                                          {
                                             §§push(this.getEagleScoreForLevel(param1));
                                             if(!(_loc8_ && this))
                                             {
                                                §§push(0);
                                                if(_loc9_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(true);
                                                         if(!_loc9_)
                                                         {
                                                            break loop4;
                                                         }
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr61);
                                                      }
                                                      §§goto(addr112);
                                                   }
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr124);
                                       }
                                       addr93:
                                       if(!_loc8_)
                                       {
                                          return §§pop();
                                       }
                                       addr122:
                                       return §§pop();
                                    }
                                 }
                              }
                              §§goto(addr112);
                              §§push(true);
                           }
                           break;
                        }
                        var _loc2_:Array = §§pop().split("-");
                        if(!(_loc8_ && this))
                        {
                           if(_loc2_.length == 2)
                           {
                              if(_loc9_)
                              {
                                 addr142:
                                 §§push(int(parseInt(_loc2_[0])));
                                 if(!_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    addr165:
                                    if(_loc9_ || _loc3_)
                                    {
                                       §§push(int(parseInt(_loc2_[1])));
                                    }
                                    §§push((_loc6_ = LevelManager.§,m§(param1)).pageIndexes[0] == _loc4_);
                                    if(_loc9_ || _loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§pop();
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_)
                                                {
                                                   §§push(1);
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         addr224:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§push(true);
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr235);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr350:
                                                               §§push(this.getScoreForLevel(_loc3_));
                                                               if(_loc9_ || this)
                                                               {
                                                                  addr360:
                                                                  §§push(0);
                                                                  if(_loc9_)
                                                                  {
                                                                     addr363:
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           addr381:
                                                                           §§push(true);
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              §§goto(addr389);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr404:
                                                                           return true;
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     addr401:
                                                                     if(this.getEagleScoreForLevel(_loc3_) > 0)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr406);
                                                                        }
                                                                     }
                                                                     addr406:
                                                                     return false;
                                                                     §§goto(addr404);
                                                                  }
                                                               }
                                                               §§goto(addr401);
                                                            }
                                                            addr389:
                                                            return §§pop();
                                                         }
                                                         §§push(_loc5_);
                                                         if(_loc9_ || this)
                                                         {
                                                            §§push(1);
                                                            if(!(_loc8_ && _loc2_))
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc9_ || _loc3_)
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
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              addr346:
                                                                              §§push(_loc3_);
                                                                           }
                                                                           §§goto(addr381);
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§goto(addr350);
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                        §§goto(addr406);
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                                  §§goto(addr404);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     addr307:
                                                                     §§push(1);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc9_ || _loc2_)
                                                                           {
                                                                              if(_loc7_ = LevelManager.§,m§(_loc4_ - 1 + "-1"))
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(_loc4_ - 1 + "-");
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        §§goto(addr346);
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr360);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr363);
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr381);
                                          }
                                          addr235:
                                          return §§pop();
                                       }
                                    }
                                    §§goto(addr224);
                                 }
                                 _loc5_ = §§pop();
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr406);
                        }
                        §§goto(addr142);
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr104);
            }
            §§goto(addr125);
         }
         §§goto(addr113);
      }
      
      public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §1!1§() : Dictionary
      {
         return this.§?E§;
      }
   }
}
