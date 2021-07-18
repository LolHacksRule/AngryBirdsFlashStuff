package §<!>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §0!k§ extends EventDispatcher implements § §
   {
       
      
      private var §%!c§:Object;
      
      private var §7!=§:String;
      
      private var § O§:Vector.<String>;
      
      private var §5!w§:Vector.<Number>;
      
      private var §0"m§:Vector.<Number>;
      
      private var §!"R§:Function;
      
      private var §4#8§:Function;
      
      private var §;!S§:Function;
      
      private var §5!8§:Array;
      
      private var §1"^§:Array;
      
      private var §'#J§:Array;
      
      private var §0"=§:Number;
      
      private var §'!<§:Number;
      
      private var §7!+§:Number;
      
      private var §0"W§:Boolean;
      
      public function §0!k§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§%!c§ = param1;
               loop1:
               while(true)
               {
                  this.§'!<§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§0"=§ = Math.max(0.0001,param2);
                     loop3:
                     while(true)
                     {
                        this.§7!+§ = 0;
                        while(!_loc5_)
                        {
                           this.§7!=§ = param3;
                           continue loop2;
                           loop8:
                           while(!(_loc5_ && this))
                           {
                              this.§0"m§ = new Vector.<Number>(0);
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 addr41:
                                 if(_loc4_ || param2)
                                 {
                                    return;
                                    addr90:
                                 }
                                 while(_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    this.§ O§ = new Vector.<String>(0);
                                    while(true)
                                    {
                                       this.§5!w§ = new Vector.<Number>(0);
                                       continue loop8;
                                    }
                                    §§goto(addr41);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr85);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               if(!(_loc4_ || param3))
               {
                  continue;
               }
               this.§0"W§ = false;
               §§goto(addr90);
            }
         }
         §§goto(addr85);
      }
      
      public function §;!R§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§%!c§ != null)
            {
               while(true)
               {
                  this.§ O§.push(param1);
                  while(!(_loc4_ && this))
                  {
                     this.§5!w§.push(Number.NaN);
                     while(!_loc4_)
                     {
                        this.§0"m§.push(param2);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!_loc4_)
                           {
                              return;
                           }
                           addr84:
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §&#V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!R§("scaleX",param1);
            do
            {
               this.§;!R§("scaleY",param1);
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§;!R§("x",param1);
         }
         do
         {
            this.§;!R§("y",param2);
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function §0"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!R§("alpha",param1);
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
            if(!_loc11_)
            {
               if(§§pop() == 0)
               {
                  if(_loc12_ || param1)
                  {
                     §§goto(addr47);
                  }
               }
               §§push(this.§'!<§);
               if(!(_loc11_ && _loc2_))
               {
                  addr57:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc12_)
               {
                  §§push(this);
                  §§push(this.§'!<§);
                  if(_loc12_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§'!<§ = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(this.§'!<§);
                     if(!(_loc11_ && this))
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
                                 if(!§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          while(true)
                                          {
                                             §§push(§§pop() >= this.§0"=§);
                                             addr142:
                                             if(!(_loc12_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(0);
                                             loop23:
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() <= §§pop());
                                                loop24:
                                                while(true)
                                                {
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc11_ && this))
                                                            {
                                                               if(!(_loc12_ || _loc2_))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_ || _loc2_)
                                                                        {
                                                                           §§push(this.§'!<§);
                                                                           if(_loc12_ || this)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!(_loc12_ || _loc3_))
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                              if(_loc12_ || _loc2_)
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       if(_loc11_ && _loc3_)
                                                                                       {
                                                                                          break loop19;
                                                                                       }
                                                                                       §§push(this.§0!X§);
                                                                                       if(_loc12_ || this)
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(!(_loc11_ && _loc2_))
                                                                                          {
                                                                                             §§pop().apply(§§pop(),this.§5!8§);
                                                                                             addr127:
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(_loc11_ && _loc3_)
                                                                                             {
                                                                                                §§goto(addr221);
                                                                                             }
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§goto(addr142);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr260:
                                                                                                   var _loc3_:* = §§pop();
                                                                                                   var _loc4_:int = this.§5!w§.length;
                                                                                                   var _loc5_:int = 0;
                                                                                                   addr429:
                                                                                                   if(_loc5_ < _loc4_)
                                                                                                   {
                                                                                                      if(isNaN(this.§5!w§[_loc5_]))
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            this.§5!w§[_loc5_] = this.§%!c§[this.§ O§[_loc5_]] as Number;
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               addr325:
                                                                                                               _loc6_ = this.§5!w§[_loc5_];
                                                                                                               addr319:
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(Number(this.§0"m§[_loc5_]));
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    addr302:
                                                                                                                                    if(_loc12_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       if(_loc12_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr319);
                                                                                                                                          }
                                                                                                                                          _loc9_ = §!#'§.§3"-§(this.§7!=§);
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             addr427:
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                addr426:
                                                                                                                                                §§push(Number(§§pop() + _loc9_(_loc3_) * _loc8_));
                                                                                                                                             }
                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                          }
                                                                                                                                          addr428:
                                                                                                                                          if(this.§0"W§)
                                                                                                                                          {
                                                                                                                                             addr396:
                                                                                                                                             §§push(Number(Math.round(_loc10_)));
                                                                                                                                             if(!(_loc11_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc11_ && param1))
                                                                                                                                                {
                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                   addr378:
                                                                                                                                                   this.§%!c§[this.§ O§[_loc5_]] = _loc10_;
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc12_)
                                                                                                                                                      {
                                                                                                                                                         _loc5_++;
                                                                                                                                                         if(_loc12_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc12_)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr378);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr429);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr396);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr378);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr428);
                                                                                                                                                   }
                                                                                                                                                   addr415:
                                                                                                                                                   §§goto(addr415);
                                                                                                                                                }
                                                                                                                                                §§goto(addr426);
                                                                                                                                             }
                                                                                                                                             §§goto(addr427);
                                                                                                                                          }
                                                                                                                                          §§goto(addr378);
                                                                                                                                       }
                                                                                                                                       addr554:
                                                                                                                                       §§push(_loc2_ < this.§0"=§);
                                                                                                                                       if(_loc2_ < this.§0"=§)
                                                                                                                                       {
                                                                                                                                          addr556:
                                                                                                                                          §§pop();
                                                                                                                                          addr557:
                                                                                                                                          §§push(this.§'!<§);
                                                                                                                                          if(!(_loc11_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr522:
                                                                                                                                             §§push(this.§0"=§);
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                addr526:
                                                                                                                                                §§push(§§pop() >= §§pop());
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr531:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr533:
                                                                                                                                                         dispatchEvent(new Event(Event.§&!T§));
                                                                                                                                                         addr549:
                                                                                                                                                         §§push(this.onComplete);
                                                                                                                                                         if(_loc12_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr483:
                                                                                                                                                            §§push(null);
                                                                                                                                                            if(_loc12_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr491:
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc12_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr557);
                                                                                                                                                                           }
                                                                                                                                                                           addr510:
                                                                                                                                                                           this.onComplete.apply(null,this.§'#J§);
                                                                                                                                                                           addr469:
                                                                                                                                                                           return;
                                                                                                                                                                           addr511:
                                                                                                                                                                           addr508:
                                                                                                                                                                           addr507:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr533);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr549);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr511);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr469);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr508);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr507);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr469);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                }
                                                                                                                                                §§goto(addr556);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr554);
                                                                                                                                       }
                                                                                                                                       §§goto(addr531);
                                                                                                                                       addr468:
                                                                                                                                    }
                                                                                                                                    §§goto(addr325);
                                                                                                                                 }
                                                                                                                                 §§goto(addr522);
                                                                                                                              }
                                                                                                                              §§goto(addr302);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr554);
                                                                                                                     }
                                                                                                                     §§goto(addr526);
                                                                                                                  }
                                                                                                                  §§goto(addr554);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr533);
                                                                                                         }
                                                                                                         §§goto(addr468);
                                                                                                      }
                                                                                                      §§goto(addr325);
                                                                                                   }
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(this.§""^§);
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         §§push(null);
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               if(_loc12_ || this)
                                                                                                               {
                                                                                                                  addr449:
                                                                                                                  §§push(this.§""^§);
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     §§push(null);
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§push(this.§1"^§);
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           §§pop().apply(§§pop(),§§pop());
                                                                                                                           if(!(_loc11_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr554);
                                                                                                                           }
                                                                                                                           §§goto(addr469);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr510);
                                                                                                                  }
                                                                                                                  §§goto(addr483);
                                                                                                               }
                                                                                                               §§goto(addr510);
                                                                                                            }
                                                                                                            §§goto(addr554);
                                                                                                         }
                                                                                                         §§goto(addr491);
                                                                                                      }
                                                                                                      §§goto(addr510);
                                                                                                   }
                                                                                                   §§goto(addr449);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                addr200:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   break loop17;
                                                                                                }
                                                                                             }
                                                                                             addr199:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr199);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr127);
                                                                                 }
                                                                                 §§push(Math.min(this.§0"=§,this.§'!<§) / this.§0"=§);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr259:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                              while(!_loc11_)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop0;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr221:
                                                                                    return;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr198);
                                                                                 }
                                                                                 addr195:
                                                                              }
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               §§goto(addr94);
                                                            }
                                                            addr202:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop17;
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr202);
                                                         }
                                                         addr201:
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr201);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr220);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr259);
                  }
               }
               while(true)
               {
                  §§goto(addr138);
               }
            }
            §§goto(addr57);
         }
         addr47:
      }
      
      public function get isComplete() : Boolean
      {
         return this.§'!<§ >= this.§0"=§;
      }
      
      public function get target() : Object
      {
         return this.§%!c§;
      }
      
      public function get §,!+§() : String
      {
         return this.§7!=§;
      }
      
      public function get §,!@§() : Number
      {
         return this.§0"=§;
      }
      
      public function get currentTime() : Number
      {
         return this.§'!<§;
      }
      
      public function get delay() : Number
      {
         return this.§7!+§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§'!<§);
            if(!(_loc3_ && this))
            {
               §§push(this.§7!+§);
               if(_loc2_ || _loc3_)
               {
                  addr84:
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(param1);
                  }
                  §§pop().§'!<§ = §§pop();
                  do
                  {
                     this.§7!+§ = param1;
                  }
                  while(!_loc2_);
                  
                  return;
                  addr85:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr84);
         }
         §§goto(addr85);
      }
      
      public function get §;!o§() : Boolean
      {
         return this.§0"W§;
      }
      
      public function set §;!o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0"W§ = param1;
         }
      }
      
      public function get §0!X§() : Function
      {
         return this.§!"R§;
      }
      
      public function set §0!X§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!"R§ = param1;
         }
      }
      
      public function get §""^§() : Function
      {
         return this.§4#8§;
      }
      
      public function set §""^§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4#8§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§;!S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!S§ = param1;
         }
      }
      
      public function get §4W§() : Array
      {
         return this.§5!8§;
      }
      
      public function set §4W§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5!8§ = param1;
         }
      }
      
      public function get §8"K§() : Array
      {
         return this.§1"^§;
      }
      
      public function set §8"K§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1"^§ = param1;
         }
      }
      
      public function get §]!0§() : Array
      {
         return this.§'#J§;
      }
      
      public function set §]!0§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'#J§ = param1;
         }
      }
   }
}
