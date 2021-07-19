package § I§
{
   import § !Y§.§]!,§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §]"6§ extends EventDispatcher
   {
      
      protected static const §"!w§:Number = 1000;
      
      protected static const §<Q§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §]"6§)
         {
            §"!w§ = 1000;
            do
            {
               §<Q§ = 60;
            }
            while(_loc2_ && §]"6§);
            
         }
      }
      
      protected var §0!k§:Dictionary;
      
      protected var §-K§:Dictionary;
      
      protected var §&!-§:Dictionary;
      
      protected var §<"'§:Dictionary;
      
      protected var §;" §:Boolean = false;
      
      protected var § !j§:String;
      
      protected var §<!t§:String;
      
      protected var §6u§:§9"!§;
      
      protected var §%c§:Timer;
      
      public function §]"6§(param1:String, param2:§9"!§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super();
            while(true)
            {
               this.§<!t§ = param1;
               loop1:
               while(true)
               {
                  this.§6u§ = param2;
                  do
                  {
                     this.§0!k§ = new Dictionary();
                     do
                     {
                        this.§-K§ = new Dictionary();
                        continue loop1;
                     }
                     while(_loc4_ && this);
                     
                  }
                  while(!_loc3_);
                  
               }
               while(_loc3_ || _loc3_)
               {
                  this.§<"'§ = new Dictionary();
                  do
                  {
                     this.§;" § = false;
                  }
                  while(!(_loc3_ || param1));
                  
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     §§goto(addr43);
                  }
                  §§goto(addr87);
               }
            }
         }
      }
      
      private function §@!S§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            dispatchEvent(new UserProgressEvent(UserProgressEvent.§9""§));
         }
         do
         {
            this.§ !j§ = null;
         }
         while(_loc3_);
         
      }
      
      public function §[l§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§ !j§ == param1)
            {
               if(_loc3_)
               {
                  §§push(true);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr69:
                     while(true)
                     {
                        §§push(Boolean(this.§%c§));
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(!_loc2_)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(Boolean(this.§%c§.running));
                                    addr49:
                                    while(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc2_ && this))
                                       {
                                          return §§pop();
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr96);
                           }
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§push(false);
                                    break;
                                 }
                                 §§goto(addr78);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    if(_loc2_)
                                    {
                                       break loop6;
                                    }
                                    §§goto(addr24);
                                 }
                                 addr20:
                              }
                              §§goto(addr49);
                           }
                           return §§pop();
                        }
                        continue loop0;
                     }
                  }
               }
               addr96:
               return §§pop();
            }
            §§goto(addr69);
         }
         §§goto(addr68);
      }
      
      public function §4w§() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§<Q§);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop() - this.§%c§.currentCount);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(§§pop() / §<Q§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(§§pop() % §<Q§);
         }
         var _loc3_:int = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ < 10)
            {
               if(!(_loc4_ && this))
               {
                  §§push("");
                  if(_loc5_ || this)
                  {
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc4_)
                        {
                           §§push(§§pop() + ":0");
                           if(_loc5_ || this)
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc4_)
                                 {
                                    §§goto(addr98);
                                 }
                              }
                              else
                              {
                                 addr110:
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_ || _loc2_)
                                 {
                                 }
                                 addr139:
                                 return §§pop() + _loc3_;
                                 addr137:
                              }
                              §§goto(addr137);
                           }
                           §§push(§§pop() + ":");
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr137);
                           }
                           §§goto(addr139);
                        }
                        addr98:
                        return §§pop();
                     }
                     §§goto(addr110);
                  }
                  else
                  {
                     addr102:
                     §§push(_loc2_);
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr110);
                     }
                  }
                  §§goto(addr110);
               }
               else
               {
                  addr99:
                  §§push("");
                  if(!_loc4_)
                  {
                     §§goto(addr102);
                  }
               }
               §§goto(addr110);
            }
         }
         §§goto(addr99);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]!,§ = null;
         if(!_loc3_)
         {
            if(this.§0!k§[param1])
            {
               addr37:
               _loc2_ = this.§0!k§[param1];
               if(!(_loc3_ && this))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §#!K§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§]!,§ = null;
         if(_loc4_ || param1)
         {
            if(this.§-K§[param1])
            {
               addr42:
               _loc2_ = this.§-K§[param1];
               if(!(_loc3_ && this))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr42);
      }
      
      public function §<!J§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.getScoreForLevel(param1));
            loop0:
            while(true)
            {
               §§push(0);
               addr90:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr91:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                 }
                                 addr64:
                              }
                              else
                              {
                                 if(_loc3_ && this)
                                 {
                                    continue loop0;
                                 }
                                 addr19:
                                 §§push(false);
                                 if(_loc2_ || _loc2_)
                                 {
                                    break;
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                    addr93:
                                 }
                                 return §§pop();
                              }
                              addr65:
                           }
                           §§goto(addr19);
                        }
                        return §§pop();
                        addr60:
                     }
                     §§goto(addr93);
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §8R§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§&!-§[param1] = param2;
         }
      }
      
      public function §=!=§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§&!-§[param1] = param2;
         }
      }
      
      public function §%P§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]!,§ = new §]!,§(param2);
         if(!_loc4_)
         {
            this.§0!k§[param1] = _loc3_;
         }
      }
      
      public function §]I§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§]!,§ = new §]!,§(param2);
         if(!_loc5_)
         {
            this.§-K§[param1] = _loc3_;
         }
      }
      
      public function §,R§(param1:String, param2:int = -1) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§6u§);
         §§push(param1);
         if(!(_loc3_ && param2))
         {
            §§push(param2);
            if(_loc4_)
            {
               if(§§pop() != -1)
               {
                  addr42:
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc4_ || _loc3_))
                     {
                        addr69:
                        §§push(int(§§pop()));
                     }
                  }
               }
               else
               {
                  §§push(this.getScoreForLevel(param1));
                  if(_loc4_)
                  {
                     §§goto(addr69);
                  }
               }
            }
            return §§pop().getNumStarsForLevel(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      public function §<!y§(param1:§3,§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§9"<§())
         {
            if(_loc7_ || param1)
            {
               §§push(_loc2_);
               if(!(_loc6_ && param1))
               {
                  §§push(int(§§pop() + this.getScoreForLevel(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §5;§(param1:§3,§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1.§9"<§())
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + this.§,R§(_loc3_)));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function §9!Z§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§3,§ = null;
         var _loc4_:* = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_ && _loc3_)
            {
               break;
            }
            if(§§pop() >= this.§6u§.getEpisodeCount())
            {
               §§push(_loc1_);
               break;
            }
            _loc3_ = this.§6u§.getEpisode(_loc2_);
            if(_loc5_)
            {
               §§push(this.§5;§(_loc3_));
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
            while(false)
            {
               §§goto(addr64);
            }
         }
         return §§pop();
      }
      
      public function §4"4§(param1:§3,§) : int
      {
         return param1.§9"<§().length * 3;
      }
      
      public function §?N§(param1:§3,§) : int
      {
         return param1.§9"<§().length;
      }
      
      public function §7%§(param1:§3,§) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9"<§())
         {
            if(!_loc6_)
            {
               if(this.§#!K§(_loc3_) != 100)
               {
                  continue;
               }
               if(!(_loc7_ || this))
               {
                  continue;
               }
            }
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function get § !^§() : Dictionary
      {
         return this.§&!-§;
      }
      
      public function get §]!j§() : Dictionary
      {
         return this.§&!-§;
      }
      
      public function get §3s§() : Boolean
      {
         return this.§;" §;
      }
      
      public function set §3s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;" § = param1;
         }
      }
      
      public function get §^!O§() : Timer
      {
         return this.§%c§;
      }
      
      public function get §]_§() : String
      {
         return this.§ !j§;
      }
      
      public function §]!B§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(_loc6_ || this)
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
               addr106:
               while(true)
               {
                  continue loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr83);
      }
      
      public function §>!m§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
