package §#!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2!s§ implements §,!Y§
   {
       
      
      private var §-"2§:Vector.<§,!Y§>;
      
      private var §&!5§:Number;
      
      private var §7!J§:Boolean = false;
      
      private var §6J§:Number = 1.0;
      
      public function §2!s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§&!5§ = 0;
            do
            {
               this.§-"2§ = new Vector.<§,!Y§>(0);
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6J§ = param1;
         }
      }
      
      public function add(param1:§,!Y§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(!_loc4_)
         {
            §§push(param1 == null);
            if(!(_loc4_ && param1))
            {
               §§push(!§§pop());
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr53:
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr74);
                     }
                  }
                  addr67:
                  §§goto(addr61);
               }
            }
            §§goto(addr53);
         }
         addr61:
         if(this.§-"2§.indexOf(param1) == -1)
         {
            if(!_loc4_)
            {
               this.§-"2§.push(param1);
               addr74:
               _loc2_ = param1 as EventDispatcher;
               if(_loc3_)
               {
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        _loc2_.addEventListener(Event.§2"$§,this.§ o§);
                     }
                  }
               }
            }
            §§goto(addr74);
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§7!J§ = param1;
         }
      }
      
      public function native(param1:§,!Y§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§-"2§.indexOf(param1);
         if(!_loc5_)
         {
            if(_loc2_ != -1)
            {
               if(_loc4_)
               {
                  this.§-"2§.splice(_loc2_,1);
                  addr47:
                  _loc3_ = param1 as EventDispatcher;
                  if(_loc4_)
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                        }
                     }
                     §§goto(addr74);
                  }
                  _loc3_.removeEventListener(Event.§2"$§,this.§ o§);
               }
               §§goto(addr47);
            }
            addr74:
            return;
         }
         §§goto(addr47);
      }
      
      public function §6!<§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§>!i§ = null;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§-"2§.length;
         §§push(_loc2_);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§-"2§[_loc3_] as §>!i§));
            if(_loc6_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        addr84:
                        if(_loc4_.target == param1)
                        {
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                           this.§-"2§.splice(_loc3_,1);
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                        }
                     }
                     §§push(_loc3_);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
            }
            §§goto(addr84);
         }
      }
      
      public function §98§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-"2§.length = 0;
         }
      }
      
      public function §+"+§(param1:Function, param2:Number, ... rest) : §2"§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && rest))
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§2"§ = new §2"§(param1,param2,rest);
         if(_loc5_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            if(this.§7!J§)
            {
               if(_loc5_ || _loc3_)
               {
                  §§goto(addr103);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr104:
               }
            }
            loop1:
            while(true)
            {
               §§push(param1);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() * this.§6J§);
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               param1 = §§pop();
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§&!5§);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§&!5§ = §§pop();
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(this.§-"2§.length != 0)
                           {
                              break;
                           }
                           if(_loc5_ || param1)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              break loop3;
                           }
                           if(true)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                     var _loc2_:int = this.§-"2§.length;
                     var _loc3_:Vector.<§,!Y§> = this.§-"2§.concat();
                     var _loc4_:int = 0;
                     addr118:
                     if(_loc4_ >= _loc2_)
                     {
                        if(_loc6_)
                        {
                           addr129:
                           if(!(_loc6_ && _loc2_))
                           {
                              §§goto(addr118);
                           }
                           _loc4_++;
                           §§goto(addr129);
                           addr154:
                        }
                        return;
                     }
                     _loc3_[_loc4_].advanceTime(param1);
                     §§goto(addr154);
                  }
               }
            }
         }
         addr103:
      }
      
      private function § o§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.native(param1.target as §,!Y§);
         }
      }
      
      public function get §`!h§() : Number
      {
         return this.§&!5§;
      }
   }
}
