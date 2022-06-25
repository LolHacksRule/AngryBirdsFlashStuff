package §_-Nq§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § for§ extends EventDispatcher implements §_-eI§
   {
       
      
      private var §_-EY§:Object;
      
      private var §_-d1§:String;
      
      private var §_-8P§:Vector.<String>;
      
      private var §_-IR§:Vector.<Number>;
      
      private var §_-0-y§:Vector.<Number>;
      
      private var §_-BB§:Function;
      
      private var §_-04V§:Function;
      
      private var §_-9L§:Function;
      
      private var §_-HC§:Array;
      
      private var §_-02h§:Array;
      
      private var §_-GA§:Array;
      
      private var §_-hV§:Number;
      
      private var §_-Pe§:Number;
      
      private var §_-kv§:Number;
      
      private var §_-fo§:Boolean;
      
      public function § for§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§_-EY§ = param1;
               loop1:
               while(_loc5_)
               {
                  this.§_-Pe§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§_-hV§ = Math.max(0.0001,param2);
                     addr115:
                     while(_loc5_)
                     {
                        this.§_-kv§ = 0;
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         loop6:
         while(true)
         {
            this.§_-8P§ = new Vector.<String>(0);
            addr73:
            while(!_loc4_)
            {
               this.§_-IR§ = new Vector.<Number>(0);
               continue loop6;
            }
            §§goto(addr85);
         }
      }
      
      public function §_-Ao§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§_-EY§ != null)
            {
               loop0:
               while(true)
               {
                  this.§_-8P§.push(param1);
                  while(!_loc3_)
                  {
                     this.§_-IR§.push(Number.NaN);
                     loop2:
                     while(!(_loc3_ && this))
                     {
                        if(!(_loc3_ && param2))
                        {
                           while(true)
                           {
                              this.§_-0-y§.push(param2);
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §_-Xq§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Ao§("scaleX",param1);
         }
         do
         {
            this.§_-Ao§("scaleY",param1);
         }
         while(!(_loc2_ || this));
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§_-Ao§("x",param1);
         }
         do
         {
            this.§_-Ao§("y",param2);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function §_-Hm§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-Ao§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc11_)
         {
            §§push(param1);
            if(_loc11_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(_loc11_)
                  {
                     §§goto(addr41);
                  }
               }
               §§push(this.§_-Pe§);
               if(!(_loc12_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc11_)
            {
               §§push(this);
               §§push(this.§_-Pe§);
               if(!(_loc12_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§_-Pe§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§_-Pe§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc11_ || _loc3_)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop19:
                                 while(true)
                                 {
                                    §§pop();
                                    addr205:
                                    while(_loc11_)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() >= this.§_-hV§);
                                             continue loop19;
                                          }
                                          continue loop1;
                                       }
                                       addr234:
                                       var _loc3_:* = §§pop();
                                       var _loc4_:int = this.§_-IR§.length;
                                       var _loc5_:int = 0;
                                       addr433:
                                       if(_loc5_ < _loc4_)
                                       {
                                          if(isNaN(this.§_-IR§[_loc5_]))
                                          {
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                this.§_-IR§[_loc5_] = this.§_-EY§[this.§_-8P§[_loc5_]] as Number;
                                                addr301:
                                                addr354:
                                                §§push(Number(this.§_-IR§[_loc5_]));
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   _loc6_ = §§pop();
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         §§push(Number(this.§_-0-y§[_loc5_]));
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc12_ && _loc2_))
                                                                     {
                                                                        addr278:
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr301);
                                                                              }
                                                                              _loc9_ = §_-0CC§.§_-uB§(this.§_-d1§);
                                                                              if(!(_loc12_ && this))
                                                                              {
                                                                                 addr430:
                                                                                 addr431:
                                                                                 §§push(_loc6_);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                 }
                                                                                 _loc10_ = Number(§§pop());
                                                                                 addr432:
                                                                                 if(this.§_-fo§)
                                                                                 {
                                                                                    addr410:
                                                                                    §§push(Number(Math.round(_loc10_)));
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          addr396:
                                                                                          this.§_-EY§[this.§_-8P§[_loc5_]] = _loc10_;
                                                                                          _loc5_++;
                                                                                          addr419:
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                if(!(_loc12_ && _loc2_))
                                                                                                {
                                                                                                   if(!(_loc12_ && param1))
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      §§goto(addr433);
                                                                                                   }
                                                                                                   §§goto(addr432);
                                                                                                }
                                                                                                §§goto(addr410);
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          addr405:
                                                                                          §§goto(addr405);
                                                                                       }
                                                                                       §§goto(addr430);
                                                                                    }
                                                                                    §§goto(addr431);
                                                                                 }
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                           addr493:
                                                                           return;
                                                                           addr538:
                                                                        }
                                                                        addr549:
                                                                        §§push(this.§_-hV§);
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              addr566:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    dispatchEvent(new Event(Event.§_-rC§));
                                                                                 }
                                                                                 addr576:
                                                                                 §§push(this.onComplete);
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    addr507:
                                                                                    §§push(null);
                                                                                    if(!(_loc12_ && _loc3_))
                                                                                    {
                                                                                       addr515:
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          if(!(_loc12_ && _loc3_))
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr530:
                                                                                                this.onComplete.apply(null,this.§_-GA§);
                                                                                                addr531:
                                                                                                if(!(_loc11_ || this))
                                                                                                {
                                                                                                   §§push(this.§_-Pe§);
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr549);
                                                                                                   }
                                                                                                   addr591:
                                                                                                   §§push(§§pop() < this.§_-hV§);
                                                                                                   if(!(_loc12_ && _loc3_))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr590:
                                                                                                         §§pop();
                                                                                                         §§goto(addr591);
                                                                                                      }
                                                                                                      §§goto(addr566);
                                                                                                   }
                                                                                                   §§goto(addr590);
                                                                                                }
                                                                                                §§goto(addr538);
                                                                                                addr528:
                                                                                                addr527:
                                                                                             }
                                                                                             §§goto(addr576);
                                                                                          }
                                                                                          §§goto(addr531);
                                                                                       }
                                                                                       §§goto(addr493);
                                                                                    }
                                                                                    §§goto(addr528);
                                                                                 }
                                                                                 §§goto(addr527);
                                                                              }
                                                                              §§goto(addr493);
                                                                           }
                                                                           §§goto(addr590);
                                                                        }
                                                                     }
                                                                     §§goto(addr549);
                                                                  }
                                                               }
                                                               §§goto(addr549);
                                                            }
                                                            §§goto(addr591);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   addr492:
                                                   §§goto(addr591);
                                                   §§push(_loc2_);
                                                   addr492:
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr492);
                                          }
                                          §§goto(addr301);
                                       }
                                       if(_loc11_ || _loc2_)
                                       {
                                          §§push(this.§_-AD§);
                                          if(!(_loc12_ && this))
                                          {
                                             §§push(null);
                                             if(_loc11_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(this.§_-AD§);
                                                      if(_loc11_ || this)
                                                      {
                                                         §§push(null);
                                                         if(_loc11_)
                                                         {
                                                            §§push(this.§_-02h§);
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               §§pop().apply(§§pop(),§§pop());
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  §§goto(addr492);
                                                               }
                                                               §§goto(addr591);
                                                            }
                                                            §§goto(addr530);
                                                         }
                                                         §§goto(addr515);
                                                      }
                                                      §§goto(addr507);
                                                   }
                                                }
                                                §§goto(addr492);
                                             }
                                             §§goto(addr515);
                                          }
                                          §§goto(addr530);
                                       }
                                       §§goto(addr591);
                                       continue loop19;
                                    }
                                    continue loop0;
                                 }
                                 addr204:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr188:
                                    return;
                                 }
                                 addr142:
                                 while(true)
                                 {
                                    §§push(this.§_-HT§);
                                    addr145:
                                    while(true)
                                    {
                                       §§push(null);
                                       addr146:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc12_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          addr150:
                                          while(_loc11_)
                                          {
                                             §§push(§§pop());
                                             continue loop3;
                                          }
                                          §§goto(addr179);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr204);
                     }
                  }
               }
            }
            §§goto(addr189);
         }
         addr41:
      }
      
      public function get §_-yF§() : Boolean
      {
         return this.§_-Pe§ >= this.§_-hV§;
      }
      
      public function get target() : Object
      {
         return this.§_-EY§;
      }
      
      public function get §_-030§() : String
      {
         return this.§_-d1§;
      }
      
      public function get §_-8f§() : Number
      {
         return this.§_-hV§;
      }
      
      public function get §_-Ms§() : Number
      {
         return this.§_-Pe§;
      }
      
      public function get delay() : Number
      {
         return this.§_-kv§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§_-Pe§);
            if(_loc3_ || this)
            {
               §§push(this.§_-kv§);
               if(!_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     addr74:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§_-Pe§ = §§pop();
                  do
                  {
                     this.§_-kv§ = param1;
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  return;
                  addr76:
               }
            }
            §§goto(addr74);
         }
         §§goto(addr76);
      }
      
      public function get §_-46§() : Boolean
      {
         return this.§_-fo§;
      }
      
      public function set §_-46§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-fo§ = param1;
         }
      }
      
      public function get §_-HT§() : Function
      {
         return this.§_-BB§;
      }
      
      public function set §_-HT§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-BB§ = param1;
         }
      }
      
      public function get §_-AD§() : Function
      {
         return this.§_-04V§;
      }
      
      public function set §_-AD§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-04V§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§_-9L§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-9L§ = param1;
         }
      }
      
      public function get §_-089§() : Array
      {
         return this.§_-HC§;
      }
      
      public function set §_-089§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-HC§ = param1;
         }
      }
      
      public function get §_-oI§() : Array
      {
         return this.§_-02h§;
      }
      
      public function set §_-oI§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-02h§ = param1;
         }
      }
      
      public function get §_-yv§() : Array
      {
         return this.§_-GA§;
      }
      
      public function set §_-yv§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-GA§ = param1;
         }
      }
   }
}
