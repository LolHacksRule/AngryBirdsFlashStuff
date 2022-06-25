package §4g§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`!^§ extends EventDispatcher implements §@7§
   {
       
      
      private var §,t§:Object;
      
      private var §#;§:String;
      
      private var §!!`§:Vector.<String>;
      
      private var §>!'§:Vector.<Number>;
      
      private var § !!§:Vector.<Number>;
      
      private var §7^§:Function;
      
      private var §3!o§:Function;
      
      private var §9!0§:Function;
      
      private var §4G§:Array;
      
      private var §@Z§:Array;
      
      private var §4X§:Array;
      
      private var §]Z§:Number;
      
      private var §#!n§:Number;
      
      private var §%U§:Number;
      
      private var §9G§:Boolean;
      
      public function §`!^§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§,t§ = param1;
               while(true)
               {
                  this.§#!n§ = 0;
                  while(!_loc5_)
                  {
                     this.§]Z§ = Math.max(0.0001,param2);
                     addr75:
                     if(!(_loc4_ || param3))
                     {
                        continue;
                     }
                     this.§ !!§ = new Vector.<Number>(0);
                     addr82:
                     if(_loc4_ || param1)
                     {
                        addr39:
                        if(!(_loc4_ || param1))
                        {
                           loop4:
                           while(true)
                           {
                              this.§#;§ = param3;
                              loop5:
                              while(true)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    this.§9G§ = false;
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§!!`§ = new Vector.<String>(0);
                                          loop7:
                                          while(_loc4_)
                                          {
                                             this.§>!'§ = new Vector.<Number>(0);
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop7;
                                                §§goto(addr82);
                                             }
                                             continue loop6;
                                          }
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§%U§ = 0;
                                       continue loop4;
                                    }
                                    addr136:
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr56);
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      public function § try§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§,t§ == null)
            {
               if(_loc4_ || param1)
               {
                  return;
               }
               while(true)
               {
                  loop3:
                  while(_loc4_ || param2)
                  {
                     this.§ !!§.push(param2);
                     if(_loc4_)
                     {
                        addr31:
                        if(!(_loc4_ || param2))
                        {
                           while(true)
                           {
                              this.§>!'§.push(Number.NaN);
                              continue loop3;
                              §§goto(addr31);
                           }
                           addr78:
                        }
                        return;
                     }
                  }
               }
               addr91:
            }
            while(true)
            {
               this.§!!`§.push(param1);
               §§goto(addr91);
            }
         }
         §§goto(addr78);
      }
      
      public function §`!D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ try§("scaleX",param1);
            do
            {
               this.§ try§("scaleY",param1);
            }
            while(_loc2_);
            
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§ try§("x",param1);
            do
            {
               this.§ try§("y",param2);
            }
            while(!_loc4_);
            
         }
      }
      
      public function §'!P§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ try§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc12_ || this)
         {
            §§push(param1);
            if(!(_loc11_ && _loc3_))
            {
               if(§§pop() == 0)
               {
                  if(_loc12_ || this)
                  {
                     §§goto(addr52);
                  }
               }
               §§push(this.§#!n§);
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc12_ || _loc3_)
            {
               §§push(this);
               §§push(this.§#!n§);
               if(_loc12_ || _loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§#!n§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§#!n§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        if(_loc12_ || param1)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop20:
                                 while(true)
                                 {
                                    §§pop();
                                    addr243:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr212:
                                       while(_loc12_)
                                       {
                                          §§push(§§pop() >= this.§]Z§);
                                          continue loop20;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 addr242:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§?9§);
                                       addr187:
                                       while(true)
                                       {
                                          §§push(null);
                                          addr188:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop8:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop());
                                                   continue loop3;
                                                }
                                                addr201:
                                                loop15:
                                                while(!(_loc11_ && _loc3_))
                                                {
                                                   §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  while(true)
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop12:
                                                                           while(_loc12_ || _loc3_)
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§goto(addr226);
                                                                                 }
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(this.§#!n§);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc12_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() >= §§pop());
                                                                                             if(_loc11_ && param1)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(!(_loc12_ || param1))
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             if(_loc11_ && this)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                       §§goto(addr212);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr275:
                                                                                       var _loc3_:* = §§pop();
                                                                                       var _loc4_:int = this.§>!'§.length;
                                                                                       var _loc5_:int = 0;
                                                                                       addr454:
                                                                                       if(_loc5_ < _loc4_)
                                                                                       {
                                                                                          if(isNaN(this.§>!'§[_loc5_]))
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                this.§>!'§[_loc5_] = this.§,t§[this.§!!`§[_loc5_]] as Number;
                                                                                                if(!(_loc11_ && _loc2_))
                                                                                                {
                                                                                                   addr350:
                                                                                                   _loc6_ = this.§>!'§[_loc5_];
                                                                                                   addr344:
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(Number(this.§ !!§[_loc5_]));
                                                                                                      if(!(_loc11_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc12_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc12_ || _loc2_)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr344);
                                                                                                                              }
                                                                                                                              _loc9_ = §0Y§.§[!l§(this.§#;§);
                                                                                                                              if(!(_loc11_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr442:
                                                                                                                                 addr452:
                                                                                                                                 §§push(_loc6_ + _loc9_(_loc3_) * _loc8_);
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 addr453:
                                                                                                                                 if(this.§9G§)
                                                                                                                                 {
                                                                                                                                    addr426:
                                                                                                                                    §§push(Number(Math.round(_loc10_)));
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       if(_loc12_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                          addr408:
                                                                                                                                          this.§,t§[this.§!!`§[_loc5_]] = _loc10_;
                                                                                                                                          addr440:
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                _loc5_++;
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr408);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr454);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr440);
                                                                                                                                                }
                                                                                                                                                §§goto(addr408);
                                                                                                                                                addr421:
                                                                                                                                             }
                                                                                                                                             §§goto(addr453);
                                                                                                                                          }
                                                                                                                                          §§goto(addr426);
                                                                                                                                       }
                                                                                                                                       §§goto(addr442);
                                                                                                                                    }
                                                                                                                                    §§goto(addr452);
                                                                                                                                 }
                                                                                                                                 §§goto(addr408);
                                                                                                                              }
                                                                                                                              §§goto(addr421);
                                                                                                                           }
                                                                                                                           addr586:
                                                                                                                           dispatchEvent(new Event(Event.§"!_§));
                                                                                                                           addr592:
                                                                                                                           §§push(this.onComplete);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              addr513:
                                                                                                                              §§push(null);
                                                                                                                              if(_loc12_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc12_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc12_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr541:
                                                                                                                                          this.onComplete.apply(null,this.§4X§);
                                                                                                                                          addr542:
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             addr551:
                                                                                                                                             if(!(_loc12_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                addr602:
                                                                                                                                                §§push(this.§#!n§);
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   addr557:
                                                                                                                                                   §§push(this.§]Z§);
                                                                                                                                                   if(!(_loc11_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                                                                      if(_loc12_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr584);
                                                                                                                                                      }
                                                                                                                                                      addr601:
                                                                                                                                                      §§pop();
                                                                                                                                                      §§goto(addr602);
                                                                                                                                                   }
                                                                                                                                                   addr596:
                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr601);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr584);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr601);
                                                                                                                                                }
                                                                                                                                                addr594:
                                                                                                                                                §§goto(addr596);
                                                                                                                                                §§push(this.§]Z§);
                                                                                                                                             }
                                                                                                                                             §§goto(addr584);
                                                                                                                                          }
                                                                                                                                          §§goto(addr592);
                                                                                                                                          addr539:
                                                                                                                                          addr538:
                                                                                                                                       }
                                                                                                                                       §§goto(addr586);
                                                                                                                                    }
                                                                                                                                    §§goto(addr542);
                                                                                                                                 }
                                                                                                                                 addr584:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr586);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr539);
                                                                                                                           }
                                                                                                                           §§goto(addr538);
                                                                                                                        }
                                                                                                                        §§goto(addr557);
                                                                                                                     }
                                                                                                                     §§goto(addr594);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr557);
                                                                                                         }
                                                                                                         §§goto(addr350);
                                                                                                      }
                                                                                                      §§goto(addr557);
                                                                                                   }
                                                                                                   addr464:
                                                                                                   §§push(this.§<!h§);
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push(this.§<!h§);
                                                                                                               if(!(_loc11_ && this))
                                                                                                               {
                                                                                                                  §§push(null);
                                                                                                                  if(!(_loc11_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§@Z§);
                                                                                                                     if(_loc12_ || this)
                                                                                                                     {
                                                                                                                        §§pop().apply(§§pop(),§§pop());
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           addr593:
                                                                                                                           §§goto(addr594);
                                                                                                                           §§push(_loc2_);
                                                                                                                        }
                                                                                                                        §§goto(addr586);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr541);
                                                                                                               }
                                                                                                               §§goto(addr513);
                                                                                                            }
                                                                                                            §§goto(addr602);
                                                                                                         }
                                                                                                         §§goto(addr593);
                                                                                                      }
                                                                                                      §§goto(addr541);
                                                                                                   }
                                                                                                   §§goto(addr513);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr602);
                                                                                          }
                                                                                          §§goto(addr350);
                                                                                       }
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr464);
                                                                                       }
                                                                                       §§goto(addr551);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr243);
                                                                                 addr115:
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        loop14:
                                                                        while(§§pop())
                                                                        {
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              §§goto(addr115);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break loop14;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              addr151:
                                                                           }
                                                                        }
                                                                        §§push(Math.min(this.§]Z§,this.§#!n§) / this.§]Z§);
                                                                        if(_loc12_ || _loc3_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  addr166:
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr226:
                                 return;
                              }
                           }
                        }
                        §§goto(addr242);
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§?9§);
               if(_loc12_ || _loc3_)
               {
                  §§push(null);
                  if(_loc12_ || param1)
                  {
                     §§pop().apply(§§pop(),this.§4G§);
                     §§goto(addr151);
                  }
                  §§goto(addr188);
               }
               §§goto(addr187);
            }
         }
         addr52:
      }
      
      public function get §^!_§() : Boolean
      {
         return this.§#!n§ >= this.§]Z§;
      }
      
      public function get target() : Object
      {
         return this.§,t§;
      }
      
      public function get §+!;§() : String
      {
         return this.§#;§;
      }
      
      public function get §9!t§() : Number
      {
         return this.§]Z§;
      }
      
      public function get §&a§() : Number
      {
         return this.§#!n§;
      }
      
      public function get delay() : Number
      {
         return this.§%U§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§#!n§);
            if(!_loc3_)
            {
               §§push(this.§%U§);
               if(_loc2_)
               {
                  addr54:
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     §§push(param1);
                  }
                  §§pop().§#!n§ = §§pop();
                  do
                  {
                     this.§%U§ = param1;
                  }
                  while(_loc3_);
                  
                  return;
                  addr55:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr54);
         }
         §§goto(addr55);
      }
      
      public function get §?P§() : Boolean
      {
         return this.§9G§;
      }
      
      public function set §?P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9G§ = param1;
         }
      }
      
      public function get §?9§() : Function
      {
         return this.§7^§;
      }
      
      public function set §?9§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§7^§ = param1;
         }
      }
      
      public function get §<!h§() : Function
      {
         return this.§3!o§;
      }
      
      public function set §<!h§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3!o§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§9!0§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9!0§ = param1;
         }
      }
      
      public function get §"x§() : Array
      {
         return this.§4G§;
      }
      
      public function set §"x§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4G§ = param1;
         }
      }
      
      public function get §=!M§() : Array
      {
         return this.§@Z§;
      }
      
      public function set §=!M§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@Z§ = param1;
         }
      }
      
      public function get §@R§() : Array
      {
         return this.§4X§;
      }
      
      public function set §@R§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4X§ = param1;
         }
      }
   }
}
