package §^!W§
{
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §]+§.§=E§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §'Q§ extends EventDispatcher
   {
      
      protected static const §-&§:Number = 1000;
      
      protected static const §=!+§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-&§ = 1000;
            do
            {
               §=!+§ = 60;
            }
            while(_loc2_);
            
         }
      }
      
      protected var §3!Q§:Dictionary;
      
      protected var §#![§:Dictionary;
      
      protected var §"G§:Dictionary;
      
      protected var §'!c§:Dictionary;
      
      protected var §1!?§:Boolean;
      
      protected var §7n§:String;
      
      protected var § j§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §'Q§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§ j§ = param1;
               loop1:
               while(true)
               {
                  this.§3!Q§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     this.§#![§ = new Dictionary();
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§"G§ = new Dictionary();
                           do
                           {
                              this.§'!c§ = new Dictionary();
                              do
                              {
                                 this.§1!?§ = false;
                              }
                              while(_loc2_);
                              
                           }
                           while(!_loc3_);
                           
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §=!§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§-[§));
         }
         do
         {
            this.§7n§ = null;
         }
         while(!_loc3_);
         
      }
      
      public function §0b§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§7n§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(!_loc3_)
                  {
                     addr49:
                     §§push(false);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     if(_loc2_ || param1)
                     {
                        break;
                     }
                     addr86:
                     return true;
                  }
                  return §§pop();
               }
               §§push(true);
               if(_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr49);
            }
            §§goto(addr86);
         }
         §§goto(addr49);
      }
      
      public function §>B§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§=!+§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(!(_loc5_ && _loc3_))
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() / §=!+§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() % §=!+§);
            }
            var _loc3_:int = §§pop();
            if(!(_loc5_ && this))
            {
               if(_loc3_ < 10)
               {
                  if(!_loc5_)
                  {
                     addr78:
                     §§push("");
                     if(_loc4_ || _loc2_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              §§push(":0");
                              if(!(_loc5_ && this))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr108:
                                    §§push(_loc3_);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc5_ && _loc1_))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr155);
                                    }
                                    addr155:
                                    §§push(§§pop() + ":");
                                    if(_loc4_)
                                    {
                                       addr153:
                                       §§push(_loc3_);
                                    }
                                    return §§pop();
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr153);
                        }
                        else
                        {
                           addr141:
                           §§push(§§pop() + §§pop());
                           if(_loc5_ && this)
                           {
                           }
                           §§goto(addr155);
                        }
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     addr130:
                     §§push("");
                     if(_loc4_ || _loc3_)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§goto(addr141);
                        }
                        §§goto(addr108);
                     }
                  }
                  §§goto(addr155);
               }
               §§goto(addr130);
            }
            §§goto(addr78);
         }
         §§goto(addr35);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=E§ = null;
         if(!_loc4_)
         {
            if(this.§3!Q§[param1])
            {
               addr36:
               _loc2_ = this.§3!Q§[param1];
               if(_loc3_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=E§ = null;
         if(!(_loc4_ && param1))
         {
            if(this.§#![§[param1])
            {
               addr41:
               _loc2_ = this.§#![§[param1];
               if(!_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §9!,§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.getScoreForLevel(param1));
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
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 addr97:
                                 §§push(true);
                              }
                              else
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 addr25:
                                 §§push(false);
                                 if(!_loc2_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       break;
                                    }
                                    addr114:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                              }
                              addr98:
                              return §§pop();
                           }
                           §§goto(addr25);
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                        addr88:
                     }
                     §§goto(addr114);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §,!j§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§"G§[param1] = param2;
         }
      }
      
      public function §6!E§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§'!c§[param1] = param2;
         }
      }
      
      public function §!!O§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§=E§ = new §=E§(param2);
         if(_loc4_ || _loc3_)
         {
            this.§3!Q§[param1] = _loc3_;
         }
      }
      
      public function §-!N§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§=E§ = new §=E§(param2);
         if(!_loc4_)
         {
            this.§#![§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(LevelManager);
         §§push(param1);
         if(_loc4_ || this)
         {
            §§push(param2);
            if(_loc4_ || param2)
            {
               if(§§pop() != -1)
               {
                  addr56:
                  §§push(param2);
                  if(_loc4_ || param2)
                  {
                     §§push(int(§§pop()));
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr74);
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(!_loc3_)
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            addr74:
            return §§pop().§1z§(§§pop(),§§pop());
         }
         §§goto(addr56);
      }
      
      public function §@!9§(param1:§<!#§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§9f§())
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §^P§(param1:§<!#§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§9f§())
         {
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc2_);
               if(_loc6_ || _loc2_)
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
         var _loc3_:§<!#§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() >= LevelManager.§?p§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§'J§(_loc2_);
               if(_loc5_ || _loc2_)
               {
                  §§push(this.§^P§(_loc3_));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop3:
                        while(true)
                        {
                           addr71:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc6_)
                              {
                                 if(_loc6_)
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
                              loop5:
                              while(!_loc6_)
                              {
                                 while(true)
                                 {
                                    _loc2_++;
                                    if(_loc5_ || _loc2_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr85);
            }
            break;
         }
         return §§pop();
      }
      
      public function §&!^§(param1:§<!#§) : int
      {
         return param1.§9f§().length * 3;
      }
      
      public function §'!8§(param1:§<!#§) : int
      {
         return param1.§9f§().length;
      }
      
      public function §0,§(param1:§<!#§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9f§())
         {
            if(_loc6_ || _loc3_)
            {
               if(this.getEagleScoreForLevel(_loc3_) != 100)
               {
                  continue;
               }
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function get §8!r§() : Dictionary
      {
         return this.§"G§;
      }
      
      public function get §'!>§() : Boolean
      {
         return this.§1!?§;
      }
      
      public function set §'!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!?§ = param1;
         }
      }
      
      public function get §"]§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §?!'§() : String
      {
         return this.§7n§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§<!#§ = null;
         var _loc7_:§<!#§ = null;
         if(!(_loc8_ && param1))
         {
            §§push(param1);
            if(_loc9_)
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc9_ || _loc3_)
                     {
                        if(§§pop() != LevelManager.§3!§)
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
                                       if(_loc9_ || _loc2_)
                                       {
                                          §§push(0);
                                          if(!_loc8_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc9_ || this)
                                                      {
                                                         continue;
                                                      }
                                                      addr126:
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(true);
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   if(_loc8_ && _loc3_)
                                                   {
                                                      break loop3;
                                                   }
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(true);
                                                         if(_loc8_)
                                                         {
                                                            §§goto(addr105);
                                                         }
                                                         if(!(_loc9_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr141:
                                                         return false;
                                                      }
                                                      return §§pop();
                                                   }
                                                   addr135:
                                                   while(true)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                else if(false)
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
                                 addr105:
                                 return §§pop();
                              }
                           }
                        }
                        §§goto(addr126);
                     }
                     break;
                  }
                  addr145:
                  var _loc2_:Array = §§pop().split("-");
                  if(!(_loc8_ && _loc2_))
                  {
                     if(_loc2_.length == 2)
                     {
                        if(!(_loc8_ && _loc3_))
                        {
                           addr167:
                           §§push(int(parseInt(_loc2_[0])));
                           if(!_loc8_)
                           {
                              _loc4_ = §§pop();
                              §§goto(addr200);
                           }
                           _loc5_ = §§pop();
                        }
                        addr200:
                        if(!(_loc8_ && param1))
                        {
                           §§push(int(parseInt(_loc2_[1])));
                        }
                        §§push((_loc6_ = LevelManager.§1H§(param1)).pageIndexes[0] == _loc4_);
                        if(!(_loc8_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 §§pop();
                                 if(_loc9_)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc8_)
                                    {
                                       §§push(1);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             addr239:
                                             if(§§pop())
                                             {
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   addr247:
                                                   §§push(true);
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§goto(addr255);
                                                   }
                                                }
                                                else
                                                {
                                                   addr272:
                                                   §§push(_loc4_);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() + "-");
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() + (_loc5_ - 1));
                                                      }
                                                      §§push(§§pop());
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            addr332:
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(this.getScoreForLevel(_loc3_));
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     addr345:
                                                                     §§push(0);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr348:
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr361:
                                                                              §§push(true);
                                                                              if(_loc9_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr369);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr385);
                                                                              }
                                                                           }
                                                                           §§goto(addr385);
                                                                        }
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                                  addr376:
                                                                  if(this.getEagleScoreForLevel(_loc3_) > 0)
                                                                  {
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        addr385:
                                                                        return §§pop();
                                                                        §§push(true);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr386);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            addr386:
                                                            return false;
                                                            addr293:
                                                         }
                                                         §§goto(addr361);
                                                      }
                                                      §§goto(addr332);
                                                   }
                                                   §§goto(addr376);
                                                }
                                                §§goto(addr385);
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
                                                         if(!_loc8_)
                                                         {
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc9_)
                                                         {
                                                            §§push(1);
                                                            if(_loc9_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc7_ = LevelManager.§1H§(_loc4_ - 1 + "-1"))
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(_loc4_ - 1 + "-");
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              §§push(§§pop() + _loc7_.levelsPerPage);
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                        }
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               §§goto(addr332);
                                                            }
                                                         }
                                                         §§goto(addr376);
                                                      }
                                                   }
                                                   §§goto(addr348);
                                                }
                                             }
                                             §§goto(addr348);
                                          }
                                          addr255:
                                          return §§pop();
                                       }
                                       §§goto(addr348);
                                    }
                                    §§goto(addr345);
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr369);
                           }
                           §§goto(addr239);
                        }
                        addr369:
                        return §§pop();
                     }
                     §§goto(addr386);
                  }
                  §§goto(addr167);
               }
               §§goto(addr141);
            }
            §§goto(addr145);
         }
         §§goto(addr135);
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
      
      public function get §=!N§() : Dictionary
      {
         return this.§"G§;
      }
   }
}
