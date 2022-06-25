package §^n§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Juggler implements §"!>§
   {
       
      
      private var §4g§:Vector.<§"!>§>;
      
      private var §"!!§:Number;
      
      private var §^^§:Boolean = false;
      
      private var §-]§:Number = 1.0;
      
      public function Juggler()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§"!!§ = 0;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§4g§ = new Vector.<§"!>§>(0);
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr58);
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-]§ = param1;
         }
      }
      
      public function add(param1:§"!>§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:EventDispatcher = null;
         if(!_loc4_)
         {
            §§push(param1 == null);
            if(_loc3_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc4_ && _loc3_))
                  {
                     addr42:
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(_loc3_ || param1)
                           {
                              addr67:
                              §§push(this.§4g§.indexOf(param1) == -1);
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr76);
                           }
                           §§goto(addr99);
                        }
                     }
                  }
               }
               addr76:
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     this.§4g§.push(param1);
                     addr99:
                     _loc2_ = param1 as EventDispatcher;
                     if(!_loc4_)
                     {
                        if(_loc2_)
                        {
                           if(_loc4_)
                           {
                           }
                        }
                        §§goto(addr120);
                     }
                     _loc2_.addEventListener(Event.§ Z§,this.§&h§);
                  }
                  §§goto(addr99);
               }
               addr120:
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr67);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^^§ = param1;
         }
      }
      
      public function §>2§(param1:§"!>§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§4g§.indexOf(param1);
         if(_loc5_)
         {
            if(_loc2_ != -1)
            {
               if(_loc5_)
               {
                  addr43:
                  this.§4g§.splice(_loc2_,1);
               }
               _loc3_ = param1 as EventDispatcher;
               if(_loc5_ || param1)
               {
                  if(_loc3_)
                  {
                     if(_loc5_ || param1)
                     {
                        _loc3_.removeEventListener(Event.§ Z§,this.§&h§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §]8§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Tween = null;
         if(_loc6_)
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  §§goto(addr27);
               }
            }
            var _loc2_:int = this.§4g§.length;
            §§push(_loc2_);
            if(_loc6_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            loop0:
            while(_loc3_ >= 0)
            {
               _loc4_ = this.§4g§[_loc3_] as Tween;
               if(!(_loc5_ && param1))
               {
                  §§push(Boolean(_loc4_));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc6_ || this)
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
                              loop6:
                              while(_loc6_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    this.§4g§.splice(_loc3_,1);
                                    loop9:
                                    while(true)
                                    {
                                       addr59:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() - 1);
                                             if(!(_loc5_ && param1))
                                             {
                                                addr81:
                                                §§push(int(§§pop()));
                                             }
                                             _loc3_ = §§pop();
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop5;
                                                      addr89:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.target == param1);
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         continue loop1;
                                                      }
                                                      addr149:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop6;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop6;
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr81);
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr89);
                              }
                           }
                           §§goto(addr59);
                        }
                        continue loop0;
                        addr111:
                     }
                     §§goto(addr149);
                  }
               }
               §§goto(addr130);
            }
            return;
         }
         addr27:
      }
      
      public function §>_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§4g§.length = 0;
         }
      }
      
      public function §`N§(param1:Function, param2:Number, ... rest) : §`!!§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            if(param1 == null)
            {
               if(!(_loc5_ && this))
               {
                  return null;
               }
            }
         }
         var _loc4_:§`!!§ = new §`!!§(param1,param2,rest);
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
         if(!(_loc6_ && this))
         {
            if(!this.§^^§)
            {
               while(true)
               {
                  §§push(param1);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() * this.§-]§);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  loop1:
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§"!!§);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§"!!§ = §§pop();
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 if(this.§4g§.length != 0)
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       return;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           addr95:
                           var _loc2_:int = this.§4g§.length;
                           var _loc3_:Vector.<§"!>§> = this.§4g§.concat();
                           §§push(0);
                           if(_loc5_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc4_:* = §§pop();
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(§§pop() >= _loc2_)
                                       {
                                          if(_loc6_ && this)
                                          {
                                             continue;
                                          }
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          _loc3_[_loc4_].advanceTime(param1);
                                       }
                                       §§push(_loc4_);
                                    }
                                    §§push(§§pop() + 1);
                                 }
                                 §§push(int(§§pop()));
                              }
                              _loc4_ = §§pop();
                           }
                           return;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr89);
      }
      
      private function §&h§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>2§(param1.target as §"!>§);
         }
      }
      
      public function get §6!]§() : Number
      {
         return this.§"!!§;
      }
   }
}
