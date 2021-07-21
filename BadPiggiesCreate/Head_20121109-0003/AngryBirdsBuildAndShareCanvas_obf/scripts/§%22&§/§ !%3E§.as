package §"&§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § !>§ extends EventDispatcher implements §=q§
   {
       
      
      private var §&d§:Object;
      
      private var §throw§:String;
      
      private var §[!x§:Vector.<String>;
      
      private var §9f§:Vector.<Number>;
      
      private var §%!v§:Vector.<Number>;
      
      private var §2!E§:Function;
      
      private var §<!"§:Function;
      
      private var §,h§:Function;
      
      private var §<@§:Array;
      
      private var §9!o§:Array;
      
      private var § !z§:Array;
      
      private var §+"?§:Number;
      
      private var §7r§:Number;
      
      private var §&l§:Number;
      
      private var §4z§:Boolean;
      
      public function § !>§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§&d§ = param1;
               loop1:
               while(!(_loc5_ && param2))
               {
                  this.§7r§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§+"?§ = Math.max(0.0001,param2);
                     addr116:
                     while(true)
                     {
                        this.§&l§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§throw§ = param3;
                           loop5:
                           while(true)
                           {
                              this.§4z§ = false;
                              loop6:
                              while(!_loc5_)
                              {
                                 this.§[!x§ = new Vector.<String>(0);
                                 while(!_loc5_)
                                 {
                                    this.§9f§ = new Vector.<Number>(0);
                                    do
                                    {
                                       this.§%!v§ = new Vector.<Number>(0);
                                    }
                                    while(!_loc4_);
                                    
                                    if(!_loc5_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                       continue loop6;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop2;
                           }
                        }
                        if(!(_loc5_ && this))
                        {
                           if(!_loc5_)
                           {
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function § !q§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§&d§ != null)
            {
               loop0:
               while(true)
               {
                  this.§[!x§.push(param1);
                  loop1:
                  while(!_loc4_)
                  {
                     this.§9f§.push(Number.NaN);
                     while(_loc3_ || param1)
                     {
                        this.§%!v§.push(param2);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              return;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function §!d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ !q§("scaleX",param1);
         }
         do
         {
            this.§ !q§("scaleY",param1);
         }
         while(_loc3_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§ !q§("x",param1);
         }
         do
         {
            this.§ !q§("y",param2);
         }
         while(!(_loc4_ || param2));
         
      }
      
      public function §%!2§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§ !q§("alpha",param1);
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
         if(!(_loc11_ && param1))
         {
            §§push(param1);
            if(_loc12_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc11_ && _loc2_))
                  {
                     §§goto(addr47);
                  }
               }
               §§push(this.§7r§);
               if(!(_loc11_ && _loc3_))
               {
                  addr57:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc12_ || this)
               {
                  §§push(this);
                  §§push(this.§7r§);
                  if(_loc12_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§7r§ = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(this.§7r§);
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
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc12_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                          }
                                          addr229:
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§'!B§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(null);
                                             addr195:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               if(!(_loc12_ || _loc2_))
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        addr182:
                                                                        if(_loc11_ && param1)
                                                                        {
                                                                           while(_loc12_)
                                                                           {
                                                                              continue loop9;
                                                                              §§goto(addr182);
                                                                           }
                                                                           continue loop3;
                                                                           addr222:
                                                                        }
                                                                        §§pop();
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§7r§);
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 if(_loc11_ && _loc3_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(!(_loc11_ && _loc2_))
                                                                                 {
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr253:
                                                                                    §§push(Math.min(this.§+"?§,this.§7r§) / this.§+"?§);
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    addr99:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr238:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    addr237:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                                 addr166:
                                                                              }
                                                                           }
                                                                           addr270:
                                                                           var _loc3_:* = §§pop();
                                                                           var _loc4_:int = this.§9f§.length;
                                                                           var _loc5_:int = 0;
                                                                           addr459:
                                                                           if(_loc5_ < _loc4_)
                                                                           {
                                                                              if(isNaN(this.§9f§[_loc5_]))
                                                                              {
                                                                                 addr365:
                                                                                 this.§9f§[_loc5_] = this.§&d§[this.§[!x§[_loc5_]] as Number;
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    addr340:
                                                                                    _loc6_ = this.§9f§[_loc5_];
                                                                                    addr334:
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          §§push(Number(this.§%!v§[_loc5_]));
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr298:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc12_ || this)
                                                                                                         {
                                                                                                            addr316:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc12_ || this)
                                                                                                            {
                                                                                                               addr324:
                                                                                                               _loc8_ = §§pop();
                                                                                                               if(!(_loc11_ && param1))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr334);
                                                                                                                  }
                                                                                                                  _loc9_ = §8!>§.§^!U§(this.§throw§);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     addr456:
                                                                                                                     addr457:
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                                                     }
                                                                                                                     _loc10_ = Number(§§pop());
                                                                                                                     addr458:
                                                                                                                     if(this.§4z§)
                                                                                                                     {
                                                                                                                        addr429:
                                                                                                                        §§push(Number(Math.round(_loc10_)));
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                           {
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              addr443:
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 addr415:
                                                                                                                                 this.§&d§[this.§[!x§[_loc5_]] = _loc10_;
                                                                                                                                 _loc5_++;
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    if(_loc12_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc12_ || param1)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr415);
                                                                                                                                          }
                                                                                                                                          §§goto(addr459);
                                                                                                                                       }
                                                                                                                                       §§goto(addr429);
                                                                                                                                    }
                                                                                                                                    §§goto(addr443);
                                                                                                                                 }
                                                                                                                                 addr424:
                                                                                                                                 §§goto(addr424);
                                                                                                                              }
                                                                                                                              §§goto(addr458);
                                                                                                                           }
                                                                                                                           §§goto(addr456);
                                                                                                                        }
                                                                                                                        §§goto(addr457);
                                                                                                                     }
                                                                                                                     §§goto(addr415);
                                                                                                                  }
                                                                                                                  §§goto(addr429);
                                                                                                               }
                                                                                                               §§push(this.onUpdate);
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  §§push(null);
                                                                                                                  if(!(_loc11_ && this))
                                                                                                                  {
                                                                                                                     if(§§pop() != §§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr489:
                                                                                                                           §§push(this.onUpdate);
                                                                                                                           if(_loc12_ || this)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              if(_loc12_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr506:
                                                                                                                                 §§push(this.§9!o§);
                                                                                                                                 if(!(_loc11_ && param1))
                                                                                                                                 {
                                                                                                                                    §§pop().apply(§§pop(),§§pop());
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr619);
                                                                                                                                    }
                                                                                                                                    §§goto(addr596);
                                                                                                                                 }
                                                                                                                                 §§goto(addr556);
                                                                                                                              }
                                                                                                                              §§goto(addr541);
                                                                                                                           }
                                                                                                                           §§goto(addr533);
                                                                                                                        }
                                                                                                                        §§goto(addr621);
                                                                                                                     }
                                                                                                                     addr619:
                                                                                                                     §§push(_loc2_ < this.§+"?§);
                                                                                                                     if(_loc2_ < this.§+"?§)
                                                                                                                     {
                                                                                                                        addr621:
                                                                                                                        §§pop();
                                                                                                                        addr622:
                                                                                                                        §§push(this.§7r§);
                                                                                                                        if(!(_loc11_ && this))
                                                                                                                        {
                                                                                                                           addr568:
                                                                                                                           §§push(this.§+"?§);
                                                                                                                           if(!(_loc11_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr577:
                                                                                                                              §§push(§§pop() >= §§pop());
                                                                                                                              if(_loc12_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc12_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr592);
                                                                                                                                 }
                                                                                                                                 §§goto(addr619);
                                                                                                                              }
                                                                                                                              §§goto(addr621);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr619);
                                                                                                                     }
                                                                                                                     addr592:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           addr596:
                                                                                                                           dispatchEvent(new Event(Event.§'m§));
                                                                                                                        }
                                                                                                                        addr602:
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           §§push(this.onComplete);
                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr533:
                                                                                                                              §§push(null);
                                                                                                                              if(_loc12_ || this)
                                                                                                                              {
                                                                                                                                 addr541:
                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       if(_loc11_ && param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr602);
                                                                                                                                       }
                                                                                                                                       addr556:
                                                                                                                                       this.onComplete.apply(null,this.§ !z§);
                                                                                                                                       addr554:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr519);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        §§goto(addr622);
                                                                                                                     }
                                                                                                                     addr519:
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr506);
                                                                                                               }
                                                                                                               §§goto(addr533);
                                                                                                            }
                                                                                                            §§goto(addr568);
                                                                                                         }
                                                                                                         §§goto(addr324);
                                                                                                      }
                                                                                                      §§goto(addr577);
                                                                                                   }
                                                                                                   §§goto(addr316);
                                                                                                }
                                                                                                §§goto(addr298);
                                                                                             }
                                                                                             §§goto(addr340);
                                                                                          }
                                                                                          §§goto(addr324);
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    }
                                                                                    §§goto(addr556);
                                                                                 }
                                                                                 §§goto(addr489);
                                                                              }
                                                                              §§goto(addr340);
                                                                           }
                                                                           if(_loc12_ || this)
                                                                           {
                                                                              §§goto(addr324);
                                                                           }
                                                                           §§goto(addr489);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc12_ || _loc3_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr166);
                                                                           §§push(§§pop() <= §§pop());
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           break loop20;
                                                                        }
                                                                        addr199:
                                                                     }
                                                                  }
                                                                  while(_loc12_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr99);
                                                            }
                                                            continue loop15;
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr237);
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr141);
               }
            }
            §§goto(addr57);
         }
         addr47:
      }
      
      public function get §3r§() : Boolean
      {
         return this.§7r§ >= this.§+"?§;
      }
      
      public function get target() : Object
      {
         return this.§&d§;
      }
      
      public function get §]H§() : String
      {
         return this.§throw§;
      }
      
      public function get §4!4§() : Number
      {
         return this.§+"?§;
      }
      
      public function get §=""§() : Number
      {
         return this.§7r§;
      }
      
      public function get delay() : Number
      {
         return this.§&l§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§7r§);
            if(!_loc2_)
            {
               §§push(this.§&l§);
               if(_loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc3_)
                  {
                     addr74:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§7r§ = §§pop();
                  do
                  {
                     this.§&l§ = param1;
                  }
                  while(!(_loc3_ || param1));
                  
                  return;
                  addr50:
               }
            }
            §§goto(addr74);
         }
         §§goto(addr50);
      }
      
      public function get §?!2§() : Boolean
      {
         return this.§4z§;
      }
      
      public function set §?!2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4z§ = param1;
         }
      }
      
      public function get §'!B§() : Function
      {
         return this.§2!E§;
      }
      
      public function set §'!B§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2!E§ = param1;
         }
      }
      
      public function get onUpdate() : Function
      {
         return this.§<!"§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§<!"§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§,h§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,h§ = param1;
         }
      }
      
      public function get §"'§() : Array
      {
         return this.§<@§;
      }
      
      public function set §"'§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<@§ = param1;
         }
      }
      
      public function get §=s§() : Array
      {
         return this.§9!o§;
      }
      
      public function set §=s§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!o§ = param1;
         }
      }
      
      public function get §3!a§() : Array
      {
         return this.§ !z§;
      }
      
      public function set §3!a§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !z§ = param1;
         }
      }
   }
}
