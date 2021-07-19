package §9!B§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §?![§ implements § _§
   {
       
      
      private var §2!z§:Vector.<§ _§>;
      
      private var §%!=§:Number;
      
      private var §=2§:Boolean = false;
      
      private var §>3§:Number = 1.0;
      
      public function §?![§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         while(true)
         {
            this.§%!=§ = 0;
            while(!(_loc1_ && _loc2_))
            {
               this.§2!z§ = new Vector.<§ _§>(0);
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§>3§ = param1;
         }
      }
      
      public function add(param1:§ _§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(_loc3_)
         {
            §§push(param1 == null);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr38:
                        §§pop();
                        addr65:
                        if(_loc3_)
                        {
                           §§push(this.§2!z§.indexOf(param1) == -1);
                        }
                        this.§2!z§.push(param1);
                        _loc2_ = param1 as EventDispatcher;
                        if(_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 addr95:
                                 _loc2_.addEventListener(Event.§;8§,this.§+!F§);
                              }
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr95);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_ && _loc2_)
                     {
                     }
                     §§goto(addr65);
                  }
                  addr101:
                  return;
               }
            }
         }
         §§goto(addr38);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§=2§ = param1;
         }
      }
      
      public function §3O§(param1:§ _§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§2!z§.indexOf(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc5_ && this))
               {
                  addr52:
                  this.§2!z§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!_loc5_)
               {
                  if(_loc3_)
                  {
                     if(!_loc5_)
                     {
                        _loc3_.removeEventListener(Event.§;8§,this.§+!F§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §@s§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§5!D§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§2!z§.length;
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§2!z§[_loc3_] as §5!D§));
            if(_loc6_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        addr94:
                        if(_loc4_.target == param1)
                        {
                           if(!(_loc5_ && param1))
                           {
                              addr102:
                              this.§2!z§.splice(_loc3_,1);
                              if(_loc5_ && _loc3_)
                              {
                                 continue;
                              }
                           }
                        }
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc3_ = §§pop();
                        continue;
                     }
                     §§goto(addr102);
                  }
               }
            }
            §§goto(addr94);
         }
      }
      
      public function §+!z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2!z§.length = 0;
         }
      }
      
      public function §9c§(param1:Function, param2:Number, ... rest) : §&!@§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  §§goto(addr34);
               }
            }
            var _loc4_:§&!@§ = new §&!@§(param1,param2,rest);
            if(_loc6_ || param2)
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr34:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc2_)
         {
            if(!this.§=2§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(§§pop() * this.§>3§);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  loop1:
                  while(true)
                  {
                     addr56:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§%!=§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§%!=§ = §§pop();
                        while(true)
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(this.§2!z§.length != 0)
                              {
                                 break;
                              }
                              if(_loc5_ || _loc3_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        addr115:
                        var _loc2_:int = this.§2!z§.length;
                        var _loc3_:Vector.<§ _§> = this.§2!z§.concat();
                        var _loc4_:int = 0;
                        addr128:
                        if(_loc4_ >= _loc2_)
                        {
                           if(_loc5_ || param1)
                           {
                              if(_loc6_ && param1)
                              {
                                 _loc4_++;
                                 addr161:
                                 §§goto(addr128);
                                 addr169:
                              }
                              return;
                           }
                           §§goto(addr161);
                        }
                        _loc3_[_loc4_].advanceTime(param1);
                        §§goto(addr169);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      private function §+!F§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§3O§(param1.target as § _§);
         }
      }
      
      public function get §[!O§() : Number
      {
         return this.§%!=§;
      }
   }
}
