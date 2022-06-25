package §_-ry§
{
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-eS§.§_-BK§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-00s§ extends EventDispatcher
   {
      
      protected static const §_-02F§:Number = 1000;
      
      protected static const §_-vH§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-02F§ = 1000;
         }
         do
         {
            §_-vH§ = 60;
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected var §_-092§:Dictionary;
      
      protected var §_-5r§:Dictionary;
      
      protected var §_-08w§:Dictionary;
      
      protected var §_-WH§:Dictionary;
      
      protected var §_-BR§:Boolean;
      
      protected var §_-UA§:String;
      
      protected var §_-pl§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-00s§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-pl§ = param1;
               while(true)
               {
                  this.§_-092§ = new Dictionary();
                  addr90:
                  if(_loc2_ || this)
                  {
                     this.§_-08w§ = new Dictionary();
                     while(_loc2_)
                     {
                        this.§_-WH§ = new Dictionary();
                        do
                        {
                           this.§_-BR§ = false;
                        }
                        while(_loc3_);
                        
                        if(!(_loc2_ || param1))
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        return;
                        addr53:
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr90);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§_-5r§ = new Dictionary();
                              continue loop3;
                           }
                           addr103:
                        }
                        §§goto(addr53);
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      private function §_-NO§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-Nd§));
            do
            {
               this.§_-UA§ = null;
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §_-DG§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-UA§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  if(!(_loc3_ && param1))
                  {
                     if(_loc2_ || _loc3_)
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
               if(_loc3_ && this)
               {
                  addr75:
                  return false;
               }
               if(!_loc3_)
               {
                  return §§pop();
               }
               §§goto(addr82);
            }
         }
         §§goto(addr82);
      }
      
      public function §_-FM§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§_-vH§);
         if(!(_loc4_ && _loc2_))
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
            §§push(§§pop() / §_-vH§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!_loc4_)
         {
            §§push(§§pop() % §_-vH§);
         }
         var _loc3_:int = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ < 10)
            {
               if(_loc5_ || this)
               {
                  addr69:
                  §§push("");
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_ || _loc1_)
                        {
                           §§push(":0");
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_)
                                    {
                                       return §§pop();
                                    }
                                    addr134:
                                    §§push(_loc3_);
                                 }
                              }
                              else
                              {
                                 addr119:
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                    addr122:
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr131:
                                       §§push(§§pop() + ":");
                                       if(_loc5_)
                                       {
                                          §§goto(addr134);
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                              }
                              addr136:
                              return §§pop();
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr134);
               }
               else
               {
                  addr116:
                  §§push("");
                  if(!_loc4_)
                  {
                     §§goto(addr119);
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr116);
         }
         §§goto(addr69);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-BK§ = null;
         if(!_loc3_)
         {
            if(this.§_-092§[param1])
            {
               addr37:
               _loc2_ = this.§_-092§[param1];
               if(_loc4_ || _loc3_)
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
         var _loc2_:§_-BK§ = null;
         if(_loc3_ || this)
         {
            if(this.§_-5r§[param1])
            {
               addr41:
               _loc2_ = this.§_-5r§[param1];
               if(!(_loc4_ && this))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §_-Z3§(param1:String) : Boolean
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
                              if(_loc2_ || this)
                              {
                                 if(!(_loc3_ && this))
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
                              if(!(_loc2_ || this))
                              {
                                 break loop6;
                              }
                              addr28:
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              addr75:
                              while(!_loc3_)
                              {
                                 continue loop6;
                                 §§goto(addr28);
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
                  return §§pop();
               }
            }
         }
         §§goto(addr95);
      }
      
      public function §_-09L§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§_-08w§[param1] = param2;
         }
      }
      
      public function §_-fc§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§_-WH§[param1] = param2;
         }
      }
      
      public function §_-eF§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-BK§ = new §_-BK§(param2);
         if(!_loc5_)
         {
            this.§_-092§[param1] = _loc3_;
         }
      }
      
      public function §_-09c§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-BK§ = new §_-BK§(param2);
         if(_loc5_)
         {
            this.§_-5r§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager);
         §§push(param1);
         if(!_loc4_)
         {
            §§push(param2);
            if(!(_loc4_ && this))
            {
               if(§§pop() != -1)
               {
                  addr40:
                  §§push(param2);
                  if(!(_loc4_ && this))
                  {
                     §§push(int(§§pop()));
                     if(_loc3_ || param2)
                     {
                     }
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(!(_loc4_ && this))
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            return §§pop().§_-g0§(§§pop(),§§pop());
         }
         §§goto(addr40);
      }
      
      public function §_-Od§(param1:§_-0C5§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§_-3R§())
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §_-Zh§(param1:§_-0C5§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§_-3R§())
         {
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc2_);
               if(_loc6_ || this)
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
         var _loc3_:§_-0C5§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() >= LevelManager.§_-td§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§_-h8§(_loc2_);
               if(!_loc6_)
               {
                  §§push(this.§_-Zh§(_loc3_));
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr100:
                     while(true)
                     {
                        _loc4_ = §§pop();
                     }
                     addr87:
                     if(!(_loc5_ || _loc1_))
                     {
                        continue;
                     }
                     _loc1_ = §§pop();
                     do
                     {
                        _loc2_++;
                     }
                     while(!(_loc5_ || _loc2_));
                     
                     if(_loc5_ || this)
                     {
                        if(true)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc5_)
                           {
                              §§push(int(§§pop() + _loc4_));
                           }
                           if(!(_loc5_ || _loc2_))
                           {
                              break;
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr100);
                        addr63:
                     }
                     while(true)
                     {
                        §§goto(addr63);
                     }
                     addr101:
                  }
               }
               §§goto(addr101);
            }
            break;
         }
         return §§pop();
      }
      
      public function §_-C§(param1:§_-0C5§) : int
      {
         return param1.§_-3R§().length * 3;
      }
      
      public function §_-q4§(param1:§_-0C5§) : int
      {
         return param1.§_-3R§().length;
      }
      
      public function §_-80§(param1:§_-0C5§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-3R§())
         {
            if(!(_loc7_ && this))
            {
               if(this.getEagleScoreForLevel(_loc3_) == 100)
               {
                  if(_loc6_ || this)
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-0Es§() : Dictionary
      {
         return this.§_-08w§;
      }
      
      public function get §_-nn§() : Boolean
      {
         return this.§_-BR§;
      }
      
      public function set §_-nn§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-BR§ = param1;
         }
      }
      
      public function get §_-Br§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-fR§() : String
      {
         return this.§_-UA§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§_-0C5§ = null;
         var _loc7_:§_-0C5§ = null;
         if(_loc8_ || param1)
         {
            §§push(param1);
            loop0:
            while(§§pop() != null)
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc9_ && this))
                  {
                     if(!_loc8_)
                     {
                        break;
                     }
                     if(§§pop() != LevelManager.§_-1q§)
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
                                    if(!_loc9_)
                                    {
                                       addr79:
                                       §§push(true);
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc9_ && _loc3_)
                                          {
                                             break loop3;
                                          }
                                          while(true)
                                          {
                                             §§push(this.getEagleScoreForLevel(param1));
                                             if(!_loc9_)
                                             {
                                                §§push(0);
                                                if(_loc8_ || _loc2_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop1;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         break loop0;
                                                      }
                                                      §§push(true);
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr116:
                                                         return §§pop();
                                                      }
                                                      §§goto(addr79);
                                                   }
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             continue loop3;
                                          }
                                          var _loc2_:Array = param1.split("-");
                                          if(_loc8_)
                                          {
                                             if(_loc2_.length == 2)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   §§push(int(parseInt(_loc2_[0])));
                                                   if(!_loc9_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      §§goto(addr154);
                                                   }
                                                   _loc5_ = §§pop();
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr385);
                                          }
                                          addr154:
                                          if(_loc8_)
                                          {
                                             §§push(int(parseInt(_loc2_[1])));
                                          }
                                          §§push((_loc6_ = LevelManager.§_-N9§(param1)).pageIndexes[0] == _loc4_);
                                          if(_loc8_ || _loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§pop();
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(1);
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               addr218:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§goto(addr229);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr345:
                                                                     §§push(true);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 addr264:
                                                                                 §§push(§§pop() + "-");
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() + (_loc5_ - 1));
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr326:
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             addr334:
                                                                                             §§push(this.getScoreForLevel(_loc3_));
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr339:
                                                                                                §§push(0);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§goto(addr345);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr371:
                                                                                                         §§push(this.getEagleScoreForLevel(_loc3_));
                                                                                                         §§push(0);
                                                                                                      }
                                                                                                      §§goto(addr384);
                                                                                                   }
                                                                                                   §§goto(addr371);
                                                                                                }
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   if(!(_loc8_ || _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr385);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr385);
                                                                                             }
                                                                                             §§goto(addr371);
                                                                                          }
                                                                                          addr383:
                                                                                          addr384:
                                                                                          return §§pop();
                                                                                          §§push(true);
                                                                                       }
                                                                                       addr385:
                                                                                       return false;
                                                                                       addr282:
                                                                                    }
                                                                                    §§goto(addr334);
                                                                                 }
                                                                                 §§goto(addr326);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr282);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr286:
                                                                              §§push(1);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 addr294:
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(_loc7_ = LevelManager.§_-N9§(_loc4_ - 1 + "-1"))
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(_loc4_ - 1 + "-");
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                             }
                                                                                             _loc3_ = §§pop();
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 §§goto(addr326);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                        }
                                                                        §§goto(addr371);
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                            }
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr371);
                                                }
                                             }
                                             §§goto(addr218);
                                          }
                                          addr229:
                                          return §§pop();
                                       }
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr37);
                              }
                           }
                        }
                     }
                     addr110:
                     return §§pop();
                     §§push(true);
                  }
                  §§goto(addr119);
               }
            }
         }
         §§goto(addr116);
         §§push(false);
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
      
      public function get §_-0-n§() : Dictionary
      {
         return this.§_-08w§;
      }
   }
}
