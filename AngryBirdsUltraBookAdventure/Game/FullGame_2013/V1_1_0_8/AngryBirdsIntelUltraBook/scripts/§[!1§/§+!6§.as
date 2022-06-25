package §[!1§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §<-§.§2B§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §+!6§ extends EventDispatcher
   {
      
      protected static const §9!V§:Number = 1000;
      
      protected static const §!!E§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!V§ = 1000;
            do
            {
               §!!E§ = 60;
            }
            while(!_loc1_);
            
         }
      }
      
      protected var §1!_§:Dictionary;
      
      protected var § !Z§:Dictionary;
      
      protected var §>Q§:Dictionary;
      
      protected var §8!T§:Dictionary;
      
      protected var §?!l§:Boolean;
      
      protected var §=i§:String;
      
      protected var §0!m§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §+!6§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§0!m§ = param1;
               loop1:
               while(true)
               {
                  this.§1!_§ = new Dictionary();
                  while(true)
                  {
                     this.§ !Z§ = new Dictionary();
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§>Q§ = new Dictionary();
                        loop4:
                        while(_loc3_ || param1)
                        {
                           continue loop1;
                           do
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                           while(this.§?!l§ = false, _loc2_ && param1);
                           
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private function §3!E§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§>!]§));
         }
         do
         {
            this.§=i§ = null;
         }
         while(!_loc3_);
         
      }
      
      public function §0!G§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§=i§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr72:
                     return true;
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr63);
                  }
               }
               §§push(true);
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr72);
               }
               else
               {
                  §§goto(addr63);
               }
            }
            §§goto(addr72);
         }
         addr63:
         return false;
      }
      
      public function §4!C§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§!!E§);
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
         if(!_loc4_)
         {
            §§push(§§pop() / §!!E§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!_loc4_)
         {
            §§push(§§pop() % §!!E§);
         }
         var _loc3_:int = §§pop();
         if(_loc5_)
         {
            if(_loc3_ < 10)
            {
               if(_loc5_ || _loc3_)
               {
                  addr54:
                  §§push("");
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_);
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_ || _loc3_)
                        {
                           §§push(":0");
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc4_)
                                    {
                                       §§goto(addr105);
                                    }
                                    else
                                    {
                                       addr124:
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                       }
                                       addr146:
                                       return §§pop() + §§pop();
                                       addr145:
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr136:
                                    §§push(§§pop() + ":");
                                    if(_loc5_ || _loc1_)
                                    {
                                       addr144:
                                       §§goto(addr145);
                                       §§push(_loc3_);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr144);
                              }
                              addr105:
                              return §§pop();
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr144);
               }
               else
               {
                  addr106:
                  §§push("");
                  if(_loc5_ || _loc2_)
                  {
                     §§goto(addr124);
                  }
               }
               §§goto(addr124);
            }
            §§goto(addr106);
         }
         §§goto(addr54);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2B§ = null;
         if(_loc4_)
         {
            if(this.§1!_§[param1])
            {
               addr37:
               _loc2_ = this.§1!_§[param1];
               if(!(_loc3_ && this))
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2B§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§ !Z§[param1])
            {
               addr42:
               _loc2_ = this.§ !Z§[param1];
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function §8!N§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.getScoreForLevel(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr100:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr101:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && param1))
                              {
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(true);
                              }
                              else
                              {
                                 addr24:
                                 §§push(false);
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    addr103:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                              }
                              addr94:
                              return §§pop();
                           }
                           §§goto(addr24);
                        }
                        return §§pop();
                        addr82:
                     }
                     §§goto(addr103);
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §0^§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§>Q§[param1] = param2;
         }
      }
      
      public function §8?§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§8!T§[param1] = param2;
         }
      }
      
      public function §<C§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2B§ = new §2B§(param2);
         if(_loc4_ || param2)
         {
            this.§1!_§[param1] = _loc3_;
         }
      }
      
      public function §3!L§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2B§ = new §2B§(param2);
         if(!_loc5_)
         {
            this.§ !Z§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager);
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(param2);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() != -1)
               {
                  addr55:
                  §§push(param2);
                  if(!(_loc4_ && param2))
                  {
                     §§push(int(§§pop()));
                     if(_loc3_)
                     {
                        addr66:
                     }
                  }
                  else
                  {
                     addr72:
                     §§push(int(§§pop()));
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(_loc3_)
                  {
                     §§goto(addr72);
                  }
               }
               return §§pop().§2!&§(§§pop(),§§pop());
            }
            §§goto(addr66);
         }
         §§goto(addr55);
      }
      
      public function §4!`§(param1:§8K§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§9!P§())
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(_loc7_ || _loc3_)
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §0q§(param1:§8K§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§9!P§())
         {
            if(_loc6_ || _loc2_)
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
         var _loc3_:§8K§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               break;
            }
            if(§§pop() >= LevelManager.§%!1§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = LevelManager.§!!A§(_loc2_);
            if(!_loc5_)
            {
               §§push(this.§0q§(_loc3_));
               if(_loc6_)
               {
                  §§push(int(§§pop()));
               }
               loop1:
               while(true)
               {
                  _loc4_ = §§pop();
                  addr92:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr52);
            }
         }
         return §§pop();
      }
      
      public function §>9§(param1:§8K§) : int
      {
         return param1.§9!P§().length * 3;
      }
      
      public function §^!9§(param1:§8K§) : int
      {
         return param1.§9!P§().length;
      }
      
      public function §;C§(param1:§8K§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9!P§())
         {
            if(!(_loc7_ && param1))
            {
               if(this.getEagleScoreForLevel(_loc3_) != 100)
               {
                  continue;
               }
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function get § !l§() : Dictionary
      {
         return this.§>Q§;
      }
      
      public function get §&m§() : Boolean
      {
         return this.§?!l§;
      }
      
      public function set §&m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§?!l§ = param1;
         }
      }
      
      public function get §7o§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §=m§() : String
      {
         return this.§=i§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§8K§ = null;
         var _loc7_:§8K§ = null;
         if(!(_loc8_ && param1))
         {
            §§push(param1);
            if(!(_loc8_ && this))
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc8_ && param1))
                     {
                        if(§§pop() == LevelManager.§&!r§)
                        {
                           if(_loc9_ || _loc3_)
                           {
                              §§push(true);
                              break;
                           }
                           addr135:
                           while(true)
                           {
                           }
                           addr135:
                        }
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
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(0);
                                       if(!(_loc8_ && param1))
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(!(_loc9_ || this))
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             if(_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   break loop3;
                                                }
                                                if(_loc9_ || this)
                                                {
                                                   §§push(true);
                                                   if(!_loc8_)
                                                   {
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr147:
                                                         return §§pop();
                                                      }
                                                      break loop0;
                                                   }
                                                   §§goto(addr105);
                                                }
                                                continue loop0;
                                             }
                                             if(_loc9_ || param1)
                                             {
                                                continue;
                                             }
                                             §§goto(addr135);
                                          }
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 var _loc2_:Array = param1.split("-");
                                 if(!_loc8_)
                                 {
                                    if(_loc2_.length == 2)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(int(parseInt(_loc2_[0])));
                                          if(!(_loc8_ && this))
                                          {
                                             _loc4_ = §§pop();
                                             addr190:
                                             if(!(_loc8_ && this))
                                             {
                                                addr183:
                                                §§push(int(parseInt(_loc2_[1])));
                                             }
                                             §§push((_loc6_ = LevelManager.§`r§(param1)).pageIndexes[0] == _loc4_);
                                             if(!_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      §§pop();
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            §§push(1);
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  addr254:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        addr262:
                                                                        §§push(true);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr265);
                                                                        }
                                                                        §§goto(addr405);
                                                                     }
                                                                     §§goto(addr381);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(_loc9_)
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
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       addr405:
                                                                                       return §§pop();
                                                                                       §§push(true);
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr307:
                                                                                    §§push(1);
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc7_ = LevelManager.§`r§(_loc4_ - 1 + "-1"))
                                                                                             {
                                                                                                if(_loc9_ || _loc2_)
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
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       addr352:
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr355:
                                                                                             §§push(this.getScoreForLevel(_loc3_));
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr360:
                                                                                                §§push(0);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr363:
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      if(!(_loc9_ || this))
                                                                                                      {
                                                                                                         §§goto(addr406);
                                                                                                      }
                                                                                                      addr381:
                                                                                                      §§push(true);
                                                                                                      if(_loc8_ && _loc2_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr405);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr396:
                                                                                                      if(this.getEagleScoreForLevel(_loc3_) > 0)
                                                                                                      {
                                                                                                         if(_loc8_ && _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr406);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr396);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                              }
                                                                              §§goto(addr355);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                        }
                                                                        §§goto(addr363);
                                                                     }
                                                                     §§goto(addr396);
                                                                  }
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         §§goto(addr360);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   addr265:
                                                   return §§pop();
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr405);
                                          }
                                          _loc5_ = §§pop();
                                       }
                                       §§goto(addr190);
                                    }
                                    addr406:
                                    return false;
                                 }
                                 §§goto(addr183);
                              }
                              if(!(_loc8_ && param1))
                              {
                                 addr105:
                                 return §§pop();
                                 §§push(true);
                              }
                           }
                        }
                     }
                     §§goto(addr150);
                  }
                  return §§pop();
               }
               §§goto(addr147);
               §§push(false);
            }
            §§goto(addr150);
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
      
      public function get §`"!§() : Dictionary
      {
         return this.§>Q§;
      }
   }
}
