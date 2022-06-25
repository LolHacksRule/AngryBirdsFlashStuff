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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§5Y§ = 0;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§;Y§ = new Vector.<§8!h§>(0);
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§5y§ = param1;
         }
      }
      
      public function add(param1:§8!h§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_)
         {
            §§push(param1 == null);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc4_ || this)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        addr54:
                        §§pop();
                        addr81:
                        if(!_loc3_)
                        {
                           §§push(this.§;Y§.indexOf(param1) == -1);
                        }
                        this.§;Y§.push(param1);
                        _loc2_ = param1 as EventDispatcher;
                        if(_loc4_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 addr96:
                                 _loc2_.addEventListener(Event.§]!%§,this.§'J§);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr96);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                  }
                  §§goto(addr81);
               }
               addr102:
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§ D§ = param1;
         }
      }
      
      public function §4!g§(param1:§8!h§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§;Y§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ != -1)
            {
               if(_loc5_)
               {
                  addr53:
                  this.§;Y§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     if(!(_loc4_ && this))
                     {
                        _loc3_.removeEventListener(Event.§]!%§,this.§'J§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §??§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§=!A§ = null;
         if(!(_loc6_ && _loc2_))
         {
            if(param1 == null)
            {
               if(_loc5_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§;Y§.length;
         §§push(_loc2_);
         if(!_loc6_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§;Y§[_loc3_] as §=!A§));
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr76:
                     §§pop();
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc4_.target == param1);
                  }
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  this.§;Y§.splice(_loc3_,1);
                  if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr76);
         }
      }
      
      public function §]!I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§;Y§.length = 0;
         }
      }
      
      public function §>s§(param1:Function, param2:Number, ... rest) : §!!Z§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  §§goto(addr49);
               }
            }
            var _loc4_:§!!Z§ = new §!!Z§(param1,param2,rest);
            if(_loc6_ || param1)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            if(!this.§ D§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() * this.§5y§);
                     if(_loc6_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  loop1:
                  for(; !_loc5_; if(_loc6_ || param1)
                  {
                     if(!(_loc6_ || _loc3_))
                     {
                        continue loop0;
                     }
                     if(false)
                     {
                        §§goto(addr57);
                     }
                     addr106:
                     var _loc2_:int = this.§;Y§.length;
                     var _loc3_:Vector.<§8!h§> = this.§;Y§.concat();
                  },continue,var _loc4_:int = 0,while(true)
                  {
                     if(_loc4_ >= _loc2_)
                     {
                        if(_loc6_)
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
                        addr150:
                     }
                     while(!_loc6_)
                     {
                        §§goto(addr150);
                     }
                  },return)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§5Y§);
                        if(_loc6_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§5Y§ = §§pop();
                        addr76:
                        while(this.§;Y§.length == 0)
                        {
                           if(_loc6_ || param1)
                           {
                              if(!_loc5_)
                              {
                                 return;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr106);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      private function §'J§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
