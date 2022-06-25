package §2!9§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Juggler implements §"m§
   {
       
      
      private var §8c§:Vector.<§"m§>;
      
      private var §&z§:Number;
      
      private var §"!&§:Boolean = false;
      
      private var §8%§:Number = 1.0;
      
      public function Juggler()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            while(true)
            {
               this.§&z§ = 0;
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.§8c§ = new Vector.<§"m§>(0);
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8%§ = param1;
         }
      }
      
      public function add(param1:§"m§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(!_loc4_)
         {
            §§push(param1 == null);
            if(!(_loc4_ && _loc3_))
            {
               §§push(!§§pop());
               if(!(_loc4_ && _loc2_))
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc4_)
                  {
                     addr42:
                     §§push(§§pop());
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr64:
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(this.§8c§.indexOf(param1) == -1);
                              if(_loc3_)
                              {
                                 §§goto(addr76);
                              }
                              addr76:
                              §§goto(addr75);
                           }
                           §§goto(addr79);
                        }
                        addr75:
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              this.§8c§.push(param1);
                              addr94:
                              _loc2_ = param1 as EventDispatcher;
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc2_.addEventListener(Event.§-!&§,this.§3%§);
                                    }
                                 }
                              }
                              addr79:
                           }
                           §§goto(addr94);
                        }
                        return;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr42);
         }
         §§goto(addr94);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"!&§ = param1;
         }
      }
      
      public function §+K§(param1:§"m§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§8c§.indexOf(param1);
         if(_loc4_)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  this.§8c§.splice(_loc2_,1);
                  addr63:
                  _loc3_ = param1 as EventDispatcher;
                  if(_loc4_ || this)
                  {
                     if(_loc3_)
                     {
                        if(!_loc5_)
                        {
                           _loc3_.removeEventListener(Event.§-!&§,this.§3%§);
                        }
                     }
                  }
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §%w§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Tween = null;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(!(_loc6_ && param1))
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§8c§.length;
            §§push(_loc2_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            loop0:
            while(_loc3_ >= 0)
            {
               _loc4_ = this.§8c§[_loc3_] as Tween;
               if(!(_loc6_ && param1))
               {
                  §§push(Boolean(_loc4_));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 this.§8c§.splice(_loc3_,1);
                              }
                              loop6:
                              while(_loc5_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                              loop3:
                              while(true)
                              {
                                 addr91:
                                 addr148:
                                 while(true)
                                 {
                                    §§push(_loc4_.target == param1);
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                    §§goto(addr91);
                                 }
                              }
                              addr133:
                              addr149:
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - 1);
                                 if(!_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              _loc3_ = §§pop();
                              if(!_loc6_)
                              {
                                 if(true)
                                 {
                                    break loop5;
                                 }
                                 §§goto(addr91);
                              }
                              else
                              {
                                 §§goto(addr133);
                              }
                           }
                        }
                        continue loop0;
                        addr113:
                     }
                     §§goto(addr148);
                  }
               }
               §§goto(addr140);
            }
            return;
         }
         addr31:
      }
      
      public function §7f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§8c§.length = 0;
         }
      }
      
      public function §4d§(param1:Function, param2:Number, ... rest) : §=G§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc4_:§=G§ = new §=G§(param1,param2,rest);
         if(!_loc6_)
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
            if(!this.§"!&§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() * this.§8%§);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§&z§);
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§&z§ = §§pop();
                        loop3:
                        while(!_loc5_)
                        {
                           while(this.§8c§.length == 0)
                           {
                              if(_loc6_ || param1)
                              {
                                 if(!_loc5_)
                                 {
                                    return;
                                 }
                                 continue loop1;
                              }
                              if(!_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    return;
                                 }
                                 addr84:
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           var _loc2_:int = this.§8c§.length;
                           var _loc3_:Vector.<§"m§> = this.§8c§.concat();
                           §§push(0);
                           if(_loc6_ || this)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc4_:* = §§pop();
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc6_ || this)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(§§pop() >= _loc2_)
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(_loc5_)
                                          {
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                continue loop6;
                                             }
                                          }
                                          continue;
                                       }
                                       _loc3_[_loc4_].advanceTime(param1);
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                 }
                                 while(true)
                                 {
                                 }
                              }
                              §§goto(addr146);
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr84);
         }
         §§goto(addr58);
      }
      
      private function §3%§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§+K§(param1.target as §"m§);
         }
      }
      
      public function get §<!,§() : Number
      {
         return this.§&z§;
      }
   }
}
