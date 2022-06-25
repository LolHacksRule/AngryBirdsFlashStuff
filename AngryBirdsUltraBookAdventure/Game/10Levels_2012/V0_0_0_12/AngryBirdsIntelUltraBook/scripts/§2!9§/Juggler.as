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
         if(!_loc1_)
         {
            super();
         }
         while(true)
         {
            this.§&z§ = 0;
            while(!(_loc1_ && this))
            {
               this.§8c§ = new Vector.<§"m§>(0);
               if(!_loc1_)
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
         if(_loc2_ || _loc3_)
         {
            this.§8%§ = param1;
         }
      }
      
      public function add(param1:§"m§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(!_loc3_)
         {
            §§push(param1 == null);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr38);
                  }
                  §§goto(addr60);
               }
            }
            addr38:
            §§push(§§pop());
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
            }
            if(§§pop())
            {
               if(_loc4_ || _loc3_)
               {
                  addr60:
                  §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§8c§.indexOf(param1) == -1);
                     if(_loc3_ && _loc3_)
                     {
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr100);
               }
               §§push(Boolean(§§pop()));
            }
            addr82:
            if(§§pop())
            {
               if(!_loc3_)
               {
                  this.§8c§.push(param1);
                  addr100:
                  _loc2_ = param1 as EventDispatcher;
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        if(_loc4_)
                        {
                           _loc2_.addEventListener(Event.§-!&§,this.§3%§);
                        }
                     }
                  }
               }
               §§goto(addr100);
            }
            return;
         }
         §§goto(addr100);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§"!&§ = param1;
         }
      }
      
      public function §+K§(param1:§"m§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§8c§.indexOf(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ != -1)
            {
               if(!_loc4_)
               {
                  this.§8c§.splice(_loc2_,1);
                  addr64:
                  _loc3_ = param1 as EventDispatcher;
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           _loc3_.removeEventListener(Event.§-!&§,this.§3%§);
                        }
                     }
                  }
               }
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §%w§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Tween = null;
         if(_loc5_ || _loc3_)
         {
            if(param1 == null)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:int = this.§8c§.length;
            §§push(_loc2_);
            if(!(_loc6_ && param1))
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            loop0:
            while(_loc3_ >= 0)
            {
               _loc4_ = this.§8c§[_loc3_] as Tween;
               if(_loc5_)
               {
                  §§push(Boolean(_loc4_));
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              addr100:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc4_.target == param1);
                                 if(!_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop6;
                                    }
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       break loop4;
                                       §§goto(addr109);
                                    }
                                    addr109:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr122:
                                    while(true)
                                    {
                                       this.§8c§.splice(_loc3_,1);
                                       addr128:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr122:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - 1);
                                       if(!_loc6_)
                                       {
                                          addr85:
                                          §§push(int(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr85);
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop5;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr100);
                              }
                              continue loop0;
                           }
                        }
                        addr143:
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr143);
               }
               §§goto(addr122);
            }
            return;
         }
         addr36:
      }
      
      public function §7f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§8c§.length = 0;
         }
      }
      
      public function §4d§(param1:Function, param2:Number, ... rest) : §=G§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            if(param1 == null)
            {
               if(_loc6_ || param2)
               {
                  §§goto(addr54);
               }
            }
            var _loc4_:§=G§ = new §=G§(param1,param2,rest);
            if(_loc6_)
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr54:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            if(!this.§"!&§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() * this.§8%§);
                     if(!(_loc6_ && this))
                     {
                        addr92:
                        §§push(Number(§§pop()));
                     }
                     param1 = §§pop();
                     loop1:
                     while(true)
                     {
                        addr46:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§&z§);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§&z§ = §§pop();
                           while(true)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 return;
                              }
                              addr98:
                              if(this.§8c§.length != 0)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                           }
                           addr100:
                           var _loc2_:int = this.§8c§.length;
                           var _loc3_:Vector.<§"m§> = this.§8c§.concat();
                           §§push(0);
                           if(_loc5_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc4_:* = §§pop();
                           addr116:
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(§§pop() >= _loc2_)
                                    {
                                       if(!(_loc5_ || param1))
                                       {
                                          addr161:
                                          if(!_loc6_)
                                          {
                                             §§goto(addr116);
                                          }
                                          _loc4_++;
                                          §§goto(addr161);
                                          addr172:
                                       }
                                       return;
                                    }
                                    _loc3_[_loc4_].advanceTime(param1);
                                    §§goto(addr172);
                                 }
                              }
                           }
                           §§goto(addr161);
                        }
                     }
                  }
                  §§goto(addr92);
               }
               return;
            }
            §§goto(addr98);
         }
         §§goto(addr99);
      }
      
      private function §3%§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
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
