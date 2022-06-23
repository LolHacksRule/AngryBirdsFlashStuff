package §[!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2^§ implements §"N§
   {
       
      
      private var §82§:Vector.<§"N§>;
      
      private var §7h§:Number;
      
      private var §in §:Boolean = false;
      
      private var §5!G§:Number = 1.0;
      
      public function §2^§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_ || this)
            {
               this.§7h§ = 0;
               if(_loc1_)
               {
                  addr47:
                  this.§82§ = new Vector.<§"N§>(0);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5!G§ = param1;
         }
      }
      
      public function add(param1:§"N§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(!(_loc4_ && this))
         {
            §§push(param1 == null);
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
               if(!_loc4_)
               {
                  addr49:
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr77);
                        }
                        §§goto(addr84);
                     }
                  }
               }
               addr77:
               §§goto(addr61);
            }
            §§goto(addr49);
         }
         addr61:
         if(this.§82§.indexOf(param1) == -1)
         {
            if(_loc3_)
            {
               this.§82§.push(param1);
               addr84:
               _loc2_ = param1 as EventDispatcher;
               if(!_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc3_ || param1)
                     {
                        _loc2_.addEventListener(Event.§'D§,this.§5U§);
                     }
                  }
               }
            }
            §§goto(addr84);
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§in § = param1;
         }
      }
      
      public function §<!A§(param1:§"N§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§82§.indexOf(param1);
         if(_loc5_)
         {
            if(_loc2_ != -1)
            {
               if(_loc5_ || _loc2_)
               {
                  this.§82§.splice(_loc2_,1);
                  addr63:
                  _loc3_ = param1 as EventDispatcher;
                  if(_loc5_ || this)
                  {
                     if(_loc3_)
                     {
                        if(_loc5_)
                        {
                           _loc3_.removeEventListener(Event.§'D§,this.§5U§);
                        }
                     }
                  }
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §8&§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§3O§ = null;
         if(_loc5_)
         {
            if(param1 == null)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§82§.length;
            §§push(_loc2_);
            if(!(_loc6_ && param1))
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§82§[_loc3_] as §3O§));
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           addr98:
                           if(_loc4_.target == param1)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              addr106:
                              this.§82§.splice(_loc3_,1);
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                        §§goto(addr106);
                     }
                  }
               }
               §§goto(addr98);
            }
            return;
         }
         addr31:
      }
      
      public function §74§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§82§.length = 0;
         }
      }
      
      public function §0!H§(param1:Function, param2:Number, ... rest) : §9F§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§9F§ = new §9F§(param1,param2,rest);
         if(!_loc6_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            if(this.§in §)
            {
               if(!(_loc5_ && _loc2_))
               {
                  return;
               }
            }
            else
            {
               §§push(param1);
               if(!_loc5_)
               {
                  §§push(§§pop() * this.§5!G§);
                  if(!(_loc5_ && this))
                  {
                     addr60:
                     §§push(Number(§§pop()));
                  }
                  param1 = §§pop();
                  if(!(_loc5_ && this))
                  {
                     addr69:
                     §§push(this);
                     §§push(this.§7h§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§7h§ = §§pop();
                     if(_loc5_)
                     {
                     }
                     §§goto(addr101);
                  }
                  if(this.§82§.length == 0)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§goto(addr101);
                     }
                  }
                  var _loc2_:int = this.§82§.length;
                  var _loc3_:Vector.<§"N§> = this.§82§.concat();
                  var _loc4_:int = 0;
                  while(_loc4_ < _loc2_)
                  {
                     _loc3_[_loc4_].advanceTime(param1);
                     if(!_loc5_)
                     {
                        _loc4_++;
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr60);
            }
            addr101:
            return;
         }
         §§goto(addr69);
      }
      
      private function §5U§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!A§(param1.target as §"N§);
         }
      }
      
      public function get § u§() : Number
      {
         return this.§7h§;
      }
   }
}
