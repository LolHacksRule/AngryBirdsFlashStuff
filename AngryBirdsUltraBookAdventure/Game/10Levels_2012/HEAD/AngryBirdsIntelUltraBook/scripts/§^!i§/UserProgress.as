package §^!i§
{
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §9!!§.Integer;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class UserProgress extends EventDispatcher
   {
      
      protected static const § I§:Number = 1000;
      
      protected static const §9!5§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § I§ = 1000;
            do
            {
               §9!5§ = 60;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      protected var §?5§:Dictionary;
      
      protected var §8#§:Dictionary;
      
      protected var §"!=§:Dictionary;
      
      protected var §&!?§:Dictionary;
      
      protected var §;!A§:Boolean;
      
      protected var §0K§:String;
      
      protected var §6![§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function UserProgress(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§6![§ = param1;
               loop1:
               while(true)
               {
                  this.§?5§ = new Dictionary();
                  while(true)
                  {
                     this.§8#§ = new Dictionary();
                     loop3:
                     while(!_loc3_)
                     {
                        this.§"!=§ = new Dictionary();
                        loop4:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              this.§&!?§ = new Dictionary();
                              do
                              {
                                 this.§;!A§ = false;
                              }
                              while(_loc3_ && _loc2_);
                              
                              if(!_loc3_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr55);
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §63§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§+!N§));
         }
         do
         {
            this.§0K§ = null;
         }
         while(!_loc2_);
         
      }
      
      public function §8E§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§0K§ != param1)
            {
               loop0:
               while(this.mMightyEagleTimer.running)
               {
                  if(!_loc3_)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr61:
                        §§push(false);
                        if(!(_loc3_ && param1))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr81:
                        return true;
                     }
                     return §§pop();
                  }
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               §§push(true);
               if(!_loc3_)
               {
                  return §§pop();
               }
               §§goto(addr61);
            }
            §§goto(addr81);
         }
         §§goto(addr83);
      }
      
      public function §&!d§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§9!5§);
         if(!_loc4_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc5_ || _loc2_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() / §9!5§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() % §9!5§);
            }
            var _loc3_:int = §§pop();
            if(!(_loc4_ && _loc1_))
            {
               if(_loc3_ < 10)
               {
                  if(!_loc4_)
                  {
                     addr82:
                     §§push("");
                     if(_loc5_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_ || _loc1_)
                           {
                              §§push(":0");
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       addr115:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          return §§pop();
                                       }
                                       addr137:
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          §§goto(addr140);
                                       }
                                       §§goto(addr158);
                                    }
                                    addr140:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       addr149:
                                       §§push(§§pop() + ":");
                                       if(_loc5_ || this)
                                       {
                                          addr158:
                                          return §§pop() + _loc3_;
                                       }
                                    }
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr158);
                  }
                  else
                  {
                     addr134:
                     §§push("");
                     if(_loc5_)
                     {
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr149);
               }
               §§goto(addr134);
            }
            §§goto(addr82);
         }
         §§goto(addr32);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Integer = null;
         if(_loc4_ || this)
         {
            if(this.§?5§[param1])
            {
               addr53:
               _loc2_ = this.§?5§[param1];
               if(_loc4_ || param1)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr53);
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Integer = null;
         if(!(_loc3_ && this))
         {
            if(this.§8#§[param1])
            {
               addr43:
               _loc2_ = this.§8#§[param1];
               if(!_loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr43);
      }
      
      public function §41§(param1:String) : Boolean
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
               addr113:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc2_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(true);
                                 }
                                 else
                                 {
                                    if(!(_loc2_ || param1))
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       addr24:
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!(_loc3_ && param1))
                                          {
                                             if(_loc2_)
                                             {
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 addr100:
                                 return §§pop();
                              }
                              §§goto(addr24);
                           }
                           return §§pop();
                        }
                        addr65:
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr73);
                        §§push(Boolean(§§pop()));
                     }
                     addr122:
                  }
                  addr127:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function §+!O§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§"!=§[param1] = param2;
         }
      }
      
      public function §,n§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§&!?§[param1] = param2;
         }
      }
      
      public function §,g§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Integer = new Integer(param2);
         if(!_loc4_)
         {
            this.§?5§[param1] = _loc3_;
         }
      }
      
      public function §;!+§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Integer = new Integer(param2);
         if(_loc4_)
         {
            this.§8#§[param1] = _loc3_;
         }
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager);
         §§push(param1);
         if(_loc3_)
         {
            §§push(param2);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() == -1);
               if(!_loc4_)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  addr45:
                  §§push(param2);
                  if(!(_loc4_ && param2))
                  {
                     addr63:
                     §§push(int(§§pop()));
                     if(_loc4_ && _loc3_)
                     {
                        addr82:
                        §§push(int(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr82);
                  }
               }
               return §§pop().§%!"§(§§pop(),§§pop());
            }
            §§goto(addr63);
         }
         §§goto(addr45);
      }
      
      public function §8!6§(param1:ChapterModel) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         §§push(0);
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         for each(_loc3_ in param1.§-Y§())
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
      
      public function §8!2§(param1:ChapterModel) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         §§push(0);
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         for each(_loc3_ in param1.§-Y§())
         {
            if(_loc7_)
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:ChapterModel = null;
         var _loc4_:* = 0;
         §§push(0);
         if(_loc5_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() >= LevelManager.§8H§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§ m§(_loc2_);
               if(_loc5_)
               {
                  §§push(this.§8!2§(_loc3_));
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr137:
                     while(true)
                     {
                        addr99:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!(_loc6_ && this))
                           {
                              §§push(int(§§pop() + _loc4_));
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr97);
            }
            break;
         }
         return §§pop();
      }
      
      public function §@!3§(param1:ChapterModel) : int
      {
         return param1.§-Y§().length * 3;
      }
      
      public function §#!-§(param1:ChapterModel) : int
      {
         return param1.§-Y§().length;
      }
      
      public function §]!$§(param1:ChapterModel) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         §§push(0);
         if(!(_loc6_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         for each(_loc3_ in param1.§-Y§())
         {
            if(!_loc6_)
            {
               §§push(this.getEagleScoreForLevel(_loc3_));
               if(_loc7_ || param1)
               {
                  if(§§pop() != 100)
                  {
                     continue;
                  }
                  if(!(_loc7_ || _loc3_))
                  {
                     continue;
                  }
                  addr84:
                  §§push(_loc2_);
                  if(_loc7_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc7_)
                     {
                        addr90:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr84);
         }
         return _loc2_;
      }
      
      public function get §=0§() : Dictionary
      {
         return this.§"!=§;
      }
      
      public function get §6!a§() : Boolean
      {
         return this.§;!A§;
      }
      
      public function set §6!a§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!A§ = param1;
         }
      }
      
      public function get §&C§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §@o§() : String
      {
         return this.§0K§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:ChapterModel = null;
         var _loc7_:ChapterModel = null;
         if(!(_loc9_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc9_ && param1))
            {
               if(§§pop() != null)
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc9_)
                     {
                        if(§§pop() != LevelManager.§get §)
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
                                       if(_loc8_ || this)
                                       {
                                          §§push(true);
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop1;
                                          }
                                          if(!(_loc8_ || param1))
                                          {
                                             continue loop0;
                                          }
                                          if(!_loc8_)
                                          {
                                             addr126:
                                             §§push(false);
                                             break;
                                          }
                                          while(true)
                                          {
                                          }
                                          addr69:
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             if(true)
                                             {
                                                addr129:
                                                §§push(param1);
                                             }
                                             continue loop1;
                                             break loop0;
                                          }
                                       }
                                       §§goto(addr127);
                                    }
                                    while(true)
                                    {
                                       §§push(this.getEagleScoreForLevel(param1));
                                       if(!_loc9_)
                                       {
                                          §§push(0);
                                          if(!_loc9_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§push(true);
                                                      if(_loc9_)
                                                      {
                                                         break loop3;
                                                      }
                                                      if(_loc8_ || param1)
                                                      {
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr113:
                                                      return true;
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr69);
                                                addr127:
                                                return §§pop();
                                             }
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr129);
                                 }
                                 return §§pop();
                              }
                           }
                        }
                        §§goto(addr113);
                     }
                     break;
                  }
                  addr130:
                  var _loc2_:Array = §§pop().split("-");
                  if(!_loc9_)
                  {
                     if(_loc2_.length == 2)
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(int(parseInt(_loc2_[0])));
                           if(!(_loc9_ && this))
                           {
                              _loc4_ = §§pop();
                              addr170:
                              if(_loc8_)
                              {
                                 addr163:
                                 §§push(int(parseInt(_loc2_[1])));
                              }
                              _loc6_ = LevelManager.§'!7§(param1);
                              if(_loc8_)
                              {
                                 §§push(_loc6_.pageIndexes[0] == _loc4_);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc8_)
                                                {
                                                   §§push(1);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc9_ && _loc2_)
                                                      {
                                                         §§goto(addr270);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc8_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   else
                                                   {
                                                      addr326:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            _loc7_ = LevelManager.§'!7§(_loc4_ - 1 + "-1");
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                  }
                                                                  addr368:
                                                                  §§push(Boolean(_loc3_));
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr372:
                                                                     addr372:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           addr380:
                                                                           §§push(this.getScoreForLevel(_loc3_));
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              addr426:
                                                                              §§push(0);
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 addr398:
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr411:
                                                                                       §§push(true);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                       §§goto(addr435);
                                                                                    }
                                                                                 }
                                                                                 §§push(this.getEagleScoreForLevel(_loc3_));
                                                                                 break;
                                                                              }
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc9_ && param1)
                                                                                 {
                                                                                    §§goto(addr436);
                                                                                 }
                                                                                 addr435:
                                                                                 addr435:
                                                                                 return §§pop();
                                                                                 §§push(true);
                                                                              }
                                                                              §§goto(addr436);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                                  §§goto(addr435);
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§push(_loc4_ - 1 + "-");
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(§§pop() + _loc7_.levelsPerPage);
                                                            }
                                                            _loc3_ = §§pop();
                                                         }
                                                         §§goto(addr436);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                }
                                                break;
                                             }
                                             addr425:
                                             §§goto(addr426);
                                             §§push(0);
                                             addr233:
                                          }
                                          §§goto(addr435);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc8_ || _loc2_)
                                                {
                                                   §§push(true);
                                                   if(!_loc9_)
                                                   {
                                                      addr270:
                                                      return §§pop();
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr380);
                                             }
                                             else
                                             {
                                                §§push(_loc5_);
                                                if(!_loc9_)
                                                {
                                                   §§push(1);
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc8_)
                                                            {
                                                               addr197:
                                                               §§push(§§pop() + "-");
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + (_loc5_ - 1));
                                                               }
                                                               §§push(§§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     addr231:
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr233);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr426);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§push(1);
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                   §§goto(addr326);
                                                }
                                                §§goto(addr197);
                                             }
                                          }
                                          addr258:
                                       }
                                       §§goto(addr368);
                                    }
                                 }
                                 addr414:
                                 return §§pop();
                              }
                              §§goto(addr434);
                           }
                           _loc5_ = §§pop();
                           §§goto(addr170);
                        }
                        §§goto(addr163);
                     }
                     addr436:
                     return false;
                  }
                  §§goto(addr170);
               }
               §§goto(addr126);
            }
            §§goto(addr130);
         }
         §§goto(addr104);
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
      
      public function get §]!e§() : Dictionary
      {
         return this.§"!=§;
      }
   }
}
