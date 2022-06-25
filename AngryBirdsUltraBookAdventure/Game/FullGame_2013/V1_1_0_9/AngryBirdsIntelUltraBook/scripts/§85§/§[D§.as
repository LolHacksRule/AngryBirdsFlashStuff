package §85§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §[D§ implements §?!%§
   {
       
      
      private var §7-§:Vector.<§?!%§>;
      
      private var §9m§:Number;
      
      private var §9!U§:Boolean = false;
      
      private var § ;§:Number = 1.0;
      
      public function §[D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         do
         {
            this.§9m§ = 0;
            do
            {
               this.§7-§ = new Vector.<§?!%§>(0);
            }
            while(!(_loc2_ || this));
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ ;§ = param1;
         }
      }
      
      public function add(param1:§?!%§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(!_loc3_)
         {
            §§push(param1 == null);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  addr35:
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           §§goto(addr63);
                        }
                        §§goto(addr76);
                     }
                  }
               }
               addr63:
               §§goto(addr57);
            }
            §§goto(addr35);
         }
         addr57:
         if(this.§7-§.indexOf(param1) == -1)
         {
            if(_loc4_)
            {
               addr76:
               this.§7-§.push(param1);
            }
            _loc2_ = param1 as EventDispatcher;
            if(_loc4_)
            {
               if(_loc2_)
               {
                  if(!(_loc3_ && param1))
                  {
                     _loc2_.addEventListener(Event.§%!W§,this.§'-§);
                  }
               }
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§9!U§ = param1;
         }
      }
      
      public function §0z§(param1:§?!%§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§7-§.indexOf(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ != -1)
            {
               if(!_loc4_)
               {
                  this.§7-§.splice(_loc2_,1);
                  addr63:
                  _loc3_ = param1 as EventDispatcher;
                  if(_loc5_)
                  {
                     if(_loc3_)
                     {
                        if(_loc4_ && param1)
                        {
                        }
                     }
                     §§goto(addr85);
                  }
                  _loc3_.removeEventListener(Event.§%!W§,this.§'-§);
               }
               §§goto(addr63);
            }
            addr85:
            return;
         }
         §§goto(addr63);
      }
      
      public function §?!a§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§5S§ = null;
         if(!(_loc6_ && this))
         {
            if(param1 == null)
            {
               if(_loc5_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§7-§.length;
         §§push(_loc2_);
         if(!_loc6_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§7-§[_loc3_] as §5S§));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && param1))
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
               if(_loc6_ && _loc3_)
               {
                  continue;
               }
               this.§7-§.splice(_loc3_,1);
               if(!_loc5_)
               {
                  continue;
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
      
      public function §4Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§7-§.length = 0;
         }
      }
      
      public function §9!"§(param1:Function, param2:Number, ... rest) : §!!b§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            if(param1 == null)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr53);
               }
            }
            var _loc4_:§!!b§ = new §!!b§(param1,param2,rest);
            if(!(_loc6_ && rest))
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr53:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc2_))
         {
            if(!this.§9!U§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() * this.§ ;§);
                     if(_loc6_)
                     {
                        addr96:
                        §§push(Number(§§pop()));
                     }
                     param1 = §§pop();
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           addr55:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§9m§);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§9m§ = §§pop();
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    if(this.§7-§.length != 0)
                                    {
                                       break;
                                    }
                                    if(_loc6_ || _loc3_)
                                    {
                                       return;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr106:
                              var _loc2_:int = this.§7-§.length;
                              var _loc3_:Vector.<§?!%§> = this.§7-§.concat();
                              var _loc4_:int = 0;
                              addr129:
                              if(_loc4_ >= _loc2_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc4_++;
                                       addr142:
                                       §§goto(addr129);
                                       addr150:
                                    }
                                    return;
                                 }
                                 §§goto(addr142);
                              }
                              _loc3_[_loc4_].advanceTime(param1);
                              §§goto(addr150);
                           }
                        }
                        if(!(_loc6_ || _loc2_))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr55);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr96);
               }
            }
            addr104:
            return;
         }
         §§goto(addr100);
      }
      
      private function §'-§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0z§(param1.target as §?!%§);
         }
      }
      
      public function get §7&§() : Number
      {
         return this.§9m§;
      }
   }
}
