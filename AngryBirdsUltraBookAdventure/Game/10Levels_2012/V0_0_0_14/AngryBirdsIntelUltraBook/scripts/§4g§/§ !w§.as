package §4g§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § !w§ implements §@7§
   {
       
      
      private var §@!d§:Vector.<§@7§>;
      
      private var §@!w§:Number;
      
      private var §#m§:Boolean = false;
      
      private var §9j§:Number = 1.0;
      
      public function § !w§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               this.§@!w§ = 0;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§@!d§ = new Vector.<§@7§>(0);
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§9j§ = param1;
         }
      }
      
      public function add(param1:§@7§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1 == null);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        addr58:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr84);
                     }
                  }
                  addr67:
                  §§goto(addr61);
               }
            }
            §§goto(addr58);
         }
         addr61:
         if(this.§@!d§.indexOf(param1) == -1)
         {
            if(_loc3_)
            {
               this.§@!d§.push(param1);
               addr84:
               _loc2_ = param1 as EventDispatcher;
               if(_loc3_ || this)
               {
                  if(_loc2_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.addEventListener(Event.§"!_§,this.§"!-§);
                     }
                  }
               }
            }
            §§goto(addr84);
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#m§ = param1;
         }
      }
      
      public function § !L§(param1:§@7§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§@!d§.indexOf(param1);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_)
               {
                  this.§@!d§.splice(_loc2_,1);
                  addr47:
               }
               _loc3_ = param1 as EventDispatcher;
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc3_)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        _loc3_.removeEventListener(Event.§"!_§,this.§"!-§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §?<§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§`!^§ = null;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§@!d§.length;
         §§push(_loc2_);
         if(_loc5_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§@!d§[_loc3_] as §`!^§));
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && this))
                  {
                     §§pop();
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc4_.target == param1);
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc6_)
               {
                  this.§@!d§.splice(_loc3_,1);
                  if(_loc6_)
                  {
                     continue;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
      }
      
      public function §=-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@!d§.length = 0;
         }
      }
      
      public function §6!w§(param1:Function, param2:Number, ... rest) : §>f§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && rest))
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§>f§ = new §>f§(param1,param2,rest);
         if(!(_loc5_ && this))
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc2_)
         {
            if(!this.§#m§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * this.§9j§);
                     if(_loc5_)
                     {
                        addr87:
                        §§push(Number(§§pop()));
                     }
                     param1 = §§pop();
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§@!w§);
                           if(_loc5_ || this)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§@!w§ = §§pop();
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    return;
                                 }
                                 addr93:
                                 if(this.§@!d§.length != 0)
                                 {
                                    break;
                                 }
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(_loc5_)
                                    {
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 if(!_loc6_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           var _loc2_:int = this.§@!d§.length;
                           var _loc3_:Vector.<§@7§> = this.§@!d§.concat();
                           var _loc4_:int = 0;
                           addr118:
                           if(_loc4_ >= _loc2_)
                           {
                              if(!_loc5_)
                              {
                                 addr129:
                                 if(_loc5_)
                                 {
                                    §§goto(addr118);
                                 }
                                 _loc4_++;
                                 §§goto(addr129);
                                 addr139:
                              }
                              return;
                           }
                           _loc3_[_loc4_].advanceTime(param1);
                           §§goto(addr139);
                        }
                     }
                  }
                  §§goto(addr87);
               }
            }
         }
         §§goto(addr93);
      }
      
      private function §"!-§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§ !L§(param1.target as §@7§);
         }
      }
      
      public function get §>!§() : Number
      {
         return this.§@!w§;
      }
   }
}
