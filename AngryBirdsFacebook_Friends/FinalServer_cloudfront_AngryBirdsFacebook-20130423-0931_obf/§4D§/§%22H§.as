package §4D§
{
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §"H§ extends EventDispatcher
   {
      
      protected static const §=!0§:Number = 1000;
      
      protected static const §#y§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §=!0§ = 1000;
            do
            {
               §#y§ = 60;
            }
            while(_loc1_);
            
         }
      }
      
      protected var §&!Q§:Dictionary;
      
      protected var §?!C§:Dictionary;
      
      protected var §;" §:Dictionary;
      
      protected var §]!Z§:Dictionary;
      
      protected var §&!E§:Boolean;
      
      protected var §[l§:String;
      
      protected var §@"R§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §"H§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§@"R§ = param1;
               loop1:
               while(_loc2_)
               {
                  this.§&!Q§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     this.§?!C§ = new Dictionary();
                     while(!_loc3_)
                     {
                        this.§;" § = new Dictionary();
                        loop4:
                        while(_loc2_)
                        {
                           this.§]!Z§ = new Dictionary();
                           while(true)
                           {
                              this.§&!E§ = false;
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                           }
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §&!g§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§[!y§));
         }
         do
         {
            this.§[l§ = null;
         }
         while(_loc2_ && this);
         
      }
      
      public function §7q§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§[l§ == param1)
            {
               if(_loc3_ || _loc3_)
               {
                  return true;
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr44:
                     while(this.mMightyEagleTimer.running)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr67);
                        }
                        continue loop0;
                     }
                     addr20:
                     §§push(true);
                     if(_loc2_ && _loc3_)
                     {
                        addr67:
                        return false;
                     }
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr44);
         }
         §§goto(addr75);
      }
      
      public function §7i§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§#y§);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc4_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc4_)
         {
            §§push(§§pop() / §#y§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(_loc4_ || this)
         {
            §§push(§§pop() % §#y§);
         }
         var _loc3_:int = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(_loc3_ < 10)
            {
               if(_loc4_ || _loc3_)
               {
                  addr83:
                  §§push("");
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(_loc2_);
                     if(_loc4_ || _loc1_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc5_ && _loc2_))
                        {
                           addr107:
                           §§push(":0");
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr136:
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    addr154:
                                    §§push(§§pop() + ":");
                                    if(!_loc5_)
                                    {
                                       addr158:
                                       §§push(§§pop() + _loc3_);
                                    }
                                 }
                                 else
                                 {
                                    addr146:
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§goto(addr154);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr158);
                              }
                              return §§pop();
                           }
                           §§goto(addr154);
                        }
                        else
                        {
                           addr143:
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              §§goto(addr146);
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr107);
               }
               else
               {
                  addr140:
                  §§push("");
                  if(_loc4_)
                  {
                     §§goto(addr143);
                  }
               }
               §§goto(addr158);
            }
            §§goto(addr140);
         }
         §§goto(addr83);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9!D§ = null;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§&!Q§[param1])
            {
               addr42:
               _loc2_ = this.§&!Q§[param1];
               if(!_loc3_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9!D§ = null;
         if(_loc3_ || _loc2_)
         {
            if(this.§?!C§[param1])
            {
               addr41:
               _loc2_ = this.§?!C§[param1];
               if(!_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §>!<§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr95:
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(false);
                              if(_loc3_ && this)
                              {
                                 break loop6;
                              }
                              addr33:
                              if(_loc2_ || this)
                              {
                                 return §§pop();
                              }
                              addr78:
                              while(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop6;
                                 }
                                 continue loop2;
                                 §§goto(addr33);
                              }
                           }
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
         }
         §§goto(addr95);
      }
      
      public function §?!q§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§;" §[param1] = param2;
         }
      }
      
      public function §2"2§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§]!Z§[param1] = param2;
         }
      }
      
      public function §!y§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§9!D§ = new §9!D§(param2);
         if(_loc4_ || _loc3_)
         {
            this.§&!Q§[param1] = _loc3_;
         }
      }
      
      public function §3!Z§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§9!D§ = new §9!D§(param2);
         if(_loc4_ || param1)
         {
            this.§?!C§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(LevelManager);
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(param2);
            if(!_loc3_)
            {
               if(§§pop() != -1)
               {
                  addr51:
                  §§push(param2);
                  if(!(_loc3_ && this))
                  {
                     addr59:
                     §§push(int(§§pop()));
                     if(_loc3_)
                     {
                     }
                     §§goto(addr69);
                  }
                  addr68:
                  §§push(int(§§pop()));
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(!_loc3_)
                  {
                     §§goto(addr68);
                  }
               }
               addr69:
               return §§pop().§=S§(§§pop(),§§pop());
            }
            §§goto(addr59);
         }
         §§goto(addr51);
      }
      
      public function §0!P§(param1:§3-§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§-"K§())
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               if(!(_loc7_ && this))
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §[!a§(param1:§3-§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§-"K§())
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(_loc7_)
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
         var _loc3_:§3-§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_ || this)
            {
               if(§§pop() >= LevelManager.§0"5§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§1!m§(_loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push(this.§[!a§(_loc3_));
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr63:
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     addr83:
                     _loc1_ = §§pop() + _loc4_;
                     do
                     {
                        _loc2_++;
                     }
                     while(!_loc6_);
                     
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc6_)
                           {
                              §§goto(addr63);
                           }
                           §§goto(addr83);
                        }
                        addr59:
                     }
                     while(true)
                     {
                        §§goto(addr59);
                     }
                     addr92:
                  }
               }
               §§goto(addr92);
            }
            break;
         }
         return §§pop();
      }
      
      public function §3W§(param1:§3-§) : int
      {
         return param1.§-"K§().length * 3;
      }
      
      public function §="'§(param1:§3-§) : int
      {
         return param1.§-"K§().length;
      }
      
      public function §]L§(param1:§3-§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-"K§())
         {
            if(!(_loc7_ && _loc2_))
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
      
      public function get §2%§() : Dictionary
      {
         return this.§;" §;
      }
      
      public function get §"-§() : Boolean
      {
         return this.§&!E§;
      }
      
      public function set §"-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§&!E§ = param1;
         }
      }
      
      public function get §?b§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §@m§() : String
      {
         return this.§[l§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§3-§ = null;
         var _loc7_:§3-§ = null;
         if(_loc9_ || _loc2_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != null; if(_loc8_ && _loc3_)
            {
               continue;
            },if(§§pop() == LevelManager.§1!c§)
            {
               if(!(_loc9_ || _loc3_))
               {
                  loop2:
                  while(true)
                  {
                     addr84:
                     addr60:
                     loop3:
                     while(true)
                     {
                        §§push(this.getScoreForLevel(param1));
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           loop5:
                           while(§§pop() <= §§pop())
                           {
                              while(true)
                              {
                                 §§push(this.getEagleScoreForLevel(param1));
                                 if(!_loc9_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(0);
                                 if(_loc8_ && _loc3_)
                                 {
                                    continue loop5;
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc9_ || _loc2_)
                                    {
                                       break loop3;
                                    }
                                    if(_loc9_)
                                    {
                                       if(!(_loc9_ || _loc2_))
                                       {
                                          break loop5;
                                       }
                                       if(!_loc9_)
                                       {
                                          continue loop2;
                                       }
                                       if(false)
                                       {
                                          continue loop3;
                                       }
                                       addr144:
                                       §§push(param1);
                                    }
                                    else
                                    {
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr144);
                              }
                              return §§pop();
                           }
                           if(_loc8_ && _loc3_)
                           {
                              break loop0;
                           }
                           §§push(true);
                           if(!(_loc8_ && this))
                           {
                              return §§pop();
                           }
                           §§goto(addr142);
                        }
                     }
                     §§push(true);
                     if(!_loc8_)
                     {
                        if(!(_loc8_ && _loc2_))
                        {
                           return §§pop();
                        }
                        addr136:
                        return §§pop();
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr136);
               §§push(true);
            },§§goto(addr84))
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc9_ || param1)
                  {
                     continue loop0;
                  }
                  addr145:
                  var _loc2_:Array = §§pop().split("-");
                  if(!_loc8_)
                  {
                     if(_loc2_.length == 2)
                     {
                        if(_loc9_ || this)
                        {
                           §§push(int(parseInt(_loc2_[0])));
                           if(_loc9_)
                           {
                              _loc4_ = §§pop();
                              §§goto(addr185);
                           }
                           _loc5_ = §§pop();
                        }
                        addr185:
                        if(!(_loc8_ && this))
                        {
                           addr178:
                           §§push(int(parseInt(_loc2_[1])));
                        }
                        §§push((_loc6_ = LevelManager.§5!T§(param1)).pageIndexes[0] == _loc4_);
                        if(!_loc8_)
                        {
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 §§pop();
                                 if(_loc9_ || _loc2_)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(1);
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc8_)
                                          {
                                             §§goto(addr239);
                                          }
                                          §§goto(addr395);
                                       }
                                       §§goto(addr382);
                                    }
                                    §§goto(addr350);
                                 }
                                 §§goto(addr262);
                              }
                           }
                        }
                        addr239:
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              §§push(true);
                              if(_loc9_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr382);
                           }
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
                                    if(_loc9_ || _loc3_)
                                    {
                                       addr262:
                                       §§push(_loc4_);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          addr270:
                                          §§push(§§pop() + "-");
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(§§pop() + (_loc5_ - 1));
                                          }
                                          §§push(§§pop());
                                          if(_loc9_ || this)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc8_)
                                             {
                                                addr308:
                                                if(_loc7_ = LevelManager.§5!T§(_loc4_ - 1 + "-1"))
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§push(_loc4_ - 1 + "-");
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + _loc7_.levelsPerPage);
                                                      }
                                                      _loc3_ = §§pop();
                                                   }
                                                }
                                             }
                                             addr336:
                                             §§push(_loc3_);
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc9_)
                                             {
                                                §§push(this.getScoreForLevel(_loc3_));
                                                if(_loc9_ || _loc3_)
                                                {
                                                   addr350:
                                                   §§push(0);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr371:
                                                            §§push(true);
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr395);
                                                         }
                                                         addr395:
                                                         return §§pop();
                                                      }
                                                      §§goto(addr382);
                                                      §§goto(addr394);
                                                   }
                                                   §§goto(addr382);
                                                }
                                                addr382:
                                                if(this.getEagleScoreForLevel(_loc3_) > 0)
                                                {
                                                   if(_loc8_ && _loc2_)
                                                   {
                                                      §§goto(addr396);
                                                   }
                                                   addr394:
                                                   §§push(true);
                                                }
                                                §§goto(addr396);
                                             }
                                             §§goto(addr371);
                                          }
                                          §§goto(addr396);
                                       }
                                    }
                                    §§goto(addr382);
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
                                             if(_loc9_ || param1)
                                             {
                                                §§goto(addr308);
                                             }
                                             §§goto(addr396);
                                          }
                                          §§goto(addr336);
                                       }
                                       §§goto(addr382);
                                    }
                                 }
                              }
                              §§goto(addr382);
                           }
                           §§goto(addr270);
                        }
                        §§goto(addr396);
                     }
                     addr396:
                     return false;
                  }
                  §§goto(addr178);
               }
            }
            §§goto(addr142);
            §§push(false);
         }
         §§goto(addr60);
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
      
      public function get §"!1§() : Dictionary
      {
         return this.§;" §;
      }
   }
}
