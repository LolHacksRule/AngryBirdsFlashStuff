package §^S§
{
   import §"n§.§<!e§;
   import §8!K§.§3%§;
   import §8!K§.§5!Y§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §#!X§ extends EventDispatcher
   {
      
      protected static const §0G§:Number = 1000;
      
      protected static const §39§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0G§ = 1000;
            do
            {
               §39§ = 60;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      protected var §5!V§:Dictionary;
      
      protected var §]!z§:Dictionary;
      
      protected var §>z§:Dictionary;
      
      protected var §4!c§:Dictionary;
      
      protected var §`!^§:Boolean = false;
      
      protected var §=S§:String;
      
      protected var §6v§:String;
      
      protected var §&" §:§5!Y§;
      
      protected var §;O§:Timer;
      
      public function §#!X§(param1:String, param2:§5!Y§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§6v§ = param1;
            loop1:
            while(true)
            {
               this.§&" § = param2;
               continue loop0;
               addr61:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               this.§`!^§ = false;
               addr68:
               if(_loc3_)
               {
                  addr34:
                  if(!_loc4_)
                  {
                     addr36:
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           this.§]!z§ = new Dictionary();
                           addr87:
                           while(true)
                           {
                              this.§>z§ = new Dictionary();
                              addr74:
                              loop5:
                              while(_loc3_ || _loc3_)
                              {
                                 this.§4!c§ = new Dictionary();
                                 while(true)
                                 {
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr61);
                                    §§goto(addr68);
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                              §§goto(addr34);
                           }
                           §§goto(addr36);
                        }
                        addr93:
                     }
                     return;
                  }
                  §§goto(addr87);
               }
               §§goto(addr44);
            }
         }
      }
      
      private function §;!U§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§-!9§));
         }
         do
         {
            this.§=S§ = null;
         }
         while(!_loc3_);
         
      }
      
      public function §"!h§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§=S§ != param1)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(this.§;O§));
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(Boolean(this.§;O§.running));
                                    §§goto(addr61);
                                 }
                                 addr110:
                              }
                              else
                              {
                                 addr115:
                                 return true;
                              }
                              return §§pop();
                           }
                        }
                        addr97:
                     }
                     addr61:
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(false);
                              }
                              else
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop0;
                                 }
                                 addr25:
                                 §§push(true);
                                 if(!(_loc2_ && param1))
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                              }
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop3;
                           }
                           §§goto(addr25);
                        }
                        continue loop5;
                     }
                     return §§pop();
                  }
                  §§goto(addr97);
               }
            }
            §§goto(addr115);
         }
         §§goto(addr110);
      }
      
      public function §+z§() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§39§);
         if(_loc4_)
         {
            §§push(§§pop() - this.§;O§.currentCount);
            if(!_loc5_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() / §39§);
            }
            var _loc2_:int = §§pop();
            §§push(_loc1_);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() % §39§);
            }
            var _loc3_:int = §§pop();
            if(!_loc5_)
            {
               if(_loc3_ < 10)
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     §§goto(addr68);
                  }
                  else
                  {
                     addr93:
                     §§push("");
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc5_)
                           {
                              addr107:
                              §§push(§§pop() + ":");
                              if(_loc4_ || _loc3_)
                              {
                              }
                           }
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr93);
            }
            addr68:
            §§push("");
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc5_)
                  {
                     §§goto(addr77);
                  }
                  §§goto(addr81);
               }
               §§goto(addr127);
            }
            addr77:
            §§push(§§pop() + ":0");
            if(_loc4_)
            {
               addr81:
               §§push(_loc3_);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc5_)
                  {
                     addr128:
                     return §§pop() + _loc3_;
                     addr127:
                  }
               }
               §§goto(addr127);
            }
            return §§pop();
         }
         §§goto(addr25);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!e§ = null;
         if(!_loc4_)
         {
            if(this.§5!V§[param1])
            {
               addr36:
               _loc2_ = this.§5!V§[param1];
               if(!(_loc4_ && this))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr36);
      }
      
      public function §2p§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!e§ = null;
         if(_loc3_ || this)
         {
            if(this.§]!z§[param1])
            {
               addr41:
               _loc2_ = this.§]!z§[param1];
               if(!(_loc4_ && _loc2_))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr41);
      }
      
      public function §<W§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.getScoreForLevel(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr91:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr92:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(true);
                              }
                              else
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 addr20:
                                 §§push(false);
                                 if(!(_loc2_ && param1))
                                 {
                                    if(!_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    addr59:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr94:
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                           }
                           §§goto(addr20);
                        }
                        return §§pop();
                     }
                     §§goto(addr94);
                  }
               }
            }
            addr90:
         }
         while(true)
         {
            §§push(this.§2p§(param1));
            if(!_loc2_)
            {
               §§push(0);
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr59);
                  §§push(§§pop() > §§pop());
               }
               else
               {
                  §§goto(addr91);
               }
               §§goto(addr92);
            }
            else
            {
               §§goto(addr90);
            }
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§>z§[param1] = param2;
         }
      }
      
      public function §[2§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§>z§[param1] = param2;
         }
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<!e§ = new §<!e§(param2);
         if(_loc4_ || param2)
         {
            this.§5!V§[param1] = _loc3_;
         }
      }
      
      public function §!3§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§<!e§ = new §<!e§(param2);
         if(!_loc4_)
         {
            this.§]!z§[param1] = _loc3_;
         }
      }
      
      public function §9"+§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§&" §);
         §§push(param1);
         if(_loc3_)
         {
            §§push(param2);
            if(!(_loc4_ && this))
            {
               if(§§pop() != -1)
               {
                  addr41:
                  §§push(param2);
                  if(_loc3_ || param1)
                  {
                     §§push(int(§§pop()));
                     if(_loc3_ || _loc3_)
                     {
                     }
                     §§goto(addr74);
                  }
                  addr73:
                  §§push(int(§§pop()));
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(_loc3_)
                  {
                     §§goto(addr73);
                  }
               }
            }
            addr74:
            return §§pop().getNumStarsForLevel(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      public function §0B§(param1:§3%§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§@!8§())
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
      
      public function §>u§(param1:§3%§) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§@!8§())
         {
            if(!(_loc7_ && param1))
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  §§push(int(§§pop() + this.§9"+§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §>Q§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§3%§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() >= this.§&" §.getEpisodeCount())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = this.§&" §.getEpisode(_loc2_);
               if(_loc5_ || _loc3_)
               {
                  §§push(this.§>u§(_loc3_));
                  if(_loc5_)
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
               §§goto(addr84);
            }
            break;
         }
         return §§pop();
      }
      
      public function §@!"§(param1:§3%§) : int
      {
         return param1.§@!8§().length * 3;
      }
      
      public function §^4§(param1:§3%§) : int
      {
         return param1.§@!8§().length;
      }
      
      public function §;L§(param1:§3%§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@!8§())
         {
            if(!(_loc6_ && param1))
            {
               if(this.§2p§(_loc3_) != 100)
               {
                  continue;
               }
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function get §7!7§() : Dictionary
      {
         return this.§>z§;
      }
      
      public function get § !L§() : Dictionary
      {
         return this.§>z§;
      }
      
      public function get §,!>§() : Boolean
      {
         return this.§`!^§;
      }
      
      public function set §,!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§`!^§ = param1;
         }
      }
      
      public function get §<!P§() : Timer
      {
         return this.§;O§;
      }
      
      public function get §]v§() : String
      {
         return this.§=S§;
      }
      
      public function §]!g§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(_loc6_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  §§push(false);
                  break;
               }
               while(true)
               {
                  continue loop0;
                  addr99:
                  if(_loc6_ || _loc3_)
                  {
                     addr107:
                     return true;
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr108);
      }
      
      public function §#l§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
