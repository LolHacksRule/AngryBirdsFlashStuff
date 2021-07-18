package §,M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3!2§ implements §6!G§
   {
       
      
      private var §7@§:Vector.<§6!G§>;
      
      private var §=u§:Number;
      
      private var §6Q§:Boolean = false;
      
      private var §4r§:Number = 1.0;
      
      public function §3!2§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
            while(true)
            {
               this.§=u§ = 0;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§7@§ = new Vector.<§6!G§>(0);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§4r§ = param1;
         }
      }
      
      public function add(param1:§6!G§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_)
         {
            §§push(param1 == null);
            if(!(_loc3_ && this))
            {
               §§push(!§§pop());
               if(_loc4_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr63);
               }
               §§pop();
               if(_loc4_)
               {
                  addr63:
                  if(§§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr71:
                        this.§7@§.push(param1);
                     }
                     addr75:
                     _loc2_ = param1 as EventDispatcher;
                     if(_loc4_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc2_.addEventListener(Event.§9Y§,this.§ 6§);
                           }
                        }
                     }
                  }
                  return;
                  §§push(this.§7@§.indexOf(param1) == -1);
               }
               §§goto(addr75);
            }
            §§goto(addr63);
         }
         §§goto(addr71);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6Q§ = param1;
         }
      }
      
      public function §8!8§(param1:§6!G§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§7@§.indexOf(param1);
         if(!_loc5_)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  this.§7@§.splice(_loc2_,1);
                  addr52:
                  _loc3_ = param1 as EventDispatcher;
                  if(!_loc5_)
                  {
                     if(_loc3_)
                     {
                        if(_loc4_ || param1)
                        {
                           _loc3_.removeEventListener(Event.§9Y§,this.§ 6§);
                        }
                     }
                  }
               }
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §&!B§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§@-§ = null;
         if(!(_loc5_ && param1))
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = this.§7@§.length;
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ >= 0)
         {
            §§push(Boolean(_loc4_ = this.§7@§[_loc3_] as §@-§));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc6_ || param1)
                  {
                     addr77:
                     §§pop();
                     if(!_loc6_)
                     {
                        continue;
                     }
                     §§push(_loc4_.target == param1);
                  }
               }
               if(§§pop())
               {
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  this.§7@§.splice(_loc3_,1);
                  if(_loc5_)
                  {
                     continue;
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
            §§goto(addr77);
         }
      }
      
      public function §5!_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7@§.length = 0;
         }
      }
      
      public function §^G§(param1:Function, param2:Number, ... rest) : § #§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && rest))
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§ #§ = new § #§(param1,param2,rest);
         if(_loc5_ || param1)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(!this.§6Q§)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(§§pop() * this.§4r§);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr86:
                        §§push(Number(§§pop()));
                     }
                     param1 = §§pop();
                     loop1:
                     while(_loc6_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§=u§);
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§=u§ = §§pop();
                           while(this.§7@§.length == 0)
                           {
                              if(_loc6_)
                              {
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                    continue loop1;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop2;
                           }
                           addr96:
                           var _loc2_:int = this.§7@§.length;
                           var _loc3_:Vector.<§6!G§> = this.§7@§.concat();
                           var _loc4_:int = 0;
                           while(true)
                           {
                              if(_loc4_ >= _loc2_)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 loop5:
                                 while(_loc5_ && _loc3_)
                                 {
                                    while(true)
                                    {
                                       _loc4_++;
                                       continue loop5;
                                    }
                                 }
                                 continue;
                              }
                              _loc3_[_loc4_].advanceTime(param1);
                              §§goto(addr145);
                           }
                           return;
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr94);
      }
      
      private function § 6§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§8!8§(param1.target as §6!G§);
         }
      }
      
      public function get §?E§() : Number
      {
         return this.§=u§;
      }
   }
}
