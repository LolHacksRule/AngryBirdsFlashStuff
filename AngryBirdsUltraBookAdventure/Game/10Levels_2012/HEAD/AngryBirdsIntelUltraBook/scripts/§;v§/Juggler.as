package §;v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Juggler implements §!!8§
   {
       
      
      private var §!2§:Vector.<§!!8§>;
      
      private var §9%§:Number;
      
      private var §"^§:Boolean = false;
      
      private var §<,§:Number = 1.0;
      
      public function Juggler()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         do
         {
            this.§9%§ = 0;
            do
            {
               this.§!2§ = new Vector.<§!!8§>(0);
            }
            while(_loc1_);
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function set speed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<,§ = param1;
         }
      }
      
      public function add(param1:§!!8§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:EventDispatcher = null;
         if(_loc4_ || this)
         {
            §§push(param1 == null);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        if(_loc4_ || this)
                        {
                           addr80:
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(this.§!2§.indexOf(param1) == -1);
                              if(!_loc4_)
                              {
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr105);
                        }
                     }
                  }
                  §§goto(addr92);
               }
               addr92:
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr105:
                     this.§!2§.push(param1);
                     addr110:
                     _loc2_ = param1 as EventDispatcher;
                     if(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           if(_loc3_)
                           {
                           }
                        }
                        §§goto(addr131);
                     }
                     _loc2_.addEventListener(Event.§4P§,this.§6!j§);
                  }
                  §§goto(addr110);
               }
               addr131:
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr105);
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"^§ = param1;
         }
      }
      
      public function §[v§(param1:§!!8§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.§!2§.indexOf(param1);
         if(_loc5_ || this)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  this.§!2§.splice(_loc2_,1);
                  addr69:
                  _loc3_ = param1 as EventDispatcher;
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr90);
                  }
                  _loc3_.removeEventListener(Event.§4P§,this.§6!j§);
               }
               §§goto(addr69);
            }
            addr90:
            return;
         }
         §§goto(addr69);
      }
      
      public function §^!_§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Tween = null;
         if(_loc5_)
         {
            if(param1 == null)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§!2§.length;
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(int(§§pop() - 1));
            }
            var _loc3_:* = §§pop();
            loop0:
            while(_loc3_ >= 0)
            {
               _loc4_ = this.§!2§[_loc3_] as Tween;
               if(_loc5_ || _loc2_)
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
                              loop6:
                              while(!(_loc6_ && this))
                              {
                                 while(true)
                                 {
                                    this.§!2§.splice(_loc3_,1);
                                    addr150:
                                    while(true)
                                    {
                                    }
                                 }
                                 if(_loc6_ && param1)
                                 {
                                    continue;
                                 }
                                 if(true)
                                 {
                                    break loop5;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc4_.target == param1);
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       continue loop1;
                                    }
                                    addr158:
                                    while(true)
                                    {
                                       §§pop();
                                       break loop6;
                                    }
                                 }
                                 continue loop1;
                                 addr108:
                              }
                              while(true)
                              {
                                 §§goto(addr108);
                              }
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop() - 1);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr90:
                                    §§push(int(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc6_ && this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr90);
                           }
                        }
                        continue loop0;
                        addr135:
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr144);
            }
            return;
         }
         addr31:
      }
      
      public function §"Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!2§.length = 0;
         }
      }
      
      public function §2!P§(param1:Function, param2:Number, ... rest) : §0,§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param1 == null)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr49);
               }
            }
            var _loc4_:§0,§ = new §0,§(param1,param2,rest);
            if(_loc6_ || this)
            {
               this.add(_loc4_);
            }
            return _loc4_;
         }
         addr49:
         return null;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(!this.§"^§)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() * this.§<,§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§9%§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§9%§ = §§pop();
                        §§goto(addr52);
                     }
                  }
               }
            }
            return;
         }
         addr52:
         for(; this.§!2§.length == 0; if(_loc5_ || _loc3_)
         {
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
               continue loop2;
            }
            continue loop1;
         })
         {
            if(_loc6_)
            {
               continue;
            }
            if(!_loc5_)
            {
               continue loop0;
            }
            if(!_loc6_)
            {
               return;
            }
         }
         var _loc2_:int = this.§!2§.length;
         var _loc3_:Vector.<§!!8§> = this.§!2§.concat();
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(!_loc6_)
               {
                  if(§§pop() >= _loc2_)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     loop5:
                     while(_loc6_ && param1)
                     {
                        while(true)
                        {
                           _loc4_ = §§pop();
                           continue loop5;
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
                  if(!_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            §§goto(addr130);
         }
      }
      
      private function §6!j§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[v§(param1.target as §!!8§);
         }
      }
      
      public function get §1=§() : Number
      {
         return this.§9%§;
      }
   }
}
