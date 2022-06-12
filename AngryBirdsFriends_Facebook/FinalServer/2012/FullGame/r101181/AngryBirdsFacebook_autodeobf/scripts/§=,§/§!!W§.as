package §=,§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §<a§.§9U§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §!!W§ extends EventDispatcher
   {
      
      protected static const §?d§:Number = 1000;
      
      protected static const §85§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?d§ = 1000;
         }
         do
         {
            §85§ = 60;
         }
         while(_loc1_);
         
      }
      
      protected var §2!v§:Dictionary;
      
      protected var §>!§:Dictionary;
      
      protected var §-`§:Dictionary;
      
      protected var §7u§:Dictionary;
      
      protected var §0"0§:Boolean;
      
      protected var §8!R§:String;
      
      protected var §+]§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §!!W§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§+]§ = param1;
               while(!(_loc3_ && this))
               {
                  this.§2!v§ = new Dictionary();
                  loop2:
                  for(; _loc2_ || _loc2_; if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr62))
                  {
                     while(true)
                     {
                        this.§>!§ = new Dictionary();
                        while(true)
                        {
                           this.§-`§ = new Dictionary();
                           while(!_loc3_)
                           {
                              continue loop2;
                              this.§7u§ = new Dictionary();
                              do
                              {
                                 this.§0"0§ = false;
                              }
                              while(_loc3_);
                              
                              if(_loc2_)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      private function § ">§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§-2§));
            do
            {
               this.§8!R§ = null;
            }
            while(!_loc3_);
            
         }
      }
      
      public function §%!S§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§8!R§ != param1)
            {
               loop0:
               while(this.mMightyEagleTimer.running)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr70:
                     §§push(false);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                     addr87:
                     return true;
                  }
                  return §§pop();
               }
               §§push(true);
               if(_loc3_ || _loc2_)
               {
                  return §§pop();
               }
               §§goto(addr70);
            }
            §§goto(addr87);
         }
         §§goto(addr89);
      }
      
      public function §8v§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§85§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc5_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() / §85§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() % §85§);
            }
            var _loc3_:int = §§pop();
            if(_loc5_)
            {
               if(_loc3_ < 10)
               {
                  if(_loc5_ || this)
                  {
                     addr74:
                     §§push("");
                     if(_loc5_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc4_)
                           {
                              §§push(":0");
                              if(_loc5_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr125);
                                       }
                                       else
                                       {
                                          addr145:
                                          §§push(":");
                                       }
                                    }
                                    else
                                    {
                                       addr137:
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§goto(addr145);
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 addr150:
                                 addr151:
                                 return §§pop();
                                 §§push(§§pop() + _loc3_);
                              }
                              §§goto(addr151);
                           }
                           addr125:
                           return §§pop();
                        }
                        §§goto(addr137);
                     }
                     else
                     {
                        addr134:
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr150);
                  }
                  else
                  {
                     addr126:
                     §§push("");
                     if(_loc5_ || _loc2_)
                     {
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr137);
               }
               §§goto(addr126);
            }
            §§goto(addr74);
         }
         §§goto(addr31);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9U§ = null;
         if(!(_loc3_ && this))
         {
            if(this.§2!v§[param1])
            {
               addr42:
               _loc2_ = this.§2!v§[param1];
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9U§ = null;
         if(_loc4_)
         {
            if(this.§>!§[param1])
            {
               addr37:
               _loc2_ = this.§>!§[param1];
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §%6§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.getScoreForLevel(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr101:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr102:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && param1))
                              {
                                 if(_loc2_ && param1)
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
                                          if(!_loc2_)
                                          {
                                             break loop5;
                                          }
                                          addr104:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 addr96:
                              }
                              addr95:
                              return §§pop();
                           }
                           §§goto(addr25);
                        }
                        return §§pop();
                        addr78:
                     }
                     §§goto(addr104);
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §5x§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§-`§[param1] = param2;
         }
      }
      
      public function §14§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§7u§[param1] = param2;
         }
      }
      
      public function §["$§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§9U§ = new §9U§(param2);
         if(_loc4_)
         {
            this.§2!v§[param1] = _loc3_;
         }
      }
      
      public function §<!,§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§9U§ = new §9U§(param2);
         if(_loc5_ || param2)
         {
            this.§>!§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager);
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(param2);
            if(!_loc4_)
            {
               if(§§pop() != -1)
               {
                  addr50:
                  §§push(param2);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr73);
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(_loc3_ || _loc3_)
                  {
                     addr72:
                     §§push(int(§§pop()));
                  }
               }
               addr73:
               return §§pop().§`!^§(§§pop(),§§pop());
            }
            §§goto(addr72);
         }
         §§goto(addr50);
      }
      
      public function §1!%§(param1:§>x§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§&<§())
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §9o§(param1:§>x§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§&<§())
         {
            if(!(_loc6_ && _loc2_))
            {
               §§push(_loc2_);
               if(!(_loc6_ && this))
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
         var _loc3_:§>x§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() >= LevelManager.§@!N§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§;X§(_loc2_);
               if(_loc6_)
               {
                  §§push(this.§9o§(_loc3_));
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr68:
                     if(_loc5_ && _loc1_)
                     {
                        continue;
                     }
                     addr88:
                     _loc1_ = §§pop() + _loc4_;
                     do
                     {
                        _loc2_++;
                     }
                     while(_loc5_ && this);
                     
                     if(_loc6_)
                     {
                        if(true)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§goto(addr68);
                           }
                           §§goto(addr88);
                        }
                        addr59:
                     }
                     while(true)
                     {
                        §§goto(addr59);
                     }
                     addr97:
                  }
               }
               §§goto(addr97);
            }
            break;
         }
         return §§pop();
      }
      
      public function §`!g§(param1:§>x§) : int
      {
         return param1.§&<§().length * 3;
      }
      
      public function §,!b§(param1:§>x§) : int
      {
         return param1.§&<§().length;
      }
      
      public function §7L§(param1:§>x§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&<§())
         {
            if(_loc6_)
            {
               if(this.getEagleScoreForLevel(_loc3_) == 100)
               {
                  if(!(_loc7_ && param1))
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §`r§() : Dictionary
      {
         return this.§-`§;
      }
      
      public function get §>!k§() : Boolean
      {
         return this.§0"0§;
      }
      
      public function set §>!k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0"0§ = param1;
         }
      }
      
      public function get §]F§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §]!@§() : String
      {
         return this.§8!R§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§>x§ = null;
         var _loc7_:§>x§ = null;
         if(!_loc8_)
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
                     if(!_loc8_)
                     {
                        if(§§pop() != LevelManager.§%!§)
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
                                 while(true)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          break loop2;
                                       }
                                       while(_loc9_ || _loc2_)
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(true);
                                             if(_loc9_ || _loc3_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr107);
                                             }
                                             addr83:
                                             if(_loc9_ || param1)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr122);
                                          }
                                       }
                                       if(!(_loc8_ && param1))
                                       {
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(this.getEagleScoreForLevel(param1));
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       §§push(0);
                                       if(_loc8_)
                                       {
                                          continue loop3;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§goto(addr45);
                                          }
                                          else
                                          {
                                             if(_loc9_)
                                             {
                                                if(true)
                                                {
                                                   addr124:
                                                   §§push(param1);
                                                }
                                                continue loop1;
                                                break loop0;
                                             }
                                             addr121:
                                             §§push(false);
                                          }
                                          addr122:
                                          return §§pop();
                                       }
                                       §§goto(addr124);
                                    }
                                    continue loop2;
                                 }
                              }
                              if(!_loc8_)
                              {
                                 §§goto(addr83);
                                 §§push(true);
                              }
                           }
                        }
                        addr107:
                        return §§pop();
                        §§push(true);
                     }
                     break;
                  }
               }
               §§goto(addr121);
            }
            var _loc2_:Array = §§pop().split("-");
            if(_loc9_ || this)
            {
               if(_loc2_.length == 2)
               {
                  if(_loc9_ || _loc2_)
                  {
                     addr147:
                     §§push(int(parseInt(_loc2_[0])));
                     if(_loc9_)
                     {
                        _loc4_ = §§pop();
                        §§goto(addr170);
                     }
                     _loc5_ = §§pop();
                  }
                  addr170:
                  if(!(_loc8_ && this))
                  {
                     §§push(int(parseInt(_loc2_[1])));
                  }
                  §§push((_loc6_ = LevelManager.§^_§(param1)).pageIndexes[0] == _loc4_);
                  if(!(_loc8_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc5_);
                              if(_loc9_)
                              {
                                 §§push(1);
                                 if(_loc9_ || param1)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§goto(addr224);
                                    }
                                    §§goto(addr359);
                                 }
                                 §§goto(addr244);
                              }
                              §§goto(addr371);
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr235);
                     }
                     addr224:
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           §§push(true);
                           if(_loc9_ || param1)
                           {
                              §§goto(addr235);
                           }
                           else
                           {
                              §§goto(addr359);
                           }
                        }
                        else
                        {
                           addr341:
                           §§push(true);
                           if(_loc9_ || this)
                           {
                              §§goto(addr359);
                           }
                        }
                        addr359:
                        return §§pop();
                     }
                     §§push(_loc5_);
                     if(_loc9_)
                     {
                        §§push(1);
                        if(_loc9_)
                        {
                           addr244:
                           if(§§pop() > §§pop())
                           {
                              if(!(_loc8_ && this))
                              {
                                 §§push(_loc4_);
                                 if(!_loc8_)
                                 {
                                    §§goto(addr255);
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr341);
                           }
                           else
                           {
                              §§push(_loc4_);
                              if(!_loc8_)
                              {
                                 §§push(1);
                                 if(!_loc8_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          if(_loc7_ = LevelManager.§^_§(_loc4_ - 1 + "-1"))
                                          {
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                §§push(_loc4_ - 1 + "-");
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(§§pop() + _loc7_.levelsPerPage);
                                                }
                                                _loc3_ = §§pop();
                                             }
                                          }
                                          §§goto(addr316);
                                       }
                                       §§goto(addr371);
                                    }
                                    §§goto(addr316);
                                 }
                                 §§goto(addr371);
                              }
                           }
                           §§goto(addr330);
                        }
                        §§goto(addr371);
                     }
                     addr255:
                     §§push(§§pop() + "-");
                     if(!_loc8_)
                     {
                        §§push(§§pop() + (_loc5_ - 1));
                     }
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        _loc3_ = §§pop();
                        §§goto(addr381);
                     }
                     if(§§pop())
                     {
                        if(_loc9_ || _loc2_)
                        {
                           §§push(this.getScoreForLevel(_loc3_));
                           if(!_loc8_)
                           {
                              addr330:
                              §§push(0);
                              if(_loc9_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc8_ && param1)
                                    {
                                       §§goto(addr381);
                                    }
                                 }
                                 else
                                 {
                                    addr371:
                                    if(this.getEagleScoreForLevel(_loc3_) > 0)
                                    {
                                       if(_loc9_ || _loc3_)
                                       {
                                          §§goto(addr380);
                                       }
                                       else
                                       {
                                          §§goto(addr381);
                                       }
                                    }
                                    §§goto(addr381);
                                 }
                                 §§goto(addr381);
                              }
                           }
                           §§goto(addr371);
                        }
                     }
                     §§goto(addr381);
                     addr380:
                     return true;
                  }
                  addr235:
                  return §§pop();
               }
               addr381:
               if(_loc9_ || param1)
               {
                  addr316:
                  §§push(_loc3_);
                  addr273:
               }
               return false;
            }
            §§goto(addr147);
         }
         §§goto(addr121);
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
      
      public function get §+"?§() : Dictionary
      {
         return this.§-`§;
      }
   }
}
