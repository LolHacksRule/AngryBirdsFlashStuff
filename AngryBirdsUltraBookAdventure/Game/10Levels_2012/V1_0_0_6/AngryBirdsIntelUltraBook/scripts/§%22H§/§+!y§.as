package §"H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+!y§ implements §!7§
   {
       
      
      private var §#;§:Vector.<§!7§>;
      
      private var §8!=§:Number;
      
      private var §1i§:Boolean = false;
      
      private var §&!&§:Number = 1.0;
      
      public function §+!y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§8!=§ = 0;
               while(_loc1_ || _loc1_)
               {
                  this.§#;§ = new Vector.<§!7§>(0);
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr59:
               }
            }
         }
         §§goto(addr59);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!&§ = param1;
         }
      }
      
      public function add(param1:§!7§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(!(_loc4_ && this))
         {
            §§push(param1 == null);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr53:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr79);
                     }
                  }
                  addr62:
                  if(this.§#;§.indexOf(param1) == -1)
                  {
                     if(!_loc4_)
                     {
                        addr75:
                        this.§#;§.push(param1);
                        addr79:
                        _loc2_ = param1 as EventDispatcher;
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 _loc2_.addEventListener(Event.§^U§,this.§7!_§);
                              }
                           }
                        }
                     }
                     §§goto(addr79);
                  }
                  return;
               }
            }
            §§goto(addr53);
         }
         §§goto(addr75);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§1i§ = param1;
         }
      }
      
      public function §1+§(param1:§!7§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§#;§.indexOf(param1);
         if(!(_loc5_ && _loc2_))
         {
            if(_loc2_ != -1)
            {
               if(_loc4_ || _loc3_)
               {
                  this.§#;§.splice(_loc2_,1);
                  addr67:
                  _loc3_ = param1 as EventDispatcher;
                  if(!(_loc5_ && this))
                  {
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                           _loc3_.removeEventListener(Event.§^U§,this.§7!_§);
                        }
                     }
                  }
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §=!H§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§=j§ = null;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§#;§.length;
         §§push(_loc2_);
         if(!_loc6_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§#;§[_loc3_] as §=j§));
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && this))
                  {
                     §§pop();
                     if(_loc6_ && _loc2_)
                     {
                        continue;
                     }
                     §§push(_loc4_.target == param1);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  continue;
               }
               this.§#;§.splice(_loc3_,1);
               if(_loc6_ && param1)
               {
                  continue;
               }
            }
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
      }
      
      public function §;!v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§#;§.length = 0;
         }
      }
      
      public function §!!u§(param1:Function, param2:Number, ... rest) : §,!2§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(param1 == null)
            {
               if(_loc6_ || rest)
               {
                  return null;
               }
            }
         }
         var _loc4_:§,!2§ = new §,!2§(param1,param2,rest);
         if(!(_loc5_ && rest))
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(!this.§1i§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§push(§§pop() * this.§&!&§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  loop1:
                  while(!(_loc6_ && this))
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§8!=§);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§8!=§ = §§pop();
                           for(; _loc5_; if(!(_loc6_ && _loc3_))
                           {
                              if(!_loc6_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           })
                           {
                              if(this.§#;§.length == 0)
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    continue loop3;
                                 }
                              }
                              var _loc2_:int = this.§#;§.length;
                              var _loc3_:Vector.<§!7§> = this.§#;§.concat();
                              var _loc4_:int = 0;
                              addr113:
                              if(_loc4_ >= _loc2_)
                              {
                                 if(_loc6_ && _loc2_)
                                 {
                                    addr129:
                                    if(_loc5_)
                                    {
                                       §§goto(addr113);
                                    }
                                    _loc4_++;
                                    §§goto(addr129);
                                    addr139:
                                 }
                                 return;
                              }
                              _loc3_[_loc4_].advanceTime(param1);
                              §§goto(addr139);
                           }
                           continue loop1;
                        }
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      private function §7!_§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1+§(param1.target as §!7§);
         }
      }
      
      public function get §[[§() : Number
      {
         return this.§8!=§;
      }
   }
}
