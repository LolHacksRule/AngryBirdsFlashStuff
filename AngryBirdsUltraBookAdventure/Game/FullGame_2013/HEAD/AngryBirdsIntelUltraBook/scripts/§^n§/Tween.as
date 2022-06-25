package §^n§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Tween extends EventDispatcher implements §"!>§
   {
       
      
      private var §7@§:Object;
      
      private var §8!-§:String;
      
      private var §>0§:Vector.<String>;
      
      private var §`!i§:Vector.<Number>;
      
      private var §8!T§:Vector.<Number>;
      
      private var § !^§:Function;
      
      private var §2!M§:Function;
      
      private var §3!K§:Function;
      
      private var §,!I§:Array;
      
      private var §-T§:Array;
      
      private var §`K§:Array;
      
      private var §!v§:Number;
      
      private var §!!2§:Number;
      
      private var §^!5§:Number;
      
      private var § ^§:Boolean;
      
      public function Tween(param1:Object, param2:Number, param3:String = "linear")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7@§ = param1;
               loop1:
               while(true)
               {
                  this.§!!2§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§!v§ = Math.max(0.0001,param2);
                     while(!_loc4_)
                     {
                        this.§^!5§ = 0;
                        continue loop1;
                        while(_loc5_ || this)
                        {
                           continue loop2;
                           while(_loc5_ || this)
                           {
                              this.§>0§ = new Vector.<String>(0);
                              loop7:
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§`!i§ = new Vector.<Number>(0);
                                    do
                                    {
                                       this.§8!T§ = new Vector.<Number>(0);
                                    }
                                    while(!(_loc5_ || this));
                                    
                                    if(_loc5_)
                                    {
                                       addr43:
                                       if(!(_loc4_ && param3))
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop7;
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function animate(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§7@§ != null)
            {
               loop0:
               while(true)
               {
                  this.§>0§.push(param1);
                  while(true)
                  {
                     this.§`!i§.push(Number.NaN);
                     while(_loc4_ || this)
                     {
                        if(_loc4_ || param1)
                        {
                           this.§8!T§.push(param2);
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              return;
                              addr49:
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §7!L§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.animate("scaleX",param1);
            do
            {
               this.animate("scaleY",param1);
            }
            while(!_loc3_);
            
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.animate("x",param1);
            do
            {
               this.animate("y",param2);
            }
            while(!_loc3_);
            
         }
      }
      
      public function §^;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.animate("alpha",param1);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Function = null;
         var _loc10_:* = NaN;
         if(_loc11_)
         {
            §§push(param1);
            if(!(_loc12_ && _loc2_))
            {
               if(§§pop() == 0)
               {
                  if(!(_loc12_ && this))
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§!!2§);
               if(_loc11_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc12_ && _loc2_))
            {
               §§push(this);
               §§push(this.§!!2§);
               if(!(_loc12_ && this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§!!2§ = §§pop();
               loop0:
               while(true)
               {
                  §§push(this.§!!2§);
                  if(_loc11_ || param1)
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() < §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc11_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       addr302:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          addr266:
                                          while(true)
                                          {
                                             §§push(§§pop() >= this.§!v§);
                                             addr269:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr270:
                                                while(_loc11_ || _loc3_)
                                                {
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§9<§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(null);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc11_ || this)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop15:
                                                   while(!_loc12_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc11_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      loop16:
                                                      for(; _loc11_ || this; while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc12_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(_loc12_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr113);
                                                      })
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop17:
                                                            for(; _loc11_ || _loc3_; while(true)
                                                            {
                                                               if(_loc12_ && _loc3_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(_loc12_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop();
                                                               §§goto(addr214);
                                                            },continue loop15)
                                                            {
                                                               §§pop();
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  addr168:
                                                                  addr330:
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc11_ || _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(0);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc12_ && _loc2_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(!_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           addr76:
                                                                           §§push(0);
                                                                           if(!(_loc11_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(!(_loc12_ && _loc3_))
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(!(_loc12_ && this))
                                                                              {
                                                                                 addr104:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc11_ || this))
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr317:
                                                                                       §§push(Math.min(this.§!v§,this.§!!2§) / this.§!v§);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§goto(addr329);
                                                                                       }
                                                                                       break loop19;
                                                                                    }
                                                                                    if(!(_loc12_ && _loc2_))
                                                                                    {
                                                                                       if(!(_loc11_ || this))
                                                                                       {
                                                                                          §§goto(addr279);
                                                                                       }
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§9<§);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(null);
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                §§pop().apply(§§pop(),this.§,!I§);
                                                                                                addr152:
                                                                                                if(_loc12_ && _loc3_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc12_ && this)
                                                                                                      {
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§push(this.§!!2§);
                                                                                                      if(!(_loc11_ || this))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr76);
                                                                                                      §§goto(addr152);
                                                                                                   }
                                                                                                   addr329:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr214:
                                                                                                }
                                                                                                continue loop18;
                                                                                                break loop19;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr152);
                                                                                    §§goto(addr329);
                                                                                 }
                                                                              }
                                                                              §§goto(addr270);
                                                                           }
                                                                           §§goto(addr104);
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                                  var _loc3_:* = §§pop();
                                                                  var _loc4_:int = this.§`!i§.length;
                                                                  §§push(0);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  var _loc5_:* = §§pop();
                                                                  addr549:
                                                                  if(_loc5_ < _loc4_)
                                                                  {
                                                                     if(isNaN(this.§`!i§[_loc5_]))
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           this.§`!i§[_loc5_] = this.§7@§[this.§>0§[_loc5_]] as Number;
                                                                           if(!(_loc12_ && _loc3_))
                                                                           {
                                                                              addr410:
                                                                              _loc6_ = this.§`!i§[_loc5_];
                                                                              if(!(_loc12_ && _loc3_))
                                                                              {
                                                                                 addr395:
                                                                                 _loc7_ = this.§8!T§[_loc5_];
                                                                                 addr389:
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                addr370:
                                                                                                if(_loc11_ || this)
                                                                                                {
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr389);
                                                                                                         }
                                                                                                         _loc9_ = Transitions.§5T§(this.§8!-§);
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            addr547:
                                                                                                            §§push(_loc6_);
                                                                                                            if(!(_loc12_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc9_(_loc3_) * _loc8_);
                                                                                                               if(!(_loc12_ && this))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            _loc10_ = §§pop();
                                                                                                            addr548:
                                                                                                            if(this.§ ^§)
                                                                                                            {
                                                                                                               if(_loc11_ || param1)
                                                                                                               {
                                                                                                                  §§push(Number(Math.round(_loc10_)));
                                                                                                                  if(!(_loc12_ && param1))
                                                                                                                  {
                                                                                                                     _loc10_ = §§pop();
                                                                                                                     addr521:
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        addr480:
                                                                                                                        this.§7@§[this.§>0§[_loc5_]] = _loc10_;
                                                                                                                        if(_loc11_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(!(_loc12_ && param1))
                                                                                                                              {
                                                                                                                                 addr474:
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr480);
                                                                                                                                 }
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                              §§goto(addr480);
                                                                                                                           }
                                                                                                                           §§goto(addr474);
                                                                                                                        }
                                                                                                                        §§goto(addr521);
                                                                                                                        addr523:
                                                                                                                     }
                                                                                                                     §§goto(addr548);
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                               §§goto(addr521);
                                                                                                            }
                                                                                                            §§goto(addr480);
                                                                                                         }
                                                                                                         §§goto(addr523);
                                                                                                      }
                                                                                                      addr730:
                                                                                                      §§push(this.§!!2§);
                                                                                                      if(!(_loc12_ && param1))
                                                                                                      {
                                                                                                         addr657:
                                                                                                         §§push(this.§!v§);
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            addr661:
                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                            if(!(_loc12_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               addr672:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr674:
                                                                                                                  if(_loc11_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr681:
                                                                                                                     dispatchEvent(new Event(Event.§ Z§));
                                                                                                                     addr689:
                                                                                                                     §§push(this.onComplete);
                                                                                                                     if(_loc11_ || param1)
                                                                                                                     {
                                                                                                                        addr619:
                                                                                                                        §§push(null);
                                                                                                                        if(_loc11_ || this)
                                                                                                                        {
                                                                                                                           addr627:
                                                                                                                           if(§§pop() != §§pop())
                                                                                                                           {
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 addr635:
                                                                                                                                 this.onComplete.apply(null,this.§`K§);
                                                                                                                                 addr633:
                                                                                                                              }
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 if(!(_loc11_ || param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                                 addr605:
                                                                                                                                 return;
                                                                                                                                 addr646:
                                                                                                                              }
                                                                                                                              §§goto(addr689);
                                                                                                                           }
                                                                                                                           §§goto(addr605);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr633);
                                                                                                                  }
                                                                                                                  §§goto(addr730);
                                                                                                               }
                                                                                                               §§goto(addr605);
                                                                                                            }
                                                                                                            addr729:
                                                                                                            §§pop();
                                                                                                            §§goto(addr730);
                                                                                                         }
                                                                                                         addr703:
                                                                                                         §§push(§§pop() < §§pop());
                                                                                                         if(_loc11_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc11_ || _loc3_)
                                                                                                            {
                                                                                                               addr719:
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc12_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr729);
                                                                                                               }
                                                                                                               §§goto(addr672);
                                                                                                            }
                                                                                                            §§goto(addr729);
                                                                                                         }
                                                                                                         §§goto(addr719);
                                                                                                      }
                                                                                                      addr691:
                                                                                                      §§goto(addr703);
                                                                                                      §§push(this.§!v§);
                                                                                                   }
                                                                                                   §§goto(addr410);
                                                                                                }
                                                                                                §§goto(addr395);
                                                                                             }
                                                                                             §§goto(addr657);
                                                                                          }
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                       §§goto(addr661);
                                                                                    }
                                                                                    §§goto(addr691);
                                                                                 }
                                                                                 addr579:
                                                                                 §§push(this.§&B§);
                                                                                 if(!(_loc12_ && _loc2_))
                                                                                 {
                                                                                    §§push(null);
                                                                                    if(!(_loc12_ && this))
                                                                                    {
                                                                                       §§push(this.§-T§);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§pop().apply(§§pop(),§§pop());
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr690:
                                                                                             §§goto(addr691);
                                                                                             §§push(_loc2_);
                                                                                          }
                                                                                          §§goto(addr646);
                                                                                       }
                                                                                       §§goto(addr635);
                                                                                    }
                                                                                    §§goto(addr627);
                                                                                 }
                                                                                 §§goto(addr635);
                                                                              }
                                                                              §§goto(addr730);
                                                                           }
                                                                           §§goto(addr681);
                                                                        }
                                                                        §§goto(addr730);
                                                                     }
                                                                     §§goto(addr410);
                                                                  }
                                                                  if(!(_loc12_ && _loc2_))
                                                                  {
                                                                     §§push(this.§&B§);
                                                                     if(!(_loc12_ && param1))
                                                                     {
                                                                        §§push(null);
                                                                        if(!(_loc12_ && this))
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§goto(addr579);
                                                                              }
                                                                              §§goto(addr681);
                                                                           }
                                                                           §§goto(addr690);
                                                                        }
                                                                        §§goto(addr627);
                                                                     }
                                                                     §§goto(addr619);
                                                                  }
                                                                  §§goto(addr579);
                                                               }
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr279);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr330);
               }
            }
            addr279:
            return;
         }
         addr46:
      }
      
      public function get §8!V§() : Boolean
      {
         return this.§!!2§ >= this.§!v§;
      }
      
      public function get target() : Object
      {
         return this.§7@§;
      }
      
      public function get §!`§() : String
      {
         return this.§8!-§;
      }
      
      public function get §%!2§() : Number
      {
         return this.§!v§;
      }
      
      public function get §,b§() : Number
      {
         return this.§!!2§;
      }
      
      public function get delay() : Number
      {
         return this.§^!5§;
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§!!2§);
            if(_loc2_)
            {
               §§push(this.§^!5§);
               if(!_loc3_)
               {
                  addr59:
                  §§push(§§pop() + §§pop());
                  if(!_loc3_)
                  {
                     §§push(param1);
                  }
                  §§pop().§!!2§ = §§pop();
                  do
                  {
                     this.§^!5§ = param1;
                  }
                  while(_loc3_ && _loc2_);
                  
                  return;
                  addr44:
               }
               §§push(§§pop() - §§pop());
            }
            §§goto(addr59);
         }
         §§goto(addr44);
      }
      
      public function get § !c§() : Boolean
      {
         return this.§ ^§;
      }
      
      public function set § !c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ ^§ = param1;
         }
      }
      
      public function get §9<§() : Function
      {
         return this.§ !^§;
      }
      
      public function set §9<§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§ !^§ = param1;
         }
      }
      
      public function get §&B§() : Function
      {
         return this.§2!M§;
      }
      
      public function set §&B§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§2!M§ = param1;
         }
      }
      
      public function get onComplete() : Function
      {
         return this.§3!K§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3!K§ = param1;
         }
      }
      
      public function get §9n§() : Array
      {
         return this.§,!I§;
      }
      
      public function set §9n§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,!I§ = param1;
         }
      }
      
      public function get §3!]§() : Array
      {
         return this.§-T§;
      }
      
      public function set §3!]§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-T§ = param1;
         }
      }
      
      public function get §,z§() : Array
      {
         return this.§`K§;
      }
      
      public function set §,z§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`K§ = param1;
         }
      }
   }
}
