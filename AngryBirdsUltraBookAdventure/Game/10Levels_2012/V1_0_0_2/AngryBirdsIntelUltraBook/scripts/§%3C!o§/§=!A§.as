package §<!o§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=!A§ extends EventDispatcher implements §8!h§
   {
       
      
      private var §0!R§:Object;
      
      private var §3d§:String;
      
      private var §>K§:Vector.<String>;
      
      private var §%&§:Vector.<Number>;
      
      private var §<!S§:Vector.<Number>;
      
      private var §9Z§:Function;
      
      private var §,=§:Function;
      
      private var §@V§:Function;
      
      private var §6E§:Array;
      
      private var §!'§:Array;
      
      private var §9!@§:Array;
      
      private var §[!F§:Number;
      
      private var §0t§:Number;
      
      private var §1!o§:Number;
      
      private var §>!Q§:Boolean;
      
      public function §=!A§(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§0!R§ = param1;
               loop1:
               while(true)
               {
                  this.§0t§ = 0;
                  while(true)
                  {
                     this.§[!F§ = Math.max(0.0001,param2);
                     loop3:
                     while(true)
                     {
                        this.§1!o§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§3d§ = param3;
                           while(true)
                           {
                              this.§>!Q§ = false;
                              while(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                                 if(_loc4_ || param2)
                                 {
                                    if(_loc4_)
                                    {
                                       return;
                                       addr48:
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     addr87:
                     loop7:
                     for(; !(_loc5_ && param3); while(_loc4_)
                     {
                        continue loop1;
                        this.§<!S§ = new Vector.<Number>(0);
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§goto(addr39);
                     })
                     {
                        while(true)
                        {
                           this.§%&§ = new Vector.<Number>(0);
                           continue loop7;
                        }
                        §§goto(addr48);
                     }
                  }
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  §§goto(addr77);
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §<!G§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§0!R§ != null)
            {
               loop0:
               while(true)
               {
                  this.§>K§.push(param1);
                  loop1:
                  while(true)
                  {
                     this.§%&§.push(Number.NaN);
                     loop2:
                     for(; _loc4_ || this; while(true)
                     {
                        this.§<!S§.push(param2);
                        if(!(_loc3_ && this))
                        {
                           if(!(_loc3_ && param2))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     },return)
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function §&6§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!G§("scaleX",param1);
         }
         do
         {
            this.§<!G§("scaleY",param1);
         }
         while(!_loc2_);
         
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§<!G§("x",param1);
            do
            {
               this.§<!G§("y",param2);
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function §@f§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§<!G§("alpha",param1);
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
         if(!(_loc11_ && _loc2_))
         {
            §§push(param1);
            if(_loc12_ || param1)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc11_ && param1))
                  {
                     §§goto(addr52);
                  }
               }
               §§push(this.§0t§);
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc12_)
            {
               §§push(this);
               §§push(this.§0t§);
               if(_loc12_ || this)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§0t§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§0t§);
                  if(_loc12_)
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        if(!(_loc11_ && _loc3_))
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr222:
                                 while(true)
                                 {
                                    §§pop();
                                    addr223:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() >= this.§[!F§);
                                       }
                                       else
                                       {
                                          addr250:
                                          var _loc3_:* = §§pop();
                                          var _loc4_:int = this.§%&§.length;
                                          var _loc5_:int = 0;
                                          addr444:
                                          if(_loc5_ < _loc4_)
                                          {
                                             if(isNaN(this.§%&§[_loc5_]))
                                             {
                                                if(!_loc11_)
                                                {
                                                   this.§%&§[_loc5_] = this.§0!R§[this.§>K§[_loc5_]] as Number;
                                                   if(_loc12_ || param1)
                                                   {
                                                      addr322:
                                                      §§push(Number(this.§%&§[_loc5_]));
                                                      if(!_loc11_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            §§push(Number(this.§<!S§[_loc5_]));
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc12_ || param1)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           addr304:
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc11_ && this)
                                                                           {
                                                                           }
                                                                           addr547:
                                                                           §§push(this.§[!F§);
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr564:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr566:
                                                                                    dispatchEvent(new Event(Event.§]!%§));
                                                                                    addr572:
                                                                                    §§push(this.onComplete);
                                                                                    if(_loc12_ || _loc3_)
                                                                                    {
                                                                                       §§push(null);
                                                                                       if(_loc12_ || _loc3_)
                                                                                       {
                                                                                          addr511:
                                                                                          if(§§pop() != §§pop())
                                                                                          {
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(_loc12_ || this)
                                                                                                {
                                                                                                   addr526:
                                                                                                   this.onComplete.apply(null,this.§9!@§);
                                                                                                   addr527:
                                                                                                   if(_loc12_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§push(this.§0t§);
                                                                                                         if(!(_loc11_ && this))
                                                                                                         {
                                                                                                            §§goto(addr547);
                                                                                                         }
                                                                                                         addr587:
                                                                                                         §§push(§§pop() < this.§[!F§);
                                                                                                         if(!(_loc11_ && _loc2_))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr586:
                                                                                                               §§pop();
                                                                                                               §§goto(addr587);
                                                                                                            }
                                                                                                            §§goto(addr564);
                                                                                                         }
                                                                                                         §§goto(addr586);
                                                                                                      }
                                                                                                      §§goto(addr489);
                                                                                                   }
                                                                                                   §§goto(addr566);
                                                                                                   addr524:
                                                                                                   addr523:
                                                                                                   addr521:
                                                                                                }
                                                                                                §§goto(addr572);
                                                                                             }
                                                                                             §§goto(addr527);
                                                                                          }
                                                                                          §§goto(addr489);
                                                                                       }
                                                                                       §§goto(addr524);
                                                                                    }
                                                                                    §§goto(addr523);
                                                                                 }
                                                                                 addr489:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr586);
                                                                           }
                                                                           §§goto(addr587);
                                                                        }
                                                                        _loc8_ = §§pop();
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr322);
                                                                           }
                                                                           _loc9_ = §6!;§.§9!I§(this.§3d§);
                                                                           if(_loc12_ || _loc3_)
                                                                           {
                                                                              addr442:
                                                                              _loc10_ = Number(_loc6_ + _loc9_(_loc3_) * _loc8_);
                                                                              addr434:
                                                                           }
                                                                           addr443:
                                                                           if(this.§>!Q§)
                                                                           {
                                                                              if(_loc12_ || _loc2_)
                                                                              {
                                                                                 §§push(Number(Math.round(_loc10_)));
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(!(_loc11_ && _loc2_))
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          addr425:
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             addr386:
                                                                                             this.§0!R§[this.§>K§[_loc5_]] = _loc10_;
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                _loc5_++;
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr386);
                                                                                                   }
                                                                                                   §§goto(addr444);
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             §§goto(addr425);
                                                                                          }
                                                                                          §§goto(addr443);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr434);
                                                                                 }
                                                                                 §§goto(addr442);
                                                                              }
                                                                              §§goto(addr425);
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        addr469:
                                                                        §§push(this.§]!v§);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(null);
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(this.§!'§);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§pop().apply(§§pop(),§§pop());
                                                                                 if(_loc12_ || _loc2_)
                                                                                 {
                                                                                    addr573:
                                                                                    §§goto(addr587);
                                                                                    §§push(_loc2_);
                                                                                 }
                                                                                 §§goto(addr587);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr526);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr587);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         §§goto(addr587);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                   §§goto(addr469);
                                                }
                                                §§goto(addr587);
                                             }
                                             §§goto(addr322);
                                          }
                                          if(!_loc11_)
                                          {
                                             §§push(this.§]!v§);
                                             if(_loc12_ || _loc3_)
                                             {
                                                §§push(null);
                                                if(!(_loc11_ && this))
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         §§goto(addr469);
                                                      }
                                                      §§goto(addr566);
                                                   }
                                                   §§goto(addr573);
                                                }
                                                §§goto(addr511);
                                             }
                                             §§goto(addr526);
                                          }
                                          §§goto(addr521);
                                       }
                                    }
                                 }
                                 addr222:
                              }
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          if(_loc12_)
                                          {
                                             return;
                                          }
                                          §§goto(addr223);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr205:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§]![§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(null);
                                          addr157:
                                          addr100:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr158:
                                             while(true)
                                             {
                                                addr165:
                                                §§push(!§§pop());
                                                if(_loc12_ || _loc2_)
                                                {
                                                   §§push(§§pop());
                                                   continue loop2;
                                                }
                                                addr175:
                                                addr175:
                                                while(!(_loc11_ && param1))
                                                {
                                                   §§pop();
                                                   continue loop0;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          loop22:
                                          while(true)
                                          {
                                             §§push(this.§]![§);
                                             if(!(_loc12_ || _loc2_))
                                             {
                                                continue loop7;
                                             }
                                             §§push(null);
                                             if(_loc12_)
                                             {
                                                §§pop().apply(§§pop(),this.§6E§);
                                                loop23:
                                                while(true)
                                                {
                                                   if(false)
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            §§push(0);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop() <= §§pop());
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc12_ || _loc2_))
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§pop();
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc11_ && this)
                                                                                    {
                                                                                       break loop12;
                                                                                    }
                                                                                    §§push(this.§0t§);
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§push(§§pop() >= §§pop());
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(_loc11_ && param1)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             §§goto(addr205);
                                                                                          }
                                                                                          addr238:
                                                                                          §§push(Math.min(this.§[!F§,this.§0t§) / this.§[!F§);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             addr249:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          addr92:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr250);
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              §§goto(addr175);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr92);
                                                                        continue loop19;
                                                                     }
                                                                     §§goto(addr158);
                                                                     addr132:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr158);
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      addr117:
                                                   }
                                                   §§goto(addr238);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr157);
                                             }
                                             §§goto(addr158);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr222);
                     }
                  }
                  §§goto(addr249);
               }
            }
            §§goto(addr100);
         }
         addr52:
      }
      
      public function get §1!Y§() : Boolean
      {
         return this.§0t§ >= this.§[!F§;
      }
      
      public function get target() : Object
      {
         return this.§0!R§;
      }
      
      public function get §?!Q§() : String
      {
         return this.§3d§;
      }
      
      public function get §with§() : Number
      {
         return this.§[!F§;
      }
      
      public function get §%p§() : Number
      {
         return this.§0t§;
      }
      
      public function get delay() : Number
      {
         return this.§1!o§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§0t§);
            if(_loc3_)
            {
               §§push(this.§1!o§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     addr69:
                     §§push(§§pop() - param1);
                  }
                  §§pop().§0t§ = §§pop();
                  do
                  {
                     this.§1!o§ = param1;
                  }
                  while(_loc2_);
                  
                  return;
                  addr71:
               }
            }
            §§goto(addr69);
         }
         §§goto(addr71);
      }
      
      public function get §%5§() : Boolean
      {
         return this.§>!Q§;
      }
      
      public function set §%5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§>!Q§ = param1;
         }
      }
      
      public function get §]![§() : Function
      {
         return this.§9Z§;
      }
      
      public function set §]![§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§9Z§ = param1;
         }
      }
      
      public function get §]!v§() : Function
      {
         return this.§,=§;
      }
      
      public function set §]!v§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§,=§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§@V§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@V§ = param1;
         }
      }
      
      public function get §#p§() : Array
      {
         return this.§6E§;
      }
      
      public function set §#p§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§6E§ = param1;
         }
      }
      
      public function get §5!r§() : Array
      {
         return this.§!'§;
      }
      
      public function set §5!r§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!'§ = param1;
         }
      }
      
      public function get §[!H§() : Array
      {
         return this.§9!@§;
      }
      
      public function set §[!H§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9!@§ = param1;
         }
      }
   }
}
