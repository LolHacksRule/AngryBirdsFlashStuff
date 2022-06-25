package §85§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5S§ extends EventDispatcher implements §?!%§
   {
       
      
      private var §+F§:Object;
      
      private var §&!3§:String;
      
      private var §>!m§:Vector.<String>;
      
      private var §?N§:Vector.<Number>;
      
      private var §!!=§:Vector.<Number>;
      
      private var §07§:Function;
      
      private var §extends§:Function;
      
      private var §10§:Function;
      
      private var §3!1§:Array;
      
      private var §9u§:Array;
      
      private var §;!_§:Array;
      
      private var §[!q§:Number;
      
      private var §0Q§:Number;
      
      private var §+!e§:Number;
      
      private var §9!>§:Boolean;
      
      public function §5S§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§+F§ = param1;
               loop1:
               while(true)
               {
                  this.§0Q§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§[!q§ = Math.max(0.0001,param2);
                     loop3:
                     while(true)
                     {
                        this.§+!e§ = 0;
                        loop4:
                        while(_loc5_)
                        {
                           this.§&!3§ = param3;
                           while(_loc5_)
                           {
                              this.§9!>§ = false;
                              while(_loc5_)
                              {
                                 this.§>!m§ = new Vector.<String>(0);
                                 while(true)
                                 {
                                    this.§?N§ = new Vector.<Number>(0);
                                    loop8:
                                    while(!(_loc4_ && param1))
                                    {
                                       while(true)
                                       {
                                          this.§!!=§ = new Vector.<Number>(0);
                                          if(!(_loc5_ || param2))
                                          {
                                             continue loop8;
                                          }
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr44);
                                             }
                                             §§goto(addr100);
                                          }
                                          §§goto(addr95);
                                       }
                                       return;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                              if(_loc5_ || param3)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §?!v§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.§+F§ != null)
            {
               loop0:
               while(true)
               {
                  this.§>!m§.push(param1);
                  while(_loc4_ || _loc3_)
                  {
                     if(_loc4_)
                     {
                        this.§?N§.push(Number.NaN);
                        do
                        {
                           this.§!!=§.push(param2);
                        }
                        while(!(_loc4_ || this));
                        
                        if(_loc4_)
                        {
                           return;
                        }
                        continue;
                     }
                  }
                  addr91:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr91);
      }
      
      public function §+!S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§?!v§("scaleX",param1);
         }
         do
         {
            this.§?!v§("scaleY",param1);
         }
         while(_loc2_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§?!v§("x",param1);
         }
         do
         {
            this.§?!v§("y",param2);
         }
         while(_loc4_ && this);
         
      }
      
      public function §<'§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?!v§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc12_ || _loc2_)
         {
            §§push(param1);
            if(!(_loc11_ && param1))
            {
               if(§§pop() == 0)
               {
                  if(_loc12_ || this)
                  {
                     §§goto(addr52);
                  }
               }
               §§push(this.§0Q§);
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc12_)
            {
               §§push(this);
               §§push(this.§0Q§);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§0Q§ = §§pop();
            }
            loop0:
            while(true)
            {
               §§push(this.§0Q§);
               loop1:
               while(true)
               {
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc12_)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              addr212:
                              while(true)
                              {
                                 §§pop();
                                 addr213:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr196:
                                    while(true)
                                    {
                                       §§push(§§pop() >= this.§[!q§);
                                    }
                                 }
                              }
                              addr212:
                           }
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§&!@§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(null);
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop9:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop10:
                                                while(_loc12_ || param1)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            while(_loc12_)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(_loc11_ && _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 §§pop();
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc11_ && this)
                                                                                    {
                                                                                       break loop17;
                                                                                    }
                                                                                    §§push(this.§0Q§);
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc11_ && _loc2_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(§§pop() >= §§pop());
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             addr128:
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                          §§push(Math.min(this.§[!q§,this.§0Q§) / this.§[!q§);
                                                                                          if(_loc12_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    var _loc3_:* = §§pop();
                                                                                    var _loc4_:int = this.§?N§.length;
                                                                                    var _loc5_:int = 0;
                                                                                    addr439:
                                                                                    if(_loc5_ < _loc4_)
                                                                                    {
                                                                                       if(isNaN(this.§?N§[_loc5_]))
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             this.§?N§[_loc5_] = this.§+F§[this.§>!m§[_loc5_]] as Number;
                                                                                             if(_loc12_ || this)
                                                                                             {
                                                                                                addr312:
                                                                                                §§push(Number(this.§?N§[_loc5_]));
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(_loc12_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(Number(this.§!!=§[_loc5_]));
                                                                                                      if(_loc12_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            if(!(_loc11_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(!(_loc11_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc11_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr307:
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr312);
                                                                                                                           }
                                                                                                                           _loc9_ = §#!w§.§=D§(this.§&!3§);
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 addr437:
                                                                                                                                 §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    addr436:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 addr438:
                                                                                                                                 if(this.§9!>§)
                                                                                                                                 {
                                                                                                                                    addr411:
                                                                                                                                    §§push(Number(Math.round(_loc10_)));
                                                                                                                                    if(_loc12_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                       addr390:
                                                                                                                                       this.§+F§[this.§>!m§[_loc5_]] = _loc10_;
                                                                                                                                       addr423:
                                                                                                                                       if(_loc12_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          _loc5_++;
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             if(_loc12_ || this)
                                                                                                                                             {
                                                                                                                                                if(_loc12_ || this)
                                                                                                                                                {
                                                                                                                                                   addr388:
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr390);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr439);
                                                                                                                                                }
                                                                                                                                                §§goto(addr411);
                                                                                                                                             }
                                                                                                                                             §§goto(addr423);
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                       }
                                                                                                                                       §§goto(addr438);
                                                                                                                                    }
                                                                                                                                    §§goto(addr437);
                                                                                                                                 }
                                                                                                                                 §§goto(addr390);
                                                                                                                              }
                                                                                                                              §§goto(addr436);
                                                                                                                           }
                                                                                                                           §§goto(addr388);
                                                                                                                        }
                                                                                                                        addr484:
                                                                                                                        return;
                                                                                                                        addr524:
                                                                                                                     }
                                                                                                                     addr535:
                                                                                                                     §§push(this.§[!q§);
                                                                                                                     if(!(_loc11_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                        if(_loc12_ || param1)
                                                                                                                        {
                                                                                                                           addr552:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc12_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr571:
                                                                                                                                 dispatchEvent(new Event(Event.§%!W§));
                                                                                                                              }
                                                                                                                              addr577:
                                                                                                                              §§push(this.onComplete);
                                                                                                                              if(_loc12_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(null);
                                                                                                                                 if(_loc12_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr506:
                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc11_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             addr521:
                                                                                                                                             this.onComplete.apply(null,this.§;!_§);
                                                                                                                                             addr522:
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr577);
                                                                                                                                             }
                                                                                                                                             §§goto(addr524);
                                                                                                                                             addr519:
                                                                                                                                             addr518:
                                                                                                                                          }
                                                                                                                                          §§push(this.§0Q§);
                                                                                                                                          if(!(_loc11_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr535);
                                                                                                                                          }
                                                                                                                                          addr592:
                                                                                                                                          §§push(§§pop() < this.§[!q§);
                                                                                                                                          if(_loc12_ || param1)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr591:
                                                                                                                                                §§pop();
                                                                                                                                                §§goto(addr592);
                                                                                                                                             }
                                                                                                                                             §§goto(addr552);
                                                                                                                                          }
                                                                                                                                          §§goto(addr591);
                                                                                                                                       }
                                                                                                                                       §§goto(addr522);
                                                                                                                                    }
                                                                                                                                    §§goto(addr484);
                                                                                                                                 }
                                                                                                                                 §§goto(addr519);
                                                                                                                              }
                                                                                                                              §§goto(addr518);
                                                                                                                           }
                                                                                                                           §§goto(addr484);
                                                                                                                        }
                                                                                                                        §§goto(addr591);
                                                                                                                     }
                                                                                                                     §§goto(addr592);
                                                                                                                  }
                                                                                                                  §§goto(addr535);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr592);
                                                                                                      }
                                                                                                      §§goto(addr307);
                                                                                                   }
                                                                                                   addr449:
                                                                                                   §§push(this.§7R§);
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            if(!(_loc11_ && this))
                                                                                                            {
                                                                                                               §§push(this.§7R§);
                                                                                                               if(_loc12_ || this)
                                                                                                               {
                                                                                                                  §§push(null);
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     addr476:
                                                                                                                     §§push(this.§9u§);
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§pop().apply(§§pop(),§§pop());
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           addr578:
                                                                                                                           §§goto(addr592);
                                                                                                                           §§push(_loc2_);
                                                                                                                           addr483:
                                                                                                                        }
                                                                                                                        §§goto(addr307);
                                                                                                                     }
                                                                                                                     §§goto(addr521);
                                                                                                                  }
                                                                                                                  §§goto(addr506);
                                                                                                               }
                                                                                                               §§goto(addr521);
                                                                                                            }
                                                                                                            §§goto(addr483);
                                                                                                         }
                                                                                                         §§goto(addr578);
                                                                                                      }
                                                                                                      §§goto(addr476);
                                                                                                   }
                                                                                                   §§goto(addr521);
                                                                                                }
                                                                                                §§goto(addr535);
                                                                                             }
                                                                                             §§goto(addr578);
                                                                                          }
                                                                                          §§goto(addr571);
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       §§goto(addr449);
                                                                                    }
                                                                                    §§goto(addr578);
                                                                                 }
                                                                                 §§goto(addr196);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr212);
                                                                              }
                                                                           }
                                                                           §§goto(addr213);
                                                                           addr157:
                                                                        }
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr201);
                              }
                           }
                        }
                     }
                     §§goto(addr212);
                  }
               }
            }
         }
         addr52:
      }
      
      public function get §&W§() : Boolean
      {
         return this.§0Q§ >= this.§[!q§;
      }
      
      public function get target() : Object
      {
         return this.§+F§;
      }
      
      public function get §%"$§() : String
      {
         return this.§&!3§;
      }
      
      public function get §6k§() : Number
      {
         return this.§[!q§;
      }
      
      public function get §[!v§() : Number
      {
         return this.§0Q§;
      }
      
      public function get delay() : Number
      {
         return this.§+!e§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            §§push(this.§0Q§);
            if(_loc3_)
            {
               §§push(this.§+!e§);
               if(_loc3_ || this)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     addr74:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§0Q§ = §§pop();
                  do
                  {
                     this.§+!e§ = param1;
                  }
                  while(_loc2_);
                  
                  return;
                  addr55:
               }
            }
            §§goto(addr74);
         }
         §§goto(addr55);
      }
      
      public function get §?!,§() : Boolean
      {
         return this.§9!>§;
      }
      
      public function set §?!,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9!>§ = param1;
         }
      }
      
      public function get §&!@§() : Function
      {
         return this.§07§;
      }
      
      public function set §&!@§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§07§ = param1;
         }
      }
      
      public function get §7R§() : Function
      {
         return this.§extends§;
      }
      
      public function set §7R§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§extends§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§10§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§10§ = param1;
         }
      }
      
      public function get §#L§() : Array
      {
         return this.§3!1§;
      }
      
      public function set §#L§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§3!1§ = param1;
         }
      }
      
      public function get §-i§() : Array
      {
         return this.§9u§;
      }
      
      public function set §-i§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9u§ = param1;
         }
      }
      
      public function get §6W§() : Array
      {
         return this.§;!_§;
      }
      
      public function set §6W§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§;!_§ = param1;
         }
      }
   }
}
