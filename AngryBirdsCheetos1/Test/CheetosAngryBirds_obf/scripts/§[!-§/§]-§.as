package §[!-§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]-§ implements §>'§
   {
       
      
      private var § #§:Vector.<§>'§>;
      
      private var §=M§:Number;
      
      private var §`!"§:Boolean = false;
      
      private var §@c§:Number = 1.0;
      
      public function §]-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         do
         {
            this.§=M§ = 0;
            do
            {
               this.§ #§ = new Vector.<§>'§>(0);
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@c§ = param1;
         }
      }
      
      public function add(param1:§>'§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(!_loc4_)
         {
            §§push(param1 == null);
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr38:
                        §§pop();
                        if(_loc3_)
                        {
                           §§goto(addr57);
                        }
                        §§goto(addr60);
                     }
                  }
                  addr57:
                  if(this.§ #§.indexOf(param1) == -1)
                  {
                     if(!_loc4_)
                     {
                        addr60:
                        this.§ #§.push(param1);
                        addr64:
                        _loc2_ = param1 as EventDispatcher;
                        if(!_loc4_)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 _loc2_.addEventListener(Event.§8v§,this.§8!^§);
                              }
                           }
                        }
                     }
                     §§goto(addr64);
                  }
                  return;
               }
            }
            §§goto(addr38);
         }
         §§goto(addr60);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`!"§ = param1;
         }
      }
      
      public function §3f§(param1:§>'§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§ #§.indexOf(param1);
         if(_loc5_ || param1)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr53:
                  this.§ #§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(_loc5_)
               {
                  if(_loc3_)
                  {
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr85);
               }
               _loc3_.removeEventListener(Event.§8v§,this.§8!^§);
            }
            addr85:
            return;
         }
         §§goto(addr53);
      }
      
      public function §7!F§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§;4§ = null;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  §§goto(addr27);
               }
            }
            var _loc2_:int = this.§ #§.length;
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            while(_loc3_ >= 0)
            {
               §§push(Boolean(_loc4_ = this.§ #§[_loc3_] as §;4§));
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr72:
                        §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           addr84:
                           if(_loc4_.target == param1)
                           {
                              if(_loc6_ || param1)
                              {
                                 this.§ #§.splice(_loc3_,1);
                                 if(_loc5_)
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
                  §§goto(addr84);
               }
               §§goto(addr72);
            }
            return;
         }
         addr27:
      }
      
      public function §&M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§ #§.length = 0;
         }
      }
      
      public function §"t§(param1:Function, param2:Number, ... rest) : §7p§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && rest))
         {
            if(param1 == null)
            {
               if(!_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§7p§ = new §7p§(param1,param2,rest);
         if(!(_loc5_ && rest))
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(!this.§`!"§)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() * this.§@c§);
                     if(!(_loc5_ && _loc2_))
                     {
                        addr103:
                        §§push(Number(§§pop()));
                     }
                     param1 = §§pop();
                     loop1:
                     while(true)
                     {
                        addr45:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§=M§);
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§=M§ = §§pop();
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr109);
         }
         §§goto(addr43);
      }
      
      private function §8!^§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3f§(param1.target as §>'§);
         }
      }
      
      public function get §<q§() : Number
      {
         return this.§=M§;
      }
   }
}
