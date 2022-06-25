package §"H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=j§ extends EventDispatcher implements §!7§
   {
       
      
      private var §#j§:Object;
      
      private var §;I§:String;
      
      private var §&!?§:Vector.<String>;
      
      private var §3"§:Vector.<Number>;
      
      private var §0!C§:Vector.<Number>;
      
      private var §[!o§:Function;
      
      private var §`!e§:Function;
      
      private var §3!U§:Function;
      
      private var §1[§:Array;
      
      private var §'!&§:Array;
      
      private var §7!+§:Array;
      
      private var §3!A§:Number;
      
      private var §9!r§:Number;
      
      private var §@z§:Number;
      
      private var §>!S§:Boolean;
      
      public function §=j§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§#j§ = param1;
               while(true)
               {
                  this.§9!r§ = 0;
                  loop6:
                  while(!(_loc5_ && param3))
                  {
                     this.§&!?§ = new Vector.<String>(0);
                     while(true)
                     {
                        if(_loc4_)
                        {
                           addr82:
                           if(_loc5_ && this)
                           {
                              break;
                           }
                           this.§3"§ = new Vector.<Number>(0);
                           continue;
                        }
                        continue loop6;
                     }
                     while(!(_loc5_ && this))
                     {
                        this.§>!S§ = false;
                        continue loop6;
                        §§goto(addr82);
                     }
                     while(_loc4_)
                     {
                        this.§@z§ = 0;
                        §§goto(addr128);
                        §§goto(addr106);
                     }
                     addr106:
                     while(true)
                     {
                        this.§3!A§ = Math.max(0.0001,param2);
                        §§goto(addr136);
                     }
                     addr136:
                  }
               }
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr143);
      }
      
      public function §^,§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§#j§ == null)
            {
               if(!_loc4_)
               {
                  return;
               }
               while(true)
               {
                  addr45:
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
               addr90:
            }
            while(true)
            {
               this.§&!?§.push(param1);
               §§goto(addr90);
            }
         }
         while(true)
         {
            this.§3"§.push(Number.NaN);
            while(!(_loc4_ && param2))
            {
               this.§0!C§.push(param2);
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr62);
      }
      
      public function §^c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^,§("scaleX",param1);
         }
         do
         {
            this.§^,§("scaleY",param1);
         }
         while(!_loc2_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§^,§("x",param1);
         }
         do
         {
            this.§^,§("y",param2);
         }
         while(_loc4_ && param2);
         
      }
      
      public function §+#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§^,§("alpha",param1);
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
         if(!(_loc12_ && param1))
         {
            §§push(param1);
            if(!_loc12_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc12_ && param1))
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§9!r§);
               if(!(_loc12_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc12_)
            {
               §§push(this);
               §§push(this.§9!r§);
               if(_loc11_ || _loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§9!r§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§9!r§);
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§3!R§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(null);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc11_ || param1)
                                                         {
                                                            continue loop8;
                                                         }
                                                         loop21:
                                                         while(_loc11_)
                                                         {
                                                            §§pop();
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    if(!(_loc11_ || this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc11_ || _loc3_))
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                §§push(this.§9!r§);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   addr66:
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                         §§goto(addr66);
                                                                                                      }
                                                                                                      addr211:
                                                                                                   }
                                                                                                }
                                                                                                var _loc3_:Number = §§pop();
                                                                                                var _loc4_:int = this.§3"§.length;
                                                                                                var _loc5_:int = 0;
                                                                                                addr438:
                                                                                                if(_loc5_ < _loc4_)
                                                                                                {
                                                                                                   if(isNaN(this.§3"§[_loc5_]))
                                                                                                   {
                                                                                                      addr349:
                                                                                                      this.§3"§[_loc5_] = this.§#j§[this.§&!?§[_loc5_]] as Number;
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr336:
                                                                                                         _loc6_ = this.§3"§[_loc5_];
                                                                                                         addr330:
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(Number(this.§0!C§[_loc5_]));
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     if(!(_loc12_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              addr315:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr555:
                                                                                                                              §§push(§§pop() < this.§3!A§);
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr560:
                                                                                                                                    §§pop();
                                                                                                                                    §§push(this.§9!r§);
                                                                                                                                    if(!(_loc12_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§3!A§);
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          addr533:
                                                                                                                                          §§push(§§pop() >= §§pop());
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr560);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr555);
                                                                                                                                    addr561:
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc11_ || param1)
                                                                                                                                    {
                                                                                                                                       dispatchEvent(new Event(Event.§^U§));
                                                                                                                                    }
                                                                                                                                    addr551:
                                                                                                                                    §§push(this.onComplete);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       addr487:
                                                                                                                                       §§push(null);
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                if(_loc11_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr561);
                                                                                                                                                   }
                                                                                                                                                   addr507:
                                                                                                                                                   this.onComplete.apply(null,this.§7!+§);
                                                                                                                                                   addr478:
                                                                                                                                                   return;
                                                                                                                                                   addr508:
                                                                                                                                                   addr505:
                                                                                                                                                   addr504:
                                                                                                                                                   addr502:
                                                                                                                                                }
                                                                                                                                                §§goto(addr551);
                                                                                                                                             }
                                                                                                                                             §§goto(addr508);
                                                                                                                                          }
                                                                                                                                          §§goto(addr478);
                                                                                                                                       }
                                                                                                                                       §§goto(addr505);
                                                                                                                                    }
                                                                                                                                    §§goto(addr504);
                                                                                                                                 }
                                                                                                                                 §§goto(addr478);
                                                                                                                              }
                                                                                                                              §§goto(addr560);
                                                                                                                           }
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              if(_loc11_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr330);
                                                                                                                                 }
                                                                                                                                 _loc9_ = §-]§.§!M§(this.§;I§);
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    addr435:
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                                                                    }
                                                                                                                                    _loc10_ = Number(§§pop());
                                                                                                                                 }
                                                                                                                                 addr437:
                                                                                                                                 if(this.§>!S§)
                                                                                                                                 {
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(Math.round(_loc10_)));
                                                                                                                                       if(_loc11_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                             addr417:
                                                                                                                                             if(!(_loc12_ && this))
                                                                                                                                             {
                                                                                                                                                addr380:
                                                                                                                                                this.§#j§[this.§&!?§[_loc5_]] = _loc10_;
                                                                                                                                                if(!(_loc12_ && this))
                                                                                                                                                {
                                                                                                                                                   _loc5_++;
                                                                                                                                                   if(!_loc12_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr380);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr438);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr380);
                                                                                                                                                }
                                                                                                                                                §§goto(addr417);
                                                                                                                                             }
                                                                                                                                             §§goto(addr437);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr435);
                                                                                                                                    }
                                                                                                                                    §§goto(addr417);
                                                                                                                                 }
                                                                                                                                 §§goto(addr380);
                                                                                                                              }
                                                                                                                              §§goto(addr349);
                                                                                                                           }
                                                                                                                           §§goto(addr551);
                                                                                                                        }
                                                                                                                        §§goto(addr533);
                                                                                                                     }
                                                                                                                     §§goto(addr336);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr555);
                                                                                                            }
                                                                                                            §§goto(addr315);
                                                                                                         }
                                                                                                         §§goto(addr502);
                                                                                                      }
                                                                                                      §§goto(addr478);
                                                                                                   }
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(this.§]!u§);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            if(_loc11_ || this)
                                                                                                            {
                                                                                                               §§push(this.§]!u§);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  §§push(null);
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     §§push(this.§'!&§);
                                                                                                                     if(!(_loc12_ && param1))
                                                                                                                     {
                                                                                                                        §§pop().apply(§§pop(),§§pop());
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr552:
                                                                                                                           §§goto(addr315);
                                                                                                                           §§push(_loc2_);
                                                                                                                        }
                                                                                                                        §§goto(addr551);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr507);
                                                                                                               }
                                                                                                               §§goto(addr487);
                                                                                                            }
                                                                                                            §§goto(addr507);
                                                                                                         }
                                                                                                         §§goto(addr552);
                                                                                                      }
                                                                                                      §§goto(addr507);
                                                                                                   }
                                                                                                   §§goto(addr487);
                                                                                                }
                                                                                                §§goto(addr551);
                                                                                             }
                                                                                             continue loop19;
                                                                                             addr161:
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue;
                                                                                       addr158:
                                                                                    }
                                                                                    loop17:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§3!R§);
                                                                                                if(_loc12_ && _loc3_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§push(null);
                                                                                                if(_loc12_ && _loc3_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§pop().apply(§§pop(),this.§1[§);
                                                                                             }
                                                                                             addr94:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr161);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc12_ && _loc3_))
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break loop17;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                    }
                                                                                    §§push(Math.min(this.§3!A§,this.§9!r§) / this.§3!A§);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr197:
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr158);
                                                                        }
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr234:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop12;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                       if(!_loc12_)
                                       {
                                          return;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr234);
                           }
                        }
                     }
                  }
                  §§goto(addr279);
               }
            }
            §§goto(addr94);
         }
         addr46:
      }
      
      public function get §+d§() : Boolean
      {
         return this.§9!r§ >= this.§3!A§;
      }
      
      public function get target() : Object
      {
         return this.§#j§;
      }
      
      public function get §7M§() : String
      {
         return this.§;I§;
      }
      
      public function get §3!&§() : Number
      {
         return this.§3!A§;
      }
      
      public function get §45§() : Number
      {
         return this.§9!r§;
      }
      
      public function get delay() : Number
      {
         return this.§@z§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§9!r§);
            if(!_loc3_)
            {
               §§push(this.§@z§);
               if(!_loc3_)
               {
                  addr74:
                  §§push(§§pop() + §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(param1);
                  }
                  §§pop().§9!r§ = §§pop();
                  do
                  {
                     this.§@z§ = param1;
                  }
                  while(!(_loc2_ || param1));
                  
                  return;
                  addr75:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr74);
         }
         §§goto(addr75);
      }
      
      public function get §&![§() : Boolean
      {
         return this.§>!S§;
      }
      
      public function set §&![§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!S§ = param1;
         }
      }
      
      public function get §3!R§() : Function
      {
         return this.§[!o§;
      }
      
      public function set §3!R§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[!o§ = param1;
         }
      }
      
      public function get §]!u§() : Function
      {
         return this.§`!e§;
      }
      
      public function set §]!u§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§`!e§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§3!U§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3!U§ = param1;
         }
      }
      
      public function get §7x§() : Array
      {
         return this.§1[§;
      }
      
      public function set §7x§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§1[§ = param1;
         }
      }
      
      public function get §"r§() : Array
      {
         return this.§'!&§;
      }
      
      public function set §"r§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§'!&§ = param1;
         }
      }
      
      public function get §;@§() : Array
      {
         return this.§7!+§;
      }
      
      public function set §;@§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!+§ = param1;
         }
      }
   }
}
