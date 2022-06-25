package §^X§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;P§ implements §5!D§
   {
       
      
      private var §3N§:Vector.<§5!D§>;
      
      private var §3[§:Number;
      
      private var §5F§:Boolean = false;
      
      private var §#A§:Number = 1.0;
      
      public function §;P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_)
            {
               this.§3[§ = 0;
               if(!_loc2_)
               {
                  addr42:
                  this.§3N§ = new Vector.<§5!D§>(0);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#A§ = param1;
         }
      }
      
      public function add(param1:§5!D§) : void
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
                  addr35:
                  if(§§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§pop();
                        addr81:
                        if(_loc4_ || this)
                        {
                           §§push(this.§3N§.indexOf(param1) == -1);
                        }
                        this.§3N§.push(param1);
                        _loc2_ = param1 as EventDispatcher;
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 addr101:
                                 _loc2_.addEventListener(Event.§^#§,this.§8N§);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr101);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr81);
               }
               addr107:
               return;
            }
            §§goto(addr35);
         }
         §§goto(addr81);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5F§ = param1;
         }
      }
      
      public function §4O§(param1:§5!D§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§3N§.indexOf(param1);
         if(_loc4_ || this)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr62:
                  this.§3N§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc5_)
               {
                  if(_loc3_)
                  {
                     if(_loc4_)
                     {
                        _loc3_.removeEventListener(Event.§^#§,this.§8N§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §0Q§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§6b§ = null;
         if(!(_loc6_ && _loc2_))
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§3N§.length;
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§3N§[_loc3_] as §6b§));
               if(_loc5_ || this)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && param1))
                     {
                        addr81:
                        §§pop();
                        if(_loc5_)
                        {
                           addr88:
                           if(_loc4_.target == param1)
                           {
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              addr106:
                              this.§3N§.splice(_loc3_,1);
                              if(!(_loc5_ || _loc3_))
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
                           continue;
                        }
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr81);
            }
            return;
         }
         addr31:
      }
      
      public function § '§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3N§.length = 0;
         }
      }
      
      public function §#!;§(param1:Function, param2:Number, ... rest) : §;$§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§;$§ = new §;$§(param1,param2,rest);
         if(_loc5_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            if(this.§5F§)
            {
               return;
            }
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * this.§#A§);
               if(_loc6_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
            if(_loc6_)
            {
               §§goto(addr45);
            }
            §§goto(addr75);
         }
         addr45:
         §§push(this);
         §§push(this.§3[§);
         if(!_loc5_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§3[§ = §§pop();
         if(this.§3N§.length == 0)
         {
            if(!(_loc5_ && _loc2_))
            {
               addr75:
               return;
            }
         }
         var _loc2_:int = this.§3N§.length;
         var _loc3_:Vector.<§5!D§> = this.§3N§.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            if(!(_loc5_ && _loc2_))
            {
               _loc4_++;
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
            }
         }
      }
      
      private function §8N§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§4O§(param1.target as §5!D§);
         }
      }
      
      public function get §'#§() : Number
      {
         return this.§3[§;
      }
   }
}
