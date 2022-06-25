package §<!o§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;e§ implements §8!h§
   {
       
      
      private var §;Y§:Vector.<§8!h§>;
      
      private var §5Y§:Number;
      
      private var § D§:Boolean = false;
      
      private var §5y§:Number = 1.0;
      
      public function §;e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               this.§5Y§ = 0;
               do
               {
                  this.§;Y§ = new Vector.<§8!h§>(0);
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§5y§ = param1;
         }
      }
      
      public function add(param1:§8!h§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(_loc3_ || _loc3_)
         {
            §§push(param1 == null);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr53:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr80);
                     }
                  }
                  addr62:
                  §§goto(addr56);
               }
            }
            §§goto(addr53);
         }
         addr56:
         if(this.§;Y§.indexOf(param1) == -1)
         {
            if(_loc3_ || _loc3_)
            {
               addr80:
               this.§;Y§.push(param1);
            }
            _loc2_ = param1 as EventDispatcher;
            if(_loc3_ || _loc2_)
            {
               if(_loc2_)
               {
                  if(!_loc4_)
                  {
                     _loc2_.addEventListener(Event.§]!%§,this.§'J§);
                  }
               }
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ D§ = param1;
         }
      }
      
      public function §4!g§(param1:§8!h§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§;Y§.indexOf(param1);
         if(!_loc5_)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_)
               {
                  this.§;Y§.splice(_loc2_,1);
                  addr42:
               }
               _loc3_ = param1 as EventDispatcher;
               if(_loc4_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     if(_loc5_ && param1)
                     {
                     }
                  }
                  §§goto(addr84);
               }
               _loc3_.removeEventListener(Event.§]!%§,this.§'J§);
            }
            addr84:
            return;
         }
         §§goto(addr42);
      }
      
      public function §??§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§=!A§ = null;
         if(_loc6_ || _loc2_)
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§;Y§.length;
         §§push(_loc2_);
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§;Y§[_loc3_] as §=!A§));
            if(_loc6_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc6_ || param1)
                  {
                     addr87:
                     §§pop();
                     if(_loc6_)
                     {
                        addr104:
                        if(_loc4_.target == param1)
                        {
                           if(_loc5_ && param1)
                           {
                              continue;
                           }
                           addr112:
                           this.§;Y§.splice(_loc3_,1);
                           if(!(_loc6_ || _loc2_))
                           {
                              continue;
                           }
                        }
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc3_ = §§pop();
                        continue;
                     }
                     §§goto(addr112);
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr87);
         }
      }
      
      public function §]!I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;Y§.length = 0;
         }
      }
      
      public function §>s§(param1:Function, param2:Number, ... rest) : §!!Z§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  §§goto(addr49);
               }
            }
            var _loc4_:§!!Z§ = new §!!Z§(param1,param2,rest);
            if(!(_loc5_ && param1))
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr49:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(this.§ D§)
            {
               if(!_loc6_)
               {
                  return;
               }
               addr94:
               while(true)
               {
               }
               addr94:
            }
            while(true)
            {
               §§push(param1);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() * this.§5y§);
                  if(_loc5_)
                  {
                     addr85:
                     §§push(Number(§§pop()));
                  }
                  param1 = §§pop();
                  loop1:
                  while(true)
                  {
                     addr39:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§5Y§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§5Y§ = §§pop();
                        continue loop1;
                     }
                  }
               }
               §§goto(addr85);
               §§goto(addr94);
            }
         }
         §§goto(addr94);
      }
      
      private function §'J§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!g§(param1.target as §8!h§);
         }
      }
      
      public function get §8!%§() : Number
      {
         return this.§5Y§;
      }
   }
}
