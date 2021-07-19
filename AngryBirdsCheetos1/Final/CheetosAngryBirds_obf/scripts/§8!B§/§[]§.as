package §8!B§
{
   import §#!F§.§78§;
   import §]!F§.§7e§;
   import §]!F§.§^!O§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §[]§ extends EventDispatcher
   {
      
      protected static const §+!Y§:Number = 1000;
      
      protected static const §-E§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §+!Y§ = 1000;
         }
         do
         {
            §-E§ = 60;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      protected var §[t§:Dictionary;
      
      protected var §[a§:Dictionary;
      
      protected var § !Z§:Dictionary;
      
      protected var §!!S§:Dictionary;
      
      protected var §4o§:Boolean;
      
      protected var §6"§:String;
      
      protected var §2!$§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §[]§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               this.§2!$§ = param1;
               loop1:
               while(true)
               {
                  this.§[t§ = new Dictionary();
                  while(true)
                  {
                     this.§[a§ = new Dictionary();
                     loop3:
                     while(!(_loc2_ && param1))
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§!!S§ = new Dictionary();
                           do
                           {
                              this.§4o§ = false;
                           }
                           while(!(_loc3_ || param1));
                           
                           if(_loc3_)
                           {
                              if(!(_loc2_ && this))
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      private function §[v§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§0J§));
            do
            {
               this.§6"§ = null;
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §@!]§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§6"§ != param1)
            {
               while(this.mMightyEagleTimer.running)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr52);
                  }
                  if(!(_loc2_ && param1))
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr77:
                        break;
                     }
                     addr83:
                     return true;
                  }
               }
               §§push(true);
               if(!(_loc3_ || _loc3_))
               {
                  addr52:
                  return false;
               }
               if(!_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr83);
            }
            §§goto(addr83);
         }
         §§goto(addr77);
      }
      
      public function §=P§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§-E§);
         if(!_loc4_)
         {
            §§push(§§pop() - this.mMightyEagleTimer.currentCount);
            if(_loc5_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(§§pop() / §-E§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() % §-E§);
         }
         var _loc3_:int = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ < 10)
            {
               if(!_loc4_)
               {
                  §§push("");
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc5_ || _loc1_)
                        {
                           addr93:
                           §§push(§§pop() + ":0");
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr139);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr93);
               }
               else
               {
                  addr109:
                  §§push("");
                  if(_loc5_)
                  {
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc4_)
                        {
                           §§push(§§pop() + ":");
                           if(_loc5_ || this)
                           {
                              §§goto(addr137);
                           }
                        }
                        §§goto(addr139);
                     }
                     addr139:
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        addr105:
                        §§push(§§pop() + §§pop());
                        if(!_loc4_)
                        {
                           addr108:
                           return §§pop();
                        }
                        addr137:
                        §§push(_loc3_);
                     }
                     return §§pop() + §§pop();
                  }
               }
               §§goto(addr137);
            }
         }
         §§goto(addr109);
      }
      
      public function §`>§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§78§ = null;
         if(!_loc4_)
         {
            if(this.§[t§[param1])
            {
               _loc2_ = this.§[t§[param1];
               addr36:
               if(!_loc4_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr36);
      }
      
      public function §+x§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§78§ = null;
         if(_loc3_ || _loc3_)
         {
            if(this.§[a§[param1])
            {
               addr41:
               _loc2_ = this.§[a§[param1];
               if(!(_loc4_ && _loc3_))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §[!J§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§`>§(param1));
            while(true)
            {
               §§push(0);
               addr101:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  §§goto(addr102);
               }
            }
            addr100:
         }
         while(true)
         {
            §§push(this.§+x§(param1));
            if(!(_loc2_ && param1))
            {
               §§push(0);
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr66);
                  §§push(§§pop() > §§pop());
               }
               else
               {
                  §§goto(addr101);
               }
               addr102:
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              break loop4;
                           }
                        }
                        if(!(_loc2_ && param1))
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                     return §§pop();
                     addr66:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
               return §§pop();
            }
            §§goto(addr100);
            §§goto(addr101);
         }
      }
      
      public function §2g§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§ !Z§[param1] = param2;
         }
      }
      
      public function §>!'§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§!!S§[param1] = param2;
         }
      }
      
      public function §'z§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§78§ = new §78§(param2);
         if(_loc5_)
         {
            this.§[t§[param1] = _loc3_;
         }
      }
      
      public function §8!+§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§78§ = new §78§(param2);
         if(_loc4_ || param1)
         {
            this.§[a§[param1] = _loc3_;
         }
      }
      
      public function §try §(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§7e§);
         §§push(param1);
         if(_loc4_)
         {
            §§push(param2);
            if(_loc4_ || param2)
            {
               if(§§pop() != -1)
               {
                  addr41:
                  §§push(param2);
                  if(_loc4_ || param1)
                  {
                     addr49:
                     §§push(int(§§pop()));
                     if(_loc3_)
                     {
                        addr73:
                        §§push(int(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(this.§`>§(param1));
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr73);
                  }
               }
               return §§pop().§]!7§(§§pop(),§§pop());
            }
            §§goto(addr49);
         }
         §§goto(addr41);
      }
      
      public function §1B§(param1:§^!O§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§0B§())
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  §§push(int(§§pop() + this.§`>§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §;K§(param1:§^!O§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§0B§())
         {
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc2_);
               if(!(_loc7_ && param1))
               {
                  §§push(int(§§pop() + this.§try §(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §8Z§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§^!O§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ && _loc2_)
            {
               break;
            }
            if(§§pop() >= §7e§.§ =§())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = §7e§.§2§(_loc2_);
            if(_loc6_)
            {
               §§push(this.§;K§(_loc3_));
               if(_loc6_ || _loc2_)
               {
                  §§push(int(§§pop()));
               }
               loop1:
               while(true)
               {
                  _loc4_ = §§pop();
                  addr87:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr59);
            }
         }
         return §§pop();
      }
      
      public function §>!6§(param1:§^!O§) : int
      {
         return param1.§0B§().length * 3;
      }
      
      public function §0!Y§(param1:§^!O§) : int
      {
         return param1.§0B§().length;
      }
      
      public function §`!&§(param1:§^!O§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0B§())
         {
            if(!_loc7_)
            {
               if(this.§+x§(_loc3_) == 100)
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get §<i§() : Dictionary
      {
         return this.§ !Z§;
      }
      
      public function get §<!O§() : Boolean
      {
         return this.§4o§;
      }
      
      public function set §<!O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4o§ = param1;
         }
      }
      
      public function get §;^§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §"!Y§() : String
      {
         return this.§6"§;
      }
      
      public function §5!Q§(param1:String) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:§^!O§ = null;
         var _loc7_:§^!O§ = null;
         if(!_loc9_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc8_)
                     {
                        if(!_loc9_)
                        {
                           if(§§pop() == §7e§.§^!H§)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              §§push(this.§`>§(param1));
                              loop3:
                              while(true)
                              {
                                 §§push(0);
                                 loop4:
                                 while(§§pop() <= §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§+x§(param1));
                                       if(!(_loc8_ || param1))
                                       {
                                          continue loop3;
                                       }
                                       §§push(0);
                                       if(!_loc8_)
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                if(_loc8_)
                                                {
                                                   addr63:
                                                   §§push(true);
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr108:
                                                      if(_loc8_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break loop3;
                                                   }
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             if(_loc9_)
                                             {
                                                §§push(false);
                                             }
                                             else
                                             {
                                                addr115:
                                             }
                                             continue;
                                             break loop3;
                                          }
                                          if(!(_loc8_ || _loc3_))
                                          {
                                             break loop4;
                                          }
                                          if(!_loc8_)
                                          {
                                             break loop1;
                                          }
                                          if(_loc9_ && _loc2_)
                                          {
                                             break loop2;
                                          }
                                          if(false)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       var _loc2_:Array = param1.split("-");
                                       if(_loc8_ || _loc3_)
                                       {
                                          if(_loc2_.length == 2)
                                          {
                                             if(_loc8_)
                                             {
                                                addr136:
                                                §§push(int(parseInt(_loc2_[0])));
                                                if(_loc8_ || _loc2_)
                                                {
                                                   _loc4_ = §§pop();
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      addr163:
                                                      _loc5_ = parseInt(_loc2_[1]);
                                                   }
                                                   §§push((_loc6_ = §7e§.§1!Q§(param1)).pageIndexes[0] == _loc4_);
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            §§pop();
                                                            if(_loc8_)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(1);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc8_)
                                                                     {
                                                                        addr213:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              §§push(true);
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§goto(addr359);
                                                                           }
                                                                           addr314:
                                                                           §§push(this.§`>§(_loc3_));
                                                                           if(_loc9_)
                                                                           {
                                                                           }
                                                                           if(§§pop() > 0)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§goto(addr360);
                                                                              }
                                                                              addr359:
                                                                              return §§pop();
                                                                              §§push(true);
                                                                           }
                                                                           addr360:
                                                                           return false;
                                                                           §§goto(addr359);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc8_ || this)
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
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr305:
                                                                                                §§push(_loc3_);
                                                                                             }
                                                                                             §§goto(addr360);
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                §§goto(addr314);
                                                                                             }
                                                                                             addr330:
                                                                                             §§push(true);
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                             §§goto(addr359);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                       addr319:
                                                                                       §§push(0);
                                                                                       if(_loc8_ || this)
                                                                                       {
                                                                                          addr327:
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§goto(addr330);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr314);
                                                                                             §§push(this.§+x§(_loc3_));
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr274:
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(_loc7_ = §7e§.§1!Q§(_loc4_ - 1 + "-1"))
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc4_ - 1 + "-");
                                                                                                      if(_loc8_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc7_.levelsPerPage);
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr305);
                                                                                             }
                                                                                             §§goto(addr330);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     addr224:
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                   }
                                                   §§goto(addr213);
                                                }
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr136);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr94);
                              }
                              return §§pop();
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr108);
                  §§push(true);
               }
               §§goto(addr115);
            }
         }
         §§goto(addr63);
      }
      
      public function §-O§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §<!-§(param1:String) : void
      {
      }
      
      public function §"!+§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get § G§() : Dictionary
      {
         return this.§ !Z§;
      }
   }
}
