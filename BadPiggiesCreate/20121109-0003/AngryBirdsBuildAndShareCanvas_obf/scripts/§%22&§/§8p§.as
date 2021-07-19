package §"&§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8p§ implements §=q§
   {
       
      
      private var §9n§:Vector.<§=q§>;
      
      private var §7!`§:Number;
      
      private var §`!-§:Boolean = false;
      
      private var §?!B§:Number = 1.0;
      
      public function §8p§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§7!`§ = 0;
            do
            {
               this.§9n§ = new Vector.<§=q§>(0);
            }
            while(_loc1_ && _loc1_);
            
         }
         while(_loc1_);
         
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§?!B§ = param1;
         }
      }
      
      public function add(param1:§=q§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1 == null);
            if(!(_loc3_ && _loc2_))
            {
               §§push(!§§pop());
               if(_loc4_ || this)
               {
                  addr55:
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        §§goto(addr76);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr76:
                     §§goto(addr80);
                  }
                  addr80:
                  if(!_loc3_)
                  {
                     §§push(this.§9n§.indexOf(param1) == -1);
                  }
                  this.§9n§.push(param1);
                  _loc2_ = param1 as EventDispatcher;
                  if(_loc4_)
                  {
                     if(_loc2_)
                     {
                        if(_loc4_)
                        {
                           _loc2_.addEventListener(Event.§'m§,this.§%c§);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr76);
            }
            §§goto(addr55);
         }
         §§goto(addr76);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!-§ = param1;
         }
      }
      
      public function §!!Z§(param1:§=q§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§9n§.indexOf(param1);
         if(_loc5_ || _loc3_)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§9n§.splice(_loc2_,1);
                  addr58:
                  _loc3_ = param1 as EventDispatcher;
                  if(_loc5_)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc4_ && param1))
                        {
                           _loc3_.removeEventListener(Event.§'m§,this.§%c§);
                        }
                     }
                  }
               }
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function §5T§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§ !>§ = null;
         if(_loc6_)
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  §§goto(addr27);
               }
            }
            var _loc2_:int = this.§9n§.length;
            §§push(_loc2_);
            if(!(_loc5_ && _loc2_))
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§9n§[_loc3_] as § !>§));
               if(!(_loc5_ && param1))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           addr89:
                           if(_loc4_.target == param1)
                           {
                              if(!(_loc5_ && this))
                              {
                                 this.§9n§.splice(_loc3_,1);
                                 if(_loc5_ && this)
                                 {
                                    continue;
                                 }
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
                  }
               }
               §§goto(addr89);
            }
            return;
         }
         addr27:
      }
      
      public function §-n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9n§.length = 0;
         }
      }
      
      public function § 3§(param1:Function, param2:Number, ... rest) : §5!k§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§5!k§ = new §5!k§(param1,param2,rest);
         if(_loc6_)
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
            if(!this.§`!-§)
            {
               while(true)
               {
                  §§push(param1);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() * this.§?!B§);
                     if(!_loc6_)
                     {
                        addr72:
                        §§push(Number(§§pop()));
                     }
                     param1 = §§pop();
                     while(true)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§7!`§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§7!`§ = §§pop();
                           §§goto(addr47);
                        }
                     }
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr78);
         }
         addr47:
         while(this.§9n§.length == 0)
         {
            if(!_loc6_)
            {
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     if(_loc5_)
                     {
                        return;
                     }
                     addr78:
                     return;
                  }
                  continue loop0;
               }
               continue loop1;
            }
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
               continue loop2;
            }
         }
         var _loc2_:int = this.§9n§.length;
         var _loc3_:Vector.<§=q§> = this.§9n§.concat();
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= _loc2_)
            {
               if(!_loc6_)
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
               addr124:
            }
            while(_loc6_)
            {
               §§goto(addr124);
            }
         }
      }
      
      private function §%c§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!!Z§(param1.target as §=q§);
         }
      }
      
      public function get §&"-§() : Number
      {
         return this.§7!`§;
      }
   }
}
