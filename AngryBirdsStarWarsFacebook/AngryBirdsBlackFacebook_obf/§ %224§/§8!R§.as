package § "4§
{
   import §1!i§.§;7§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §8!R§ extends EventDispatcher
   {
      
      protected static const §>w§:Number = 1000;
      
      protected static const §=k§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>w§ = 1000;
            do
            {
               §=k§ = 60;
            }
            while(_loc2_);
            
         }
      }
      
      protected var §,`§:Dictionary;
      
      protected var §-!T§:Dictionary;
      
      protected var §7#_§:Dictionary;
      
      protected var §&#^§:Dictionary;
      
      protected var §<e§:Boolean = false;
      
      protected var §1"N§:String;
      
      protected var §@#L§:String;
      
      protected var §+!b§:§+"2§;
      
      protected var §,'§:Timer;
      
      public function §8!R§(param1:String, param2:§+"2§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§@#L§ = param1;
               loop1:
               while(true)
               {
                  this.§+!b§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§,`§ = new Dictionary();
                     while(true)
                     {
                        this.§-!T§ = new Dictionary();
                        continue loop1;
                        addr62:
                        if(_loc4_ || _loc3_)
                        {
                           loop7:
                           while(true)
                           {
                              this.§<e§ = false;
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              addr75:
                              while(_loc4_)
                              {
                                 §§goto(addr62);
                                 continue loop7;
                              }
                              while(_loc4_)
                              {
                                 this.§&#^§ = new Dictionary();
                                 §§goto(addr60);
                              }
                              addr60:
                              continue loop0;
                           }
                           return;
                           addr44:
                           addr69:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §3"P§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§>!w§));
         }
         do
         {
            this.§1"N§ = null;
         }
         while(_loc3_);
         
      }
      
      public function §=!d§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§1"N§ != param1)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(this.§,'§));
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(this.§,'§.running));
                              if(!_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 loop4:
                                 while(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(false);
                                       break loop3;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc3_)
                                    {
                                       §§goto(addr106);
                                    }
                                    while(true)
                                    {
                                       break loop4;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(true);
                                    if(!(_loc3_ || this))
                                    {
                                       break loop3;
                                    }
                                    if(_loc3_ || this)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                              break;
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr65);
                  }
                  if(_loc3_ || _loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr106);
               }
            }
            addr106:
            return true;
         }
         §§goto(addr82);
      }
      
      public function §;#N§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§=k§);
         if(_loc4_)
         {
            §§push(§§pop() - this.§,'§.currentCount);
            if(_loc4_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() / §=k§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() % §=k§);
         }
         var _loc3_:int = §§pop();
         if(!_loc5_)
         {
            if(_loc3_ < 10)
            {
               if(_loc4_ || this)
               {
                  §§push("");
                  if(_loc4_ || _loc1_)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           §§push(§§pop() + ":0");
                           if(!_loc5_)
                           {
                              §§push(_loc3_);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_ || this)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr148);
                              }
                              addr147:
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr148);
                        }
                     }
                     else
                     {
                        addr124:
                        §§push(§§pop() + §§pop());
                        if(!(_loc5_ && _loc1_))
                        {
                           addr148:
                           §§push(§§pop() + ":");
                           if(_loc4_)
                           {
                              addr146:
                              return _loc3_;
                           }
                        }
                     }
                  }
               }
               else
               {
                  addr113:
                  §§push("");
                  if(_loc4_ || this)
                  {
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        §§goto(addr124);
                     }
                     §§goto(addr147);
                  }
               }
               §§goto(addr146);
            }
         }
         §§goto(addr113);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§;7§ = null;
         if(!(_loc4_ && param1))
         {
            if(this.§,`§[param1])
            {
               addr41:
               _loc2_ = this.§,`§[param1];
               if(!(_loc4_ && _loc2_))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;7§ = null;
         if(!(_loc3_ && param1))
         {
            if(this.§-!T§[param1])
            {
               _loc2_ = this.§-!T§[param1];
               addr42:
               if(!_loc3_)
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
         if(_loc3_ || _loc2_)
         {
            §§push(this.getScoreForLevel(param1));
            while(true)
            {
               §§push(0);
               addr106:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  §§goto(addr107);
               }
            }
            addr105:
         }
         while(true)
         {
            §§push(this.getEagleScoreForLevel(param1));
            if(!(_loc2_ && _loc2_))
            {
               §§push(0);
               if(!_loc2_)
               {
                  §§goto(addr76);
                  §§push(§§pop() > §§pop());
               }
               else
               {
                  §§goto(addr106);
               }
               addr107:
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     do
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(!(_loc3_ || param1))
                           {
                              break;
                           }
                           if(_loc3_ || param1)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(!(_loc3_ || param1));
                     
                     return §§pop();
                     addr76:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
               return §§pop();
            }
            §§goto(addr105);
            §§goto(addr106);
         }
      }
      
      public function §1!H§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§7#_§[param1] = param2;
         }
      }
      
      public function §8"W§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§7#_§[param1] = param2;
         }
      }
      
      public function §9!R§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;7§ = new §;7§(param2);
         if(!(_loc4_ && _loc3_))
         {
            this.§,`§[param1] = _loc3_;
         }
      }
      
      public function §]"D§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;7§ = new §;7§(param2);
         if(_loc5_ || param1)
         {
            this.§-!T§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§+!b§);
         §§push(param1);
         if(!(_loc4_ && this))
         {
            §§push(param2);
            if(_loc3_ || param2)
            {
               if(§§pop() != -1)
               {
                  addr46:
                  §§push(param2);
                  if(!(_loc4_ && param1))
                  {
                     §§push(int(§§pop()));
                     if(!(_loc4_ && _loc3_))
                     {
                        addr62:
                     }
                  }
                  else
                  {
                     addr83:
                     §§push(int(§§pop()));
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr83);
                  }
               }
               return §§pop().getNumStarsForLevel(§§pop(),§§pop());
            }
            §§goto(addr62);
         }
         §§goto(addr46);
      }
      
      public function §]#B§(param1:§3![§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§0!_§())
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
      
      public function §'e§(param1:§3![§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§0!_§())
         {
            if(_loc7_ || _loc2_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + this.getStarsForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §@!L§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§3![§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               break;
            }
            if(§§pop() >= this.§+!b§.getEpisodeCount())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = this.§+!b§.getEpisode(_loc2_);
            if(_loc5_)
            {
               §§push(this.§'e§(_loc3_));
               if(!(_loc6_ && _loc1_))
               {
                  §§push(int(§§pop()));
               }
               loop1:
               while(true)
               {
                  _loc4_ = §§pop();
                  addr82:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               _loc2_++;
               if(!_loc5_)
               {
                  continue;
               }
               if(!(_loc6_ && this))
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr59);
               }
               §§goto(addr82);
            }
         }
         return §§pop();
      }
      
      public function §3h§(param1:§3![§) : int
      {
         return param1.§0!_§().length * 3;
      }
      
      public function §[#`§(param1:§3![§) : int
      {
         return param1.§0!_§().length;
      }
      
      public function §`"q§(param1:§3![§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0!_§())
         {
            if(_loc7_ || param1)
            {
               if(this.getEagleScoreForLevel(_loc3_) != 100)
               {
                  continue;
               }
               if(_loc6_)
               {
                  continue;
               }
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function get §4l§() : Dictionary
      {
         return this.§7#_§;
      }
      
      public function get §7!"§() : Dictionary
      {
         return this.§7#_§;
      }
      
      public function get §0#9§() : Boolean
      {
         return this.§<e§;
      }
      
      public function set §0#9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<e§ = param1;
         }
      }
      
      public function get §[#C§() : Timer
      {
         return this.§,'§;
      }
      
      public function get §+!+§() : String
      {
         return this.§1"N§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == null)
               {
                  addr120:
                  return false;
                  addr119:
               }
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc6_ || _loc2_))
                  {
                     break;
                  }
                  if(§§pop() != §+"2§.§7!k§)
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
                                 if(_loc5_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          break loop3;
                                       }
                                       while(true)
                                       {
                                          §§push(this.getEagleScoreForLevel(param1));
                                          if(_loc6_ || param1)
                                          {
                                             §§push(0);
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(true);
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         break loop5;
                                                      }
                                                      addr95:
                                                      if(!_loc5_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break loop4;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr119);
                                                }
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                       var _loc3_:§3![§ = this.§+!b§.getEpisodeForLevel(param1);
                                       §§push(_loc3_.getLevelIndex(param1));
                                       if(_loc6_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var _loc4_:*;
                                       §§push(_loc4_ = §§pop());
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(0);
                                          if(_loc6_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(true);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   addr203:
                                                   §§push(true);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr245);
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             addr261:
                                             addr260:
                                             if(_loc4_ > 0)
                                             {
                                                addr267:
                                                _loc2_ = _loc3_.getLevelName(_loc4_ - 1);
                                                addr268:
                                                addr262:
                                                addr266:
                                             }
                                             §§push(_loc2_);
                                             if(_loc6_)
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr240:
                                                            §§push(this.getScoreForLevel(_loc2_));
                                                            if(_loc6_)
                                                            {
                                                               addr243:
                                                               if(§§pop() <= 0)
                                                               {
                                                                  addr183:
                                                                  §§push(this.getEagleScoreForLevel(_loc2_));
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 if(!(_loc6_ || this))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr183);
                                                                                    }
                                                                                    §§goto(addr268);
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr176:
                                                                                    §§push(false);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr203);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr244:
                                                                                    §§push(true);
                                                                                 }
                                                                                 addr245:
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr203);
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                        §§goto(addr261);
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               §§goto(addr244);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr266);
                                             }
                                             §§goto(addr267);
                                             §§goto(addr203);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr114);
                                 }
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 §§push(true);
                                 §§goto(addr95);
                              }
                              §§goto(addr28);
                           }
                           §§goto(addr120);
                        }
                     }
                  }
                  addr114:
                  return §§pop();
                  §§push(true);
               }
            }
         }
         §§goto(addr94);
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
   }
}
