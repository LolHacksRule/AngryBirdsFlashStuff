package §`!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!N§ implements § !7§
   {
       
      
      private var §=U§:Vector.<§ !7§>;
      
      private var §-$§:Number;
      
      private var §=2§:Boolean = false;
      
      private var §0t§:Number = 1.0;
      
      public function §]!N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         while(true)
         {
            this.§-$§ = 0;
            while(!(_loc1_ && this))
            {
               this.§=U§ = new Vector.<§ !7§>(0);
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§0t§ = param1;
         }
      }
      
      public function add(param1:§ !7§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(!_loc3_)
         {
            §§push(param1 == null);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr34:
                        §§pop();
                        addr56:
                        if(_loc4_)
                        {
                           §§push(this.§=U§.indexOf(param1) == -1);
                        }
                        this.§=U§.push(param1);
                        _loc2_ = param1 as EventDispatcher;
                        if(_loc4_ || param1)
                        {
                           if(_loc2_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 addr91:
                                 _loc2_.addEventListener(Event.§0<§,this.§9!W§);
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr91);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr56);
               }
               addr97:
               return;
            }
         }
         §§goto(addr34);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=2§ = param1;
         }
      }
      
      public function §0@§(param1:§ !7§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§=U§.indexOf(param1);
         if(!_loc5_)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_ || this)
               {
                  this.§=U§.splice(_loc2_,1);
                  addr52:
                  _loc3_ = param1 as EventDispatcher;
                  if(!(_loc5_ && param1))
                  {
                     if(_loc3_)
                     {
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr84);
                  }
                  _loc3_.removeEventListener(Event.§0<§,this.§9!W§);
               }
               §§goto(addr52);
            }
            addr84:
            return;
         }
         §§goto(addr52);
      }
      
      public function §['§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§@6§ = null;
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
         var _loc2_:int = this.§=U§.length;
         §§push(_loc2_);
         if(!_loc6_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§=U§[_loc3_] as §@6§));
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr71:
                     §§pop();
                     if(!(_loc5_ || _loc2_))
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
                     this.§=U§.splice(_loc3_,1);
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc3_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr71);
         }
      }
      
      public function §[G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=U§.length = 0;
         }
      }
      
      public function §@H§(param1:Function, param2:Number, ... rest) : §&!@§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            if(param1 == null)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr43);
               }
            }
            var _loc4_:§&!@§ = new §&!@§(param1,param2,rest);
            if(_loc5_)
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr43:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(!this.§=2§)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() * this.§0t§);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  while(_loc6_)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§-$§);
                        if(_loc6_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§-$§ = §§pop();
                        §§goto(addr61);
                     }
                  }
               }
            }
            return;
         }
         addr61:
         while(this.§=U§.length == 0)
         {
            if(!(_loc5_ && _loc3_))
            {
               if(_loc6_)
               {
                  if(_loc6_ || this)
                  {
                     return;
                  }
                  continue loop0;
               }
               continue loop1;
            }
            if(!(_loc5_ && _loc2_))
            {
               if(true)
               {
                  break;
               }
               continue loop2;
            }
         }
         var _loc2_:int = this.§=U§.length;
         var _loc3_:Vector.<§ !7§> = this.§=U§.concat();
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc2_)
            {
               if(_loc6_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               _loc3_[_loc4_].advanceTime(param1);
               while(true)
               {
                  _loc4_++;
               }
               addr145:
            }
            while(_loc5_)
            {
               §§goto(addr145);
            }
         }
      }
      
      private function §9!W§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0@§(param1.target as § !7§);
         }
      }
      
      public function get §-!$§() : Number
      {
         return this.§-$§;
      }
   }
}
