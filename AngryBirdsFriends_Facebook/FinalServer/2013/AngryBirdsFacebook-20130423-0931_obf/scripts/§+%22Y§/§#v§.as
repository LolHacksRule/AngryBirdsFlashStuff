package §+"Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#v§ implements §]g§
   {
       
      
      private var §@!Z§:Vector.<§]g§>;
      
      private var §[-§:Number;
      
      private var §[$§:Boolean = false;
      
      private var §?E§:Number = 1.0;
      
      public function §#v§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               this.§[-§ = 0;
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.§@!Z§ = new Vector.<§]g§>(0);
            if(_loc2_ || this)
            {
               if(!(_loc1_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?E§ = param1;
         }
      }
      
      public function add(param1:§]g§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_ || _loc3_)
         {
            §§push(param1 == null);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr63);
               }
               §§pop();
               if(_loc4_)
               {
                  addr63:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr76:
                        this.§@!Z§.push(param1);
                     }
                     addr80:
                     _loc2_ = param1 as EventDispatcher;
                     if(!(_loc3_ && param1))
                     {
                        if(_loc2_)
                        {
                           if(!_loc4_)
                           {
                           }
                        }
                        §§goto(addr102);
                     }
                     _loc2_.addEventListener(Event.§'J§,this.§,!U§);
                  }
                  addr102:
                  return;
                  §§push(this.§@!Z§.indexOf(param1) == -1);
               }
               §§goto(addr80);
            }
            §§goto(addr63);
         }
         §§goto(addr76);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§[$§ = param1;
         }
      }
      
      public function § !V§(param1:§]g§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§@!Z§.indexOf(param1);
         if(!(_loc4_ && this))
         {
            if(_loc2_ != -1)
            {
               if(!_loc4_)
               {
                  this.§@!Z§.splice(_loc2_,1);
                  addr48:
               }
               _loc3_ = param1 as EventDispatcher;
               if(!(_loc4_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     if(_loc5_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr90);
               }
               _loc3_.removeEventListener(Event.§'J§,this.§,!U§);
            }
            addr90:
            return;
         }
         §§goto(addr48);
      }
      
      public function §0!L§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§4! § = null;
         if(!(_loc6_ && param1))
         {
            if(param1 == null)
            {
               if(!(_loc6_ && param1))
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:int = this.§@!Z§.length;
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§@!Z§[_loc3_] as §4! §));
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        addr86:
                        §§pop();
                        if(!_loc5_)
                        {
                           continue;
                        }
                        §§push(_loc4_.target == param1);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        this.§@!Z§.splice(_loc3_,1);
                        if(_loc6_ && this)
                        {
                           continue;
                        }
                     }
                  }
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr86);
            }
            return;
         }
         addr36:
      }
      
      public function §=<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@!Z§.length = 0;
         }
      }
      
      public function §^=§(param1:Function, param2:Number, ... rest) : §'!]§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§'!]§ = new §'!]§(param1,param2,rest);
         if(_loc6_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(this.§[$§)
            {
               if(!(_loc5_ && param1))
               {
                  return;
               }
               while(true)
               {
                  addr33:
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr40);
               }
               addr110:
            }
            while(true)
            {
               §§push(param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() * this.§?E§);
                  if(_loc6_ || _loc3_)
                  {
                     addr96:
                     §§push(Number(§§pop()));
                  }
                  param1 = §§pop();
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§[-§);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§[-§ = §§pop();
                        while(true)
                        {
                           if(_loc5_)
                           {
                              continue loop2;
                           }
                           if(this.§@!Z§.length != 0)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr33);
                        }
                        var _loc2_:int = this.§@!Z§.length;
                        var _loc3_:Vector.<§]g§> = this.§@!Z§.concat();
                        var _loc4_:int = 0;
                        addr124:
                        if(_loc4_ >= _loc2_)
                        {
                           if(_loc5_ && _loc2_)
                           {
                              addr150:
                              if(_loc6_ || this)
                              {
                                 §§goto(addr124);
                              }
                              _loc4_++;
                              §§goto(addr150);
                              addr165:
                           }
                           return;
                        }
                        _loc3_[_loc4_].advanceTime(param1);
                        §§goto(addr165);
                     }
                  }
               }
               §§goto(addr96);
               §§goto(addr110);
            }
         }
         addr40:
      }
      
      private function §,!U§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§ !V§(param1.target as §]g§);
         }
      }
      
      public function get §5!i§() : Number
      {
         return this.§[-§;
      }
   }
}
