package §#x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §%"'§ implements §2n§
   {
       
      
      private var §=",§:Vector.<§2n§>;
      
      private var §0!_§:Number;
      
      private var §^!C§:Boolean = false;
      
      private var § 1§:Number = 1.0;
      
      public function §%"'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            while(true)
            {
               this.§0!_§ = 0;
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     this.§=",§ = new Vector.<§2n§>(0);
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
         §§goto(addr71);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ 1§ = param1;
         }
      }
      
      public function add(param1:§2n§) : void
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
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
                  §§goto(addr77);
               }
               §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  addr71:
                  addr77:
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        this.§=",§.push(param1);
                        addr85:
                     }
                     _loc2_ = param1 as EventDispatcher;
                     if(!(_loc4_ && this))
                     {
                        if(_loc2_)
                        {
                           if(_loc3_ || param1)
                           {
                              _loc2_.addEventListener(Event.§@!e§,this.§ S§);
                           }
                        }
                     }
                  }
                  return;
                  §§push(this.§=",§.indexOf(param1) == -1);
               }
               §§goto(addr85);
            }
            §§goto(addr77);
         }
         §§goto(addr71);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!C§ = param1;
         }
      }
      
      public function §<"<§(param1:§2n§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§=",§.indexOf(param1);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ != -1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§=",§.splice(_loc2_,1);
                  addr68:
                  _loc3_ = param1 as EventDispatcher;
                  if(!(_loc4_ && param1))
                  {
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr90);
                  }
                  _loc3_.removeEventListener(Event.§@!e§,this.§ S§);
               }
               §§goto(addr68);
            }
            addr90:
            return;
         }
         §§goto(addr68);
      }
      
      public function §4-§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§?!n§ = null;
         if(_loc6_ || _loc3_)
         {
            if(param1 == null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§=",§.length;
         §§push(_loc2_);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§=",§[_loc3_] as §?!n§));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr82:
                     §§pop();
                     if(_loc6_ || _loc2_)
                     {
                        addr104:
                        if(_loc4_.target == param1)
                        {
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           addr112:
                           this.§=",§.splice(_loc3_,1);
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        §§push(_loc3_);
                        if(_loc6_ || this)
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
            §§goto(addr82);
         }
      }
      
      public function §6O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=",§.length = 0;
         }
      }
      
      public function §9!I§(param1:Function, param2:Number, ... rest) : §6!N§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:§6!N§ = new §6!N§(param1,param2,rest);
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            if(!this.§^!C§)
            {
               do
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * this.§ 1§);
                     if(!(_loc6_ && this))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  loop1:
                  do
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§0!_§);
                        if(_loc5_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§0!_§ = §§pop();
                        loop3:
                        while(this.§=",§.length == 0)
                        {
                           if(_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              continue;
                           }
                           addr56:
                           while(true)
                           {
                              if(true)
                              {
                                 break loop3;
                              }
                              continue loop2;
                           }
                        }
                        var _loc2_:int = this.§=",§.length;
                        var _loc3_:Vector.<§2n§> = this.§=",§.concat();
                        var _loc4_:int = 0;
                        while(true)
                        {
                           if(_loc4_ >= _loc2_)
                           {
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              if(!(_loc6_ && _loc2_))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              _loc3_[_loc4_].advanceTime(param1);
                           }
                           _loc4_++;
                        }
                        return;
                     }
                  }
                  while(_loc6_ && _loc2_);
                  
               }
               while(_loc6_ && this);
               
               if(!(_loc6_ && _loc3_))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function § S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<"<§(param1.target as §2n§);
         }
      }
      
      public function get §while§() : Number
      {
         return this.§0!_§;
      }
   }
}
