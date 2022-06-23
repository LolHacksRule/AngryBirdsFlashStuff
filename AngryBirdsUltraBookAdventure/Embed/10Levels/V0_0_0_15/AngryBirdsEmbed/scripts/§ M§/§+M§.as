package § M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+M§ implements §]-§
   {
       
      
      private var § ! §:Vector.<§]-§>;
      
      private var §+!D§:Number;
      
      private var §6!§:Boolean = false;
      
      private var §6;§:Number = 1.0;
      
      public function §+M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_)
            {
               this.§+!D§ = 0;
               if(!_loc2_)
               {
                  addr42:
                  this.§ ! § = new Vector.<§]-§>(0);
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
            this.§6;§ = param1;
         }
      }
      
      public function add(param1:§]-§) : void
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
                           §§push(this.§ ! §.indexOf(param1) == -1);
                        }
                        this.§ ! §.push(param1);
                        _loc2_ = param1 as EventDispatcher;
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 addr101:
                                 _loc2_.addEventListener(Event.§1E§,this.§&e§);
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
            this.§6!§ = param1;
         }
      }
      
      public function §try§(param1:§]-§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§ ! §.indexOf(param1);
         if(_loc4_ || this)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr62:
                  this.§ ! §.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc5_)
               {
                  if(_loc3_)
                  {
                     if(_loc4_)
                     {
                        _loc3_.removeEventListener(Event.§1E§,this.§&e§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §@k§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§-!=§ = null;
         if(!(_loc6_ && _loc2_))
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§ ! §.length;
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§ ! §[_loc3_] as §-!=§));
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
                              this.§ ! §.splice(_loc3_,1);
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
      
      public function §'N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ ! §.length = 0;
         }
      }
      
      public function §7&§(param1:Function, param2:Number, ... rest) : §if§
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
         var _loc4_:§if§ = new §if§(param1,param2,rest);
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
            if(this.§6!§)
            {
               return;
            }
            §§push(param1);
            if(_loc6_)
            {
               §§push(§§pop() * this.§6;§);
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
         §§push(this.§+!D§);
         if(!_loc5_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§+!D§ = §§pop();
         if(this.§ ! §.length == 0)
         {
            if(!(_loc5_ && _loc2_))
            {
               addr75:
               return;
            }
         }
         var _loc2_:int = this.§ ! §.length;
         var _loc3_:Vector.<§]-§> = this.§ ! §.concat();
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
      
      private function §&e§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§try§(param1.target as §]-§);
         }
      }
      
      public function get §]O§() : Number
      {
         return this.§+!D§;
      }
   }
}
