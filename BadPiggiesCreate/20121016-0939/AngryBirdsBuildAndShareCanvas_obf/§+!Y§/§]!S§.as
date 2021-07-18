package §+!Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!S§ implements §7!@§
   {
       
      
      private var §84§:Vector.<§7!@§>;
      
      private var §1"=§:Number;
      
      private var §93§:Boolean = false;
      
      private var §5!?§:Number = 1.0;
      
      public function §]!S§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            do
            {
               this.§1"=§ = 0;
               do
               {
                  this.§84§ = new Vector.<§7!@§>(0);
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!?§ = param1;
         }
      }
      
      public function add(param1:§7!@§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_ || _loc3_)
         {
            §§push(param1 == null);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr58);
               }
               §§pop();
               if(_loc4_)
               {
                  addr58:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr61:
                        this.§84§.push(param1);
                     }
                     addr65:
                     _loc2_ = param1 as EventDispatcher;
                     if(!(_loc3_ && this))
                     {
                        if(_loc2_)
                        {
                           if(!_loc4_)
                           {
                           }
                        }
                        §§goto(addr97);
                     }
                     _loc2_.addEventListener(Event.§^8§,this.§"P§);
                  }
                  addr97:
                  return;
                  §§push(this.§84§.indexOf(param1) == -1);
               }
               §§goto(addr65);
            }
            §§goto(addr58);
         }
         §§goto(addr61);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§93§ = param1;
         }
      }
      
      public function §'!@§(param1:§7!@§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§84§.indexOf(param1);
         if(!(_loc5_ && this))
         {
            if(_loc2_ != -1)
            {
               if(!_loc5_)
               {
                  addr47:
                  this.§84§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc5_)
               {
                  if(_loc3_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc3_.removeEventListener(Event.§^8§,this.§"P§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §?!>§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§3!V§ = null;
         if(!(_loc5_ && _loc3_))
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  §§goto(addr32);
               }
            }
            var _loc2_:int = this.§84§.length;
            §§push(_loc2_);
            if(_loc6_ || param1)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§84§[_loc3_] as §3!V§));
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§pop();
                        if(!(_loc6_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(_loc4_.target == param1);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  this.§84§.splice(_loc3_,1);
                  if(!_loc6_)
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
            }
            return;
         }
         addr32:
      }
      
      public function §#!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§84§.length = 0;
         }
      }
      
      public function §'P§(param1:Function, param2:Number, ... rest) : §6!o§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:§6!o§ = new §6!o§(param1,param2,rest);
            if(_loc5_)
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr33:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(this.§93§)
            {
               if(_loc6_ || param1)
               {
                  return;
               }
               addr95:
               while(true)
               {
               }
               addr95:
            }
            while(true)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(§§pop() * this.§5!?§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               param1 = §§pop();
               §§goto(addr95);
            }
         }
         loop2:
         while(true)
         {
            addr47:
            while(true)
            {
               §§push(this);
               §§push(this.§1"=§);
               if(!_loc5_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§1"=§ = §§pop();
               while(this.§84§.length == 0)
               {
                  if(!_loc5_)
                  {
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        break loop2;
                     }
                     §§goto(addr95);
                     continue;
                  }
                  continue loop2;
               }
               addr96:
               var _loc2_:int = this.§84§.length;
               var _loc3_:Vector.<§7!@§> = this.§84§.concat();
               var _loc4_:int = 0;
               addr109:
               if(_loc4_ >= _loc2_)
               {
                  if(!_loc6_)
                  {
                     addr120:
                     if(!_loc5_)
                     {
                        §§goto(addr109);
                     }
                     _loc4_++;
                     §§goto(addr120);
                     addr140:
                  }
                  return;
               }
               _loc3_[_loc4_].advanceTime(param1);
               §§goto(addr140);
            }
         }
      }
      
      private function §"P§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§'!@§(param1.target as §7!@§);
         }
      }
      
      public function get §#!Z§() : Number
      {
         return this.§1"=§;
      }
   }
}
