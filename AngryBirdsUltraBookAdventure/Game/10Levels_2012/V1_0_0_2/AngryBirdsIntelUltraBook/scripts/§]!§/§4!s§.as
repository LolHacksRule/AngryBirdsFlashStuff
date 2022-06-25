package §]!§
{
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §4!s§ extends EventDispatcher
   {
      
      protected static const §8I§:Number = 1000;
      
      protected static const §+!G§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8I§ = 1000;
         }
         do
         {
            §+!G§ = 60;
         }
         while(_loc1_);
         
      }
      
      protected var §0!s§:Dictionary;
      
      protected var §59§:Dictionary;
      
      protected var §9!b§:Dictionary;
      
      protected var §4B§:Dictionary;
      
      protected var §`!p§:Boolean;
      
      protected var §`!2§:String;
      
      protected var §3l§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §4!s§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§3l§ = param1;
            loop1:
            while(true)
            {
               this.§0!s§ = new Dictionary();
               loop2:
               while(true)
               {
                  this.§59§ = new Dictionary();
                  while(!_loc3_)
                  {
                     this.§9!b§ = new Dictionary();
                     while(_loc2_ || param1)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              this.§4B§ = new Dictionary();
                              while(_loc2_ || _loc2_)
                              {
                                 this.§`!p§ = false;
                                 if(!_loc3_)
                                 {
                                    return;
                                 }
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §0!C§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§1§));
            do
            {
               this.§`!2§ = null;
            }
            while(!_loc3_);
            
         }
      }
      
      public function §]!U§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§`!2§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(_loc3_ && this)
                  {
                     break;
                  }
                  addr76:
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr75);
                     }
                     else
                     {
                        addr82:
                     }
                     return true;
                  }
               }
               §§push(true);
               if(_loc3_)
               {
                  addr75:
                  return false;
               }
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
               §§goto(addr82);
            }
            §§goto(addr82);
         }
         §§goto(addr76);
      }
      
      public function §3p§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§+!G§);
         if(_loc4_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(!(_loc5_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc4_)
         {
            §§push(§§pop() / §+!G§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(_loc4_)
         {
            §§push(§§pop() % §+!G§);
         }
         var _loc3_:int = §§pop();
         if(!(_loc5_ && this))
         {
            if(_loc3_ < 10)
            {
               if(!(_loc5_ && _loc1_))
               {
                  §§goto(addr73);
               }
               else
               {
                  addr130:
                  §§push("");
                  if(_loc4_ || _loc2_)
                  {
                     §§goto(addr138);
                  }
               }
               §§goto(addr141);
            }
            §§goto(addr130);
         }
         addr73:
         §§push("");
         if(!(_loc5_ && _loc1_))
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc5_ && _loc1_))
               {
                  §§push(":0");
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && _loc2_))
                     {
                        §§goto(addr108);
                     }
                     else
                     {
                        addr138:
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§goto(addr141);
                        }
                        addr149:
                        §§goto(addr141);
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr149);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     §§goto(addr149);
                     §§push(_loc3_);
                  }
                  §§goto(addr141);
               }
               addr108:
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc5_ && _loc1_))
                  {
                     §§goto(addr129);
                  }
                  else
                  {
                     addr144:
                     §§push(":");
                  }
               }
               else
               {
                  addr141:
                  §§push(§§pop() + §§pop());
                  if(!_loc5_)
                  {
                     §§goto(addr144);
                  }
                  §§goto(addr150);
               }
               addr150:
               return §§pop();
            }
            §§goto(addr149);
         }
         addr129:
         return §§pop();
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&'§ = null;
         if(!_loc3_)
         {
            if(this.§0!s§[param1])
            {
               addr37:
               _loc2_ = this.§0!s§[param1];
               if(!_loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&'§ = null;
         if(!(_loc4_ && param1))
         {
            if(this.§59§[param1])
            {
               addr41:
               _loc2_ = this.§59§[param1];
               if(_loc3_ || _loc2_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §%H§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.getScoreForLevel(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr95:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr96:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(true);
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(!(_loc2_ || param1))
                           {
                              break;
                           }
                           if(!(_loc3_ && _loc2_))
                           {
                              return §§pop();
                           }
                           addr58:
                           while(_loc3_)
                           {
                           }
                           if(!(_loc3_ && this))
                           {
                              continue;
                           }
                           continue loop2;
                        }
                        return §§pop();
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr94:
         }
         while(true)
         {
            §§push(this.getEagleScoreForLevel(param1));
            if(_loc2_)
            {
               §§push(0);
               if(_loc2_)
               {
                  §§goto(addr58);
                  §§push(§§pop() > §§pop());
               }
               else
               {
                  §§goto(addr95);
               }
               §§goto(addr96);
            }
            else
            {
               §§goto(addr94);
            }
         }
      }
      
      public function §#_§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9!b§[param1] = param2;
         }
      }
      
      public function §8!7§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§4B§[param1] = param2;
         }
      }
      
      public function §,!i§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§&'§ = new §&'§(param2);
         if(_loc5_ || this)
         {
            this.§0!s§[param1] = _loc3_;
         }
      }
      
      public function §5U§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§&'§ = new §&'§(param2);
         if(!_loc4_)
         {
            this.§59§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(LevelManager);
         §§push(param1);
         if(!(_loc3_ && param2))
         {
            §§push(param2);
            if(!(_loc3_ && param1))
            {
               if(§§pop() != -1)
               {
                  addr46:
                  §§push(param2);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                     if(!(_loc4_ || this))
                     {
                        addr83:
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        addr72:
                     }
                  }
                  §§goto(addr72);
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(_loc4_ || this)
                  {
                     §§goto(addr83);
                  }
               }
               return §§pop().§@!Z§(§§pop(),§§pop());
            }
            §§goto(addr72);
         }
         §§goto(addr46);
      }
      
      public function §7!>§(param1:§4n§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§3!"§())
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §&!N§(param1:§4n§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§3!"§())
         {
            if(!(_loc7_ && param1))
            {
               §§push(_loc2_);
               if(!_loc7_)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§4n§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc6_ || _loc3_))
            {
               break;
            }
            if(§§pop() >= LevelManager.§1K§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = LevelManager.§`!-§(_loc2_);
            if(!(_loc5_ && _loc1_))
            {
               §§push(this.§&!N§(_loc3_));
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr107:
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc5_)
                           {
                              continue loop1;
                           }
                           addr93:
                           if(!(_loc6_ || _loc3_))
                           {
                              continue loop2;
                           }
                           _loc1_ = §§pop();
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               _loc2_++;
               if(!(_loc6_ || this))
               {
                  continue;
               }
               if(!(_loc5_ && _loc3_))
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr69);
               }
               §§goto(addr107);
            }
         }
         return §§pop();
      }
      
      public function §#O§(param1:§4n§) : int
      {
         return param1.§3!"§().length * 3;
      }
      
      public function §'!O§(param1:§4n§) : int
      {
         return param1.§3!"§().length;
      }
      
      public function §`!8§(param1:§4n§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3!"§())
         {
            if(!_loc7_)
            {
               if(this.getEagleScoreForLevel(_loc3_) == 100)
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
      
      public function get §38§() : Dictionary
      {
         return this.§9!b§;
      }
      
      public function get §3!h§() : Boolean
      {
         return this.§`!p§;
      }
      
      public function set §3!h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`!p§ = param1;
         }
      }
      
      public function get §#J§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §^!8§() : String
      {
         return this.§`!2§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:§4n§ = null;
         var _loc7_:§4n§ = null;
         if(_loc8_)
         {
            §§push(param1);
            if(_loc8_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc9_ && _loc2_))
                     {
                        if(§§pop() != LevelManager.§3!_§)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.getScoreForLevel(param1));
                              loop2:
                              while(true)
                              {
                                 §§push(0);
                                 loop3:
                                 while(§§pop() <= §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.getEagleScoreForLevel(param1));
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          §§push(0);
                                          if(_loc8_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                }
                                                if(_loc9_ && this)
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                if(!_loc8_)
                                                {
                                                   break loop3;
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
                                    return §§pop();
                                 }
                                 if(_loc8_)
                                 {
                                    addr75:
                                    §§push(true);
                                    if(_loc8_ || _loc2_)
                                    {
                                       return §§pop();
                                    }
                                    addr111:
                                    if(_loc8_ || _loc2_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr103:
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       addr110:
                                       §§goto(addr111);
                                       §§push(true);
                                    }
                                    else
                                    {
                                       addr130:
                                       §§push(false);
                                    }
                                 }
                                 §§goto(addr131);
                              }
                           }
                           §§push(true);
                           if(_loc8_)
                           {
                              return §§pop();
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr103);
                     }
                     break;
                  }
                  addr134:
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
                              if(!_loc9_)
                              {
                                 addr163:
                                 _loc5_ = parseInt(_loc2_[1]);
                              }
                              §§push((_loc6_ = LevelManager.§2!9§(param1)).pageIndexes[0] == _loc4_);
                              if(_loc8_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_ || _loc2_)
                                    {
                                       addr191:
                                       §§pop();
                                       if(_loc8_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             §§push(1);
                                             if(_loc8_ || param1)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc8_ || this)
                                                {
                                                   addr223:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§push(true);
                                                         if(_loc8_ || param1)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                      else
                                                      {
                                                         addr261:
                                                         §§push(_loc4_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() + "-");
                                                            if(_loc8_ || _loc2_)
                                                            {
                                                               §§push(§§pop() + (_loc5_ - 1));
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc8_ || _loc2_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  addr346:
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc8_ || this)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§push(this.getScoreForLevel(_loc3_));
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  addr364:
                                                                  §§push(0);
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr367:
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           addr370:
                                                                           §§push(true);
                                                                           if(_loc8_ || _loc3_)
                                                                           {
                                                                              §§goto(addr388);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr409);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr410);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr396:
                                                                        §§push(this.getEagleScoreForLevel(_loc3_));
                                                                     }
                                                                     §§goto(addr410);
                                                                  }
                                                                  §§goto(addr400);
                                                               }
                                                               addr399:
                                                               addr400:
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     addr409:
                                                                     return §§pop();
                                                                     §§push(true);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr410);
                                                                  }
                                                               }
                                                               addr410:
                                                               return false;
                                                               §§push(0);
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                      §§goto(addr409);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc9_ && _loc2_))
                                                      {
                                                         addr250:
                                                         §§push(1);
                                                         if(_loc8_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr396);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  addr301:
                                                                  §§push(1);
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     addr309:
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc7_ = LevelManager.§2!9§(_loc4_ - 1 + "-1"))
                                                                           {
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 §§push(_loc4_ - 1 + "-");
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr370);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                            }
                                                            §§goto(addr399);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                }
                                                addr388:
                                                return §§pop();
                                             }
                                             §§goto(addr364);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr370);
                                    }
                                    §§goto(addr409);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr191);
                           }
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr410);
                  }
                  §§goto(addr163);
               }
               §§goto(addr130);
            }
            §§goto(addr134);
         }
         §§goto(addr110);
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
      
      public function get § !H§() : Dictionary
      {
         return this.§9!b§;
      }
   }
}
