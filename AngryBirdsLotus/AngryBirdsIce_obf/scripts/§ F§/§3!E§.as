package § F§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3!E§ implements §9U§
   {
       
      
      private var §=! §:Vector.<§9U§>;
      
      private var §^w§:Number;
      
      private var §>2§:Boolean = false;
      
      private var §?!A§:Number = 1.0;
      
      public function §3!E§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§^w§ = 0;
               while(!_loc1_)
               {
                  this.§=! § = new Vector.<§9U§>(0);
                  if(_loc2_)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!A§ = param1;
         }
      }
      
      public function add(param1:§9U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(!(_loc3_ && this))
         {
            §§push(param1 == null);
            if(_loc4_ || param1)
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr64:
                        §§pop();
                        addr95:
                        if(_loc4_)
                        {
                           §§push(this.§=! §.indexOf(param1) == -1);
                        }
                        _loc2_ = param1 as EventDispatcher;
                        if(!(_loc3_ && param1))
                        {
                           if(_loc2_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 addr116:
                                 _loc2_.addEventListener(Event.§<!D§,this.§"K§);
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr116);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§=! §.push(param1);
                  }
                  §§goto(addr95);
               }
               addr122:
               return;
            }
         }
         §§goto(addr64);
      }
      
      public function set §'Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§>2§ = param1;
         }
      }
      
      public function §60§(param1:§9U§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§=! §.indexOf(param1);
         if(_loc4_)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_)
               {
                  addr52:
                  this.§=! §.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(!(_loc5_ && param1))
               {
                  if(_loc3_)
                  {
                     if(_loc4_)
                     {
                        _loc3_.removeEventListener(Event.§<!D§,this.§"K§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §%6§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§^!'§ = null;
         if(!(_loc5_ && _loc3_))
         {
            if(param1 == null)
            {
               if(!(_loc5_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§=! §.length;
         §§push(_loc2_);
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§=! §[_loc3_] as §^!'§));
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr87:
                     §§pop();
                     if(!_loc5_)
                     {
                        addr104:
                        if(_loc4_.target == param1)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              this.§=! §.splice(_loc3_,1);
                              if(_loc5_ && _loc2_)
                              {
                                 continue;
                              }
                           }
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
               }
               §§goto(addr104);
            }
            §§goto(addr87);
         }
      }
      
      public function §-j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=! §.length = 0;
         }
      }
      
      public function §6>§(param1:Function, param2:Number, ... rest) : §]!#§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§]!#§ = new §]!#§(param1,param2,rest);
         if(!_loc6_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(this.§>2§)
         {
            return;
         }
         §§push(param1);
         if(!_loc6_)
         {
            §§push(§§pop() * this.§?!A§);
            if(!(_loc6_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         param1 = §§pop();
         §§push(this);
         §§push(this.§^w§);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§^w§ = §§pop();
         if(this.§=! §.length == 0)
         {
            return;
         }
         var _loc2_:int = this.§=! §.length;
         var _loc3_:Vector.<§9U§> = this.§=! §.concat();
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc2_)
            {
               if(_loc5_ || _loc3_)
               {
                  break;
               }
               loop1:
               while(_loc6_ && param1)
               {
                  while(true)
                  {
                     _loc4_++;
                     continue loop1;
                  }
               }
               continue;
            }
            _loc3_[_loc4_].advanceTime(param1);
            §§goto(addr127);
         }
      }
      
      private function §"K§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§60§(param1.target as §9U§);
         }
      }
      
      public function get §3!B§() : Number
      {
         return this.§^w§;
      }
   }
}
