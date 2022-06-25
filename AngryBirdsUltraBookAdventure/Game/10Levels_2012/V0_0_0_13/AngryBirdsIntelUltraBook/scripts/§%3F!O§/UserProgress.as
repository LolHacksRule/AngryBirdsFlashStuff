package §?!O§
{
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §7p§.Integer;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class UserProgress extends EventDispatcher
   {
      
      protected static const §4!3§:Number = 1000;
      
      protected static const §[!e§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §4!3§ = 1000;
         }
         do
         {
            §[!e§ = 60;
         }
         while(_loc1_);
         
      }
      
      protected var §!&§:Dictionary;
      
      protected var §&6§:Dictionary;
      
      protected var §'!b§:Dictionary;
      
      protected var § j§:Dictionary;
      
      protected var §1R§:Boolean;
      
      protected var §9!>§:String;
      
      protected var §9<§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function UserProgress(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§9<§ = param1;
            loop1:
            while(true)
            {
               this.§!&§ = new Dictionary();
               while(true)
               {
                  this.§&6§ = new Dictionary();
                  while(_loc2_ || _loc2_)
                  {
                     continue loop0;
                     loop4:
                     while(_loc2_ || this)
                     {
                        this.§ j§ = new Dictionary();
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop4;
                           addr49:
                           this.§1R§ = false;
                           if(_loc2_)
                           {
                              return;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §=!`§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§"c§));
            do
            {
               this.§9!>§ = null;
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §3!d§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§9!>§ == param1)
            {
               if(!(_loc3_ && param1))
               {
                  return true;
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr41:
                     while(this.mMightyEagleTimer.running)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§push(false);
                        if(!(_loc3_ && param1))
                        {
                           return §§pop();
                        }
                        continue loop0;
                     }
                     addr19:
                     §§push(true);
                     if(_loc2_ || this)
                     {
                        return §§pop();
                     }
                     §§goto(addr49);
                  }
               }
               return §§pop();
            }
            §§goto(addr41);
         }
         §§goto(addr49);
      }
      
      public function §?!e§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§[!e§);
         if(_loc4_ || this)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(!(_loc5_ && _loc1_))
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() / §[!e§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() % §[!e§);
            }
            var _loc3_:int = §§pop();
            if(!_loc5_)
            {
               if(_loc3_ < 10)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr76);
                  }
                  else
                  {
                     addr118:
                     §§push("");
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           §§goto(addr139);
                        }
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr147);
               }
               §§goto(addr118);
            }
            addr76:
            §§push("");
            if(_loc4_ || this)
            {
               §§push(_loc2_);
               if(_loc4_ || _loc1_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     §§push(":0");
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc5_ && _loc1_))
                              {
                                 §§goto(addr117);
                              }
                              else
                              {
                                 addr156:
                                 return §§pop() + _loc3_;
                              }
                           }
                           else
                           {
                              addr139:
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 addr147:
                                 §§push(§§pop() + ":");
                                 if(_loc4_ || this)
                                 {
                                    §§goto(addr156);
                                 }
                              }
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr117);
               }
               §§goto(addr156);
            }
            addr117:
            return §§pop();
         }
         §§goto(addr36);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Integer = null;
         if(_loc4_ || param1)
         {
            if(this.§!&§[param1])
            {
               addr43:
               _loc2_ = this.§!&§[param1];
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr43);
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Integer = null;
         if(_loc4_)
         {
            if(this.§&6§[param1])
            {
               addr38:
               _loc2_ = this.§&6§[param1];
               if(_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr38);
      }
      
      public function §7n§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.getScoreForLevel(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr106:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr107:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(!(_loc3_ || _loc3_))
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
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                break loop6;
                                             }
                                             addr113:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                    addr101:
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                                 addr93:
                              }
                              §§goto(addr20);
                           }
                           return §§pop();
                           addr66:
                        }
                        §§goto(addr113);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      public function §%!3§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§'!b§[param1] = param2;
         }
      }
      
      public function §27§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§ j§[param1] = param2;
         }
      }
      
      public function §@!f§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Integer = new Integer(param2);
         if(!(_loc5_ && _loc3_))
         {
            this.§!&§[param1] = _loc3_;
         }
      }
      
      public function §&t§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Integer = new Integer(param2);
         if(_loc4_ || param2)
         {
            this.§&6§[param1] = _loc3_;
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
            if(_loc3_ || param2)
            {
               §§push(§§pop() == -1);
               if(!(_loc4_ && param1))
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  addr50:
                  §§push(param2);
                  if(_loc3_ || param1)
                  {
                     §§push(int(§§pop()));
                     if(_loc3_ || this)
                     {
                        addr76:
                     }
                  }
                  else
                  {
                     addr87:
                     §§push(int(§§pop()));
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr87);
                  }
               }
               return §§pop().§+y§(§§pop(),§§pop());
            }
            §§goto(addr76);
         }
         §§goto(addr50);
      }
      
      public function §8i§(param1:ChapterModel) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         §§push(0);
         if(_loc6_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         for each(_loc3_ in param1.§&W§())
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §,l§(param1:ChapterModel) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         §§push(0);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         for each(_loc3_ in param1.§&W§())
         {
            if(!_loc7_)
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
         var _loc3_:ChapterModel = null;
         var _loc4_:* = 0;
         §§push(0);
         if(!(_loc5_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && this))
            {
               if(§§pop() >= LevelManager.§??§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§;![§(_loc2_);
               if(!_loc5_)
               {
                  §§push(this.§,l§(_loc3_));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr122:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr123:
                        while(true)
                        {
                           addr94:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr96:
                              while(true)
                              {
                                 §§push(int(§§pop() + _loc4_));
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr92);
            }
            break;
         }
         return §§pop();
      }
      
      public function §8!_§(param1:ChapterModel) : int
      {
         return param1.§&W§().length * 3;
      }
      
      public function §`=§(param1:ChapterModel) : int
      {
         return param1.§&W§().length;
      }
      
      public function §6Y§(param1:ChapterModel) : int
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
         for each(_loc3_ in param1.§&W§())
         {
            if(_loc7_)
            {
               §§push(this.getEagleScoreForLevel(_loc3_));
               if(_loc7_)
               {
                  if(§§pop() == 100)
                  {
                     if(!_loc6_)
                     {
                        addr74:
                        §§push(_loc2_);
                        if(_loc7_)
                        {
                           addr77:
                           §§push(§§pop() + 1);
                           if(!_loc6_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc2_ = §§pop();
                     }
                  }
                  continue;
               }
               §§goto(addr77);
            }
            §§goto(addr74);
         }
         return _loc2_;
      }
      
      public function get §`3§() : Dictionary
      {
         return this.§'!b§;
      }
      
      public function get §?m§() : Boolean
      {
         return this.§1R§;
      }
      
      public function set §?m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1R§ = param1;
         }
      }
      
      public function get §&!8§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §9!D§() : String
      {
         return this.§9!>§;
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
         if(_loc8_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != null)
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(_loc8_)
                  {
                     if(_loc9_)
                     {
                        continue loop0;
                     }
                     if(§§pop() != LevelManager.§>B§)
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
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             §§push(true);
                                             break;
                                          }
                                          break loop0;
                                       }
                                       addr108:
                                       §§push(true);
                                    }
                                    else
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          addr32:
                                          while(true)
                                          {
                                             §§push(this.getEagleScoreForLevel(param1));
                                             if(_loc8_)
                                             {
                                                §§push(0);
                                                if(_loc8_)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         §§push(true);
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               addr122:
                                                               return §§pop();
                                                            }
                                                            §§goto(addr109);
                                                         }
                                                         break loop4;
                                                      }
                                                      if(!(_loc8_ || _loc3_))
                                                      {
                                                         break loop2;
                                                      }
                                                      continue loop2;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop4;
                                             }
                                             continue loop3;
                                          }
                                          break loop1;
                                       }
                                       addr97:
                                    }
                                    addr109:
                                    return §§pop();
                                 }
                                 §§goto(addr32);
                              }
                              return §§pop();
                           }
                        }
                        continue;
                     }
                     §§goto(addr108);
                  }
                  break;
               }
               var _loc2_:Array = §§pop().split("-");
               if(_loc8_)
               {
                  if(_loc2_.length == 2)
                  {
                     if(!_loc9_)
                     {
                        addr137:
                        §§push(int(parseInt(_loc2_[0])));
                        if(_loc8_)
                        {
                           _loc4_ = §§pop();
                           addr160:
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(int(parseInt(_loc2_[1])));
                           }
                           _loc6_ = LevelManager.§;<§(param1);
                           if(_loc8_ || _loc2_)
                           {
                              §§push(_loc6_.pageIndexes[0] == _loc4_);
                              if(!(_loc9_ && param1))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_ || _loc2_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          addr295:
                                          §§pop();
                                          if(!_loc9_)
                                          {
                                             addr228:
                                             §§push(_loc5_);
                                             if(!_loc9_)
                                             {
                                                §§push(1);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc8_ || this)
                                                      {
                                                         addr246:
                                                         if(!§§pop())
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc8_)
                                                            {
                                                               §§push(1);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() + "-");
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(§§pop() + (_loc5_ - 1));
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr228);
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr401);
                                                                           }
                                                                           §§goto(addr354);
                                                                        }
                                                                        addr303:
                                                                        §§push(1);
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           addr311:
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr314:
                                                                                 _loc7_ = LevelManager.§;<§(_loc4_ - 1 + "-1");
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                 }
                                                                                 §§push(_loc4_ - 1 + "-");
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                              §§goto(addr416);
                                                                           }
                                                                           addr354:
                                                                           §§push(Boolean(_loc3_));
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                        §§goto(addr383);
                                                                     }
                                                                     §§goto(addr314);
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr303);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            §§push(true);
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr362);
                                                            }
                                                         }
                                                         §§goto(addr370);
                                                      }
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr311);
                                             }
                                             §§goto(addr380);
                                          }
                                          §§goto(addr370);
                                       }
                                       §§goto(addr425);
                                    }
                                    §§goto(addr246);
                                 }
                                 addr362:
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       addr370:
                                       §§push(this.getScoreForLevel(_loc3_));
                                       if(!(_loc9_ && param1))
                                       {
                                          addr380:
                                          §§push(0);
                                          if(!_loc9_)
                                          {
                                             addr383:
                                             if(§§pop() > §§pop())
                                             {
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   addr401:
                                                   §§push(true);
                                                   if(!_loc9_)
                                                   {
                                                      addr404:
                                                      return §§pop();
                                                   }
                                                }
                                                §§goto(addr425);
                                             }
                                             else
                                             {
                                                §§goto(addr416);
                                             }
                                             §§push(true);
                                          }
                                          §§goto(addr416);
                                       }
                                       addr416:
                                       if(this.getEagleScoreForLevel(_loc3_) > 0)
                                       {
                                          if(!(_loc8_ || this))
                                          {
                                             §§goto(addr426);
                                          }
                                       }
                                       §§goto(addr426);
                                    }
                                    §§goto(addr401);
                                 }
                                 §§goto(addr426);
                              }
                              §§goto(addr295);
                           }
                           §§goto(addr416);
                        }
                        _loc5_ = §§pop();
                     }
                     §§goto(addr160);
                  }
                  addr426:
                  return false;
               }
               §§goto(addr137);
            }
            §§goto(addr122);
            §§push(false);
         }
         §§goto(addr97);
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
      
      public function get §0!@§() : Dictionary
      {
         return this.§'!b§;
      }
   }
}
