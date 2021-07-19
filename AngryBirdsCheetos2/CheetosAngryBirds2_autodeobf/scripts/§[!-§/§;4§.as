package §[!-§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;4§ extends EventDispatcher implements §>'§
   {
       
      
      private var §[!W§:Object;
      
      private var §9!2§:String;
      
      private var §^!Y§:Vector.<String>;
      
      private var §#I§:Vector.<Number>;
      
      private var §`!?§:Vector.<Number>;
      
      private var §#X§:Function;
      
      private var §"E§:Function;
      
      private var §%H§:Function;
      
      private var §-!A§:Array;
      
      private var §<!=§:Array;
      
      private var §"b§:Array;
      
      private var §!!^§:Number;
      
      private var §3T§:Number;
      
      private var §9T§:Number;
      
      private var §"!9§:Boolean;
      
      public function §;4§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§[!W§ = param1;
               loop1:
               for(; _loc4_ || param3; loop4:
               while(_loc4_ || param1)
               {
                  this.§9!2§ = param3;
                  loop5:
                  while(true)
                  {
                     this.§"!9§ = false;
                     loop6:
                     for(; !_loc5_; while(true)
                     {
                        this.§^!Y§ = new Vector.<String>(0);
                        do
                        {
                           this.§#I§ = new Vector.<Number>(0);
                           do
                           {
                              this.§`!?§ = new Vector.<Number>(0);
                           }
                           while(_loc5_);
                           
                        }
                        while(_loc5_ && param3);
                        
                        if(!_loc5_)
                        {
                           continue loop5;
                        }
                        continue loop6;
                     },return)
                     {
                        if(_loc4_)
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr116);
                     }
                     continue loop4;
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     §§goto(addr50);
                  }
               })
               {
                  this.§3T§ = 0;
                  while(true)
                  {
                     this.§!!^§ = Math.max(0.0001,param2);
                     addr116:
                     while(true)
                     {
                        this.§9T§ = 0;
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §9d§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§[!W§ == null)
            {
               if(_loc3_ || this)
               {
                  return;
               }
               while(true)
               {
               }
               addr80:
            }
            loop1:
            while(true)
            {
               this.§^!Y§.push(param1);
               do
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  continue loop1;
               }
               while(this.§#I§.push(Number.NaN), do
               {
                  this.§`!?§.push(param2);
               }
               while(!_loc3_);
               , _loc4_);
               
            }
         }
      }
      
      public function §6!`§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9d§("scaleX",param1);
         }
         do
         {
            this.§9d§("scaleY",param1);
         }
         while(!_loc3_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§9d§("x",param1);
         }
         do
         {
            this.§9d§("y",param2);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function §2!>§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§9d§("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc11_ || _loc3_)
         {
            §§push(param1);
            if(!_loc12_)
            {
               if(§§pop() == 0)
               {
                  if(_loc11_)
                  {
                     §§goto(addr41);
                  }
               }
               §§push(this.§3T§);
               if(!(_loc12_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc12_)
            {
               §§push(this);
               §§push(this.§3T§);
               if(!(_loc12_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§3T§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§3T§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc11_ || this))
                                       {
                                          break;
                                       }
                                       §§push(§§pop() >= this.§!!^§);
                                       loop7:
                                       for(; !(_loc12_ && _loc2_); while(_loc11_ || _loc3_)
                                       {
                                          §§goto(addr183);
                                          §§push(!§§pop());
                                       })
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   loop17:
                                                   while(_loc11_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr135:
                                                               while(_loc11_ || this)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(_loc12_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 while(!(_loc12_ && _loc3_))
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(§§pop() >= §§pop());
                                                                                    if(!(_loc11_ || _loc3_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(_loc12_ && _loc2_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(!(_loc12_ && param1))
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             while(_loc11_)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(this.§3T§);
                                                                                                   if(_loc12_ && _loc3_)
                                                                                                   {
                                                                                                      break loop6;
                                                                                                   }
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   continue loop23;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop17;
                                                                                             addr165:
                                                                                          }
                                                                                          addr108:
                                                                                          §§push(this.§@!W§);
                                                                                          if(!(_loc12_ && param1))
                                                                                          {
                                                                                             §§push(null);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§pop().apply(§§pop(),this.§-!A§);
                                                                                                addr123:
                                                                                                if(_loc11_ || _loc2_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(null);
                                                                                                §§goto(addr108);
                                                                                             }
                                                                                             addr173:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             continue loop7;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr123);
                                                                                    }
                                                                                    §§push(Math.min(this.§!!^§,this.§3T§) / this.§!!^§);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       break loop6;
                                                                                    }
                                                                                    break loop6;
                                                                                    addr97:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr184:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop17;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr157);
                                                                                 }
                                                                                 addr157:
                                                                                 addr183:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr97);
                                                                              }
                                                                              §§goto(addr165);
                                                                           }
                                                                           §§goto(addr184);
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr185);
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr218:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr173);
                                                §§goto(addr218);
                                             }
                                          }
                                          return;
                                       }
                                       continue loop3;
                                    }
                                    var _loc3_:* = §§pop();
                                    var _loc4_:int = this.§#I§.length;
                                    var _loc5_:int = 0;
                                    addr448:
                                    if(_loc5_ < _loc4_)
                                    {
                                       if(isNaN(this.§#I§[_loc5_]))
                                       {
                                          addr359:
                                          this.§#I§[_loc5_] = this.§[!W§[this.§^!Y§[_loc5_]] as Number;
                                          if(!(_loc12_ && this))
                                          {
                                             addr344:
                                             _loc6_ = this.§#I§[_loc5_];
                                             addr338:
                                             if(_loc11_)
                                             {
                                                if(!_loc12_)
                                                {
                                                   §§push(Number(this.§`!?§[_loc5_]));
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc11_ || this)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(!(_loc12_ && _loc2_))
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  addr312:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     addr320:
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        addr328:
                                                                        _loc8_ = §§pop();
                                                                        if(!(_loc12_ && _loc2_))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr338);
                                                                           }
                                                                           _loc9_ = §-1§.§6!0§(this.§9!2§);
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              addr445:
                                                                              §§push(_loc6_);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                              }
                                                                              _loc10_ = Number(§§pop());
                                                                           }
                                                                           addr447:
                                                                           if(this.§"!9§)
                                                                           {
                                                                              addr425:
                                                                              §§push(Number(Math.round(_loc10_)));
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    addr402:
                                                                                    this.§[!W§[this.§^!Y§[_loc5_]] = _loc10_;
                                                                                    addr434:
                                                                                    if(!(_loc12_ && this))
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          _loc5_++;
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr402);
                                                                                                }
                                                                                                §§goto(addr448);
                                                                                             }
                                                                                             §§goto(addr434);
                                                                                          }
                                                                                          §§goto(addr402);
                                                                                       }
                                                                                       §§goto(addr447);
                                                                                    }
                                                                                    §§goto(addr425);
                                                                                 }
                                                                              }
                                                                              §§goto(addr445);
                                                                           }
                                                                           §§goto(addr402);
                                                                        }
                                                                        addr598:
                                                                        §§push(this.onComplete);
                                                                        if(_loc11_)
                                                                        {
                                                                           addr512:
                                                                           §§push(null);
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       addr535:
                                                                                       this.onComplete.apply(null,this.§"b§);
                                                                                       addr536:
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          addr550:
                                                                                          if(!(_loc11_ || _loc2_))
                                                                                          {
                                                                                             addr606:
                                                                                             §§push(this.§3T§);
                                                                                             if(!(_loc12_ && this))
                                                                                             {
                                                                                                addr561:
                                                                                                §§push(this.§!!^§);
                                                                                                if(_loc11_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() >= §§pop());
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      if(!(_loc12_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr580);
                                                                                                      }
                                                                                                      §§goto(addr603);
                                                                                                   }
                                                                                                   §§goto(addr605);
                                                                                                }
                                                                                                addr602:
                                                                                                addr603:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr605:
                                                                                                   §§pop();
                                                                                                   §§goto(addr606);
                                                                                                }
                                                                                                addr580:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr582:
                                                                                                   dispatchEvent(new Event(Event.§8v§));
                                                                                                   §§goto(addr598);
                                                                                                }
                                                                                                return;
                                                                                                §§push(§§pop() < §§pop());
                                                                                             }
                                                                                             §§goto(addr602);
                                                                                             §§push(this.§!!^§);
                                                                                          }
                                                                                          §§goto(addr580);
                                                                                       }
                                                                                       §§goto(addr582);
                                                                                       addr533:
                                                                                       addr532:
                                                                                       addr530:
                                                                                    }
                                                                                    §§goto(addr598);
                                                                                 }
                                                                                 §§goto(addr536);
                                                                              }
                                                                              §§goto(addr580);
                                                                           }
                                                                           §§goto(addr533);
                                                                        }
                                                                        §§goto(addr532);
                                                                     }
                                                                     §§goto(addr606);
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               §§goto(addr602);
                                                            }
                                                            §§goto(addr344);
                                                         }
                                                         §§goto(addr561);
                                                      }
                                                      §§goto(addr312);
                                                   }
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr530);
                                          }
                                          §§goto(addr550);
                                       }
                                       §§goto(addr344);
                                    }
                                    if(!(_loc12_ && param1))
                                    {
                                       §§push(this.§!,§);
                                       if(!_loc12_)
                                       {
                                          §§push(null);
                                          if(!(_loc12_ && param1))
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                if(_loc11_ || _loc2_)
                                                {
                                                   §§push(this.§!,§);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(null);
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         addr490:
                                                         §§push(this.§<!=§);
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            §§pop().apply(§§pop(),§§pop());
                                                            if(_loc11_)
                                                            {
                                                               addr599:
                                                               §§goto(addr606);
                                                               §§push(_loc2_);
                                                            }
                                                            §§goto(addr550);
                                                         }
                                                      }
                                                      §§goto(addr535);
                                                   }
                                                   §§goto(addr512);
                                                }
                                                §§goto(addr535);
                                             }
                                             §§goto(addr599);
                                          }
                                          §§goto(addr490);
                                       }
                                       §§goto(addr512);
                                    }
                                    §§goto(addr606);
                                 }
                              }
                              §§goto(addr213);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr193);
         }
         addr41:
      }
      
      public function get §9p§() : Boolean
      {
         return this.§3T§ >= this.§!!^§;
      }
      
      public function get target() : Object
      {
         return this.§[!W§;
      }
      
      public function get §+!?§() : String
      {
         return this.§9!2§;
      }
      
      public function get §4A§() : Number
      {
         return this.§!!^§;
      }
      
      public function get §]!h§() : Number
      {
         return this.§3T§;
      }
      
      public function get delay() : Number
      {
         return this.§9T§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§3T§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.§9T§);
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     addr68:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§3T§ = §§pop();
                  do
                  {
                     this.§9T§ = param1;
                  }
                  while(!_loc2_);
                  
                  return;
                  addr70:
               }
            }
            §§goto(addr68);
         }
         §§goto(addr70);
      }
      
      public function get §#z§() : Boolean
      {
         return this.§"!9§;
      }
      
      public function set §#z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"!9§ = param1;
         }
      }
      
      public function get §@!W§() : Function
      {
         return this.§#X§;
      }
      
      public function set §@!W§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§#X§ = param1;
         }
      }
      
      public function get §!,§() : Function
      {
         return this.§"E§;
      }
      
      public function set §!,§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"E§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§%H§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%H§ = param1;
         }
      }
      
      public function get §<2§() : Array
      {
         return this.§-!A§;
      }
      
      public function set §<2§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!A§ = param1;
         }
      }
      
      public function get §2!R§() : Array
      {
         return this.§<!=§;
      }
      
      public function set §2!R§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!=§ = param1;
         }
      }
      
      public function get §?!X§() : Array
      {
         return this.§"b§;
      }
      
      public function set §?!X§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"b§ = param1;
         }
      }
   }
}
