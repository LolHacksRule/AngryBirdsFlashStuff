package §>-§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §1]§ extends Sprite
   {
      
      public static const override:int = 0;
      
      public static const final:int = 1;
      
      public static const §@b§:int = 2;
      
      public static const §]!>§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            override = 0;
            while(true)
            {
               final = 1;
               addr46:
               if(!(_loc2_ && §1]§))
               {
                  §]!>§ = 3;
                  addr53:
                  if(_loc2_)
                  {
                     while(_loc1_)
                     {
                        §§goto(addr46);
                        §§goto(addr53);
                     }
                     while(true)
                     {
                        §@b§ = 2;
                        §§goto(addr44);
                     }
                     addr44:
                     addr58:
                  }
                  return;
               }
            }
         }
         §§goto(addr58);
      }
      
      private const §each §:uint = 40;
      
      private const §^W§:Number = 0.3;
      
      private const §7!#§:Number = 25;
      
      private const §5@§:Number = 10;
      
      private const §?E§:Number = 9;
      
      private var §break§:int;
      
      private var §71§:int;
      
      private var §7@§:Array;
      
      private var §6o§:Array;
      
      private var §=!8§:Point;
      
      private var §5!+§:int;
      
      public function §1]§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:§6%§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!_loc13_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§break§ = param1;
                  do
                  {
                     this.§71§ = param2;
                  }
                  while(_loc13_ && param2);
                  
                  if(_loc13_ && param1)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc7_:Number = Math.min(§[o§.§>k§,§[o§.§<T§);
                  var _loc8_:Number = Math.max(§[o§.§>k§,§[o§.§<T§);
                  §§push(param3);
                  if(_loc14_ || param1)
                  {
                     §§push(§[o§.§<T§);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        if(!_loc13_)
                        {
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr149:
                        }
                        while(true)
                        {
                           param3 = §§pop();
                           §§push(param4);
                           if(_loc14_)
                           {
                              if(!(_loc14_ || param2))
                              {
                                 continue;
                              }
                              §§push(§[o§.§>k§);
                              if(_loc13_)
                              {
                                 continue loop4;
                              }
                              §§push(§§pop() / §§pop());
                              if(!_loc13_)
                              {
                                 break;
                              }
                              param4 = §§pop();
                              this.§5!+§ = param5;
                              this.§=!8§ = new Point(param3,param4);
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§7@§ = [];
                                    do
                                    {
                                       this.§6o§ = [];
                                    }
                                    while(_loc13_ && this);
                                    
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc12_:int = 0;
                                    loop9:
                                    while(_loc12_ < param6)
                                    {
                                       §§push(§§findproperty(§6%§));
                                       §§push(Math.random() * 40);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() + 10);
                                       }
                                       (_loc9_ = new §§pop().§6%§(§§pop())).x = -2000;
                                       if(_loc14_ || this)
                                       {
                                          _loc9_.y = -2000;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          this.addChild(_loc9_);
                                          addr220:
                                          while(true)
                                          {
                                             addr192:
                                             while(true)
                                             {
                                                this.§7@§[_loc12_] = _loc9_;
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                    if(_loc14_ || this)
                                    {
                                       this.scaleX = _loc8_;
                                       if(_loc14_)
                                       {
                                          addr240:
                                          this.scaleY = _loc8_;
                                       }
                                       return;
                                    }
                                    §§goto(addr240);
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr149);
               }
            }
         }
         §§goto(addr45);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6%§ = null;
         loop0:
         while(true)
         {
            §§push(this.§7@§);
            if(!_loc3_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§7@§);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_ = §§pop().shift();
                     if(!_loc3_)
                     {
                        _loc1_.clean();
                     }
                     continue loop0;
                  }
               }
               if(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     §§push(this.§6o§);
                     while(§§pop().length > 0)
                     {
                        §§push(this.§6o§);
                        if(_loc2_ || _loc1_)
                        {
                           break loop0;
                        }
                     }
                     if(_loc2_ || _loc2_)
                     {
                        this.§7@§ = [];
                        if(_loc2_)
                        {
                           addr111:
                           this.§6o§ = [];
                        }
                        return;
                     }
                  }
                  addr94:
               }
               §§goto(addr111);
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.clean();
            }
            §§goto(addr94);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§6%§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         if(_loc15_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc16_ && param1))
            {
               §§push(§§pop() / 20);
               if(_loc15_ || _loc2_)
               {
                  addr64:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr66);
            }
            §§goto(addr64);
         }
         addr66:
         loop0:
         while(true)
         {
            §§push(this.§7@§);
            if(_loc15_ || _loc3_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§7@§);
                  if(!(_loc15_ || _loc2_))
                  {
                     continue;
                  }
                  _loc5_ = §§pop().shift();
                  §§push(Math.random() * (this.§7!#§ - this.§5@§));
                  §§push(this.§5@§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc16_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        §§push(this.§5!+§);
                        loop4:
                        while(true)
                        {
                           §§push(override);
                           loop5:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(this.§5!+§);
                                 while(_loc15_)
                                 {
                                    §§push(final);
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc16_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             §§push(this.§5!+§);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§@b§);
                                                addr416:
                                                while(true)
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr419);
                                             }
                                          }
                                          break;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop4;
                              }
                              addr533:
                              §§push(-(Math.PI / 2) * Math.random());
                              if(_loc16_)
                              {
                                 continue loop3;
                              }
                              _loc7_ = Number(§§pop());
                              addr522:
                              _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
                              addr503:
                              §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                              if(!(_loc16_ && _loc2_))
                              {
                                 _loc9_ = §§pop();
                                 addr212:
                                 §§push(_loc5_);
                                 §§push(_loc8_);
                                 if(!(_loc16_ && _loc3_))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().§8e§ = §§pop();
                                 §§push(_loc5_);
                                 §§push(_loc9_);
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§pop().§ !1§ = §§pop();
                                 _loc5_.x = this.§=!8§.x;
                                 _loc5_.y = this.§=!8§.y;
                                 addr511:
                                 if(_loc15_ || this)
                                 {
                                    this.§6o§.push(_loc5_);
                                    if(!_loc16_)
                                    {
                                       §§push(0.5);
                                       §§push(Math.random() * 1.5);
                                       if(_loc15_ || _loc3_)
                                       {
                                          if(!(_loc16_ && _loc3_))
                                          {
                                             if(_loc16_)
                                             {
                                                continue loop2;
                                             }
                                             _loc10_ = §§pop() + §§pop();
                                             §§push(0.2);
                                             if(!(_loc16_ && _loc3_))
                                             {
                                                if(!(_loc16_ && _loc3_))
                                                {
                                                   addr130:
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc16_ && _loc3_))
                                                   {
                                                      _loc11_ = §§pop();
                                                      if(_loc15_)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         addr289:
                                                         _loc12_ = this.§5@§ / 2;
                                                         addr303:
                                                         addr288:
                                                         §§push(this.§7!#§);
                                                         if(_loc15_ || param1)
                                                         {
                                                            §§push(2);
                                                            if(!_loc16_)
                                                            {
                                                               addr279:
                                                               _loc13_ = §§pop() / §§pop();
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(Math.random() * (_loc13_ - _loc12_));
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              addr252:
                                                                              §§push(§§pop() + _loc12_);
                                                                              if(_loc15_ || _loc3_)
                                                                              {
                                                                                 addr261:
                                                                                 addr260:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    §§goto(addr212);
                                                                                 }
                                                                                 addr365:
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr312:
                                                                                       _loc8_ = Math.sin(_loc7_ + Math.PI);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                §§goto(addr303);
                                                                                             }
                                                                                             addr444:
                                                                                             _loc9_ = §§pop();
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                          addr474:
                                                                                          §§push(Math.PI * (Math.random() - 0.5));
                                                                                          if(_loc15_ || _loc2_)
                                                                                          {
                                                                                             addr482:
                                                                                             §§push(Number(§§pop() * 0.5));
                                                                                             if(_loc15_ || _loc3_)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                _loc8_ = Math.sin(_loc7_ + Math.PI);
                                                                                                §§goto(addr444);
                                                                                                §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                             }
                                                                                             §§goto(addr533);
                                                                                          }
                                                                                          §§goto(addr503);
                                                                                       }
                                                                                       §§goto(addr212);
                                                                                       addr387:
                                                                                    }
                                                                                    addr419:
                                                                                    §§push(Number(Math.PI / 2 * Math.random()));
                                                                                 }
                                                                                 _loc7_ = §§pop();
                                                                                 if(_loc15_ || _loc2_)
                                                                                 {
                                                                                    _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
                                                                                    _loc9_ = Number(Math.cos(_loc7_ + Math.PI / 2));
                                                                                    §§goto(addr387);
                                                                                    addr399:
                                                                                 }
                                                                                 §§goto(addr511);
                                                                              }
                                                                              §§goto(addr261);
                                                                           }
                                                                           §§goto(addr533);
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr474);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr261);
                                             }
                                             §§goto(addr130);
                                          }
                                          addr356:
                                          if(_loc15_ || this)
                                          {
                                             addr364:
                                             §§goto(addr365);
                                             §§push(Number(§§pop() * §§pop()));
                                          }
                                          §§goto(addr482);
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr399);
                                 }
                                 addr197:
                                 §§goto(addr197);
                              }
                              §§goto(addr522);
                              §§goto(addr474);
                           }
                        }
                     }
                  }
               }
               §§push(this.§6o§);
               break;
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(_loc15_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(_loc15_)
         {
            loop10:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!(_loc15_ || param1))
               {
                  break;
               }
               _loc5_ = this.§6o§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§ !1§);
               if(!(_loc16_ && param1))
               {
                  §§push(this.§^W§);
                  if(_loc15_ || _loc3_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§ !1§ = §§pop();
               if(_loc5_.§ !1§ > this.§?E§)
               {
                  loop11:
                  while(true)
                  {
                     _loc5_.§ !1§ = this.§?E§;
                     if(!(_loc16_ && param1))
                     {
                        while(true)
                        {
                           _loc5_.x += _loc5_.§8e§ * param1;
                           while(true)
                           {
                              if(!_loc15_)
                              {
                                 continue loop11;
                              }
                              _loc5_.y += _loc5_.§ !1§ * param1;
                              _loc5_.rotation += 5 * param1;
                              if(_loc5_.x >= -_loc5_.width / 2)
                              {
                                 if(_loc5_.x > this.§break§ + _loc5_.width / 2)
                                 {
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       _loc3_ = true;
                                       addr658:
                                       §§push(this.§6o§);
                                       if(!(_loc16_ && this))
                                       {
                                          addr778:
                                          §§push(§§pop().length > 0);
                                          if(!_loc16_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc16_)
                                                {
                                                   addr723:
                                                   if(!(_loc16_ && _loc2_))
                                                   {
                                                      §§pop();
                                                      if(false)
                                                      {
                                                         §§goto(addr658);
                                                      }
                                                      §§push(_loc3_);
                                                   }
                                                   _loc3_ = §§pop();
                                                   §§goto(addr658);
                                                   addr724:
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc15_)
                                             {
                                                break loop11;
                                             }
                                             continue loop10;
                                          }
                                          addr821:
                                          §§push(_loc4_);
                                          if(!(_loc16_ && this))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc4_ = §§pop();
                                          continue loop10;
                                       }
                                       addr783:
                                       if((_loc14_ = §§pop().splice(_loc4_,1)) is §6%§)
                                       {
                                          if(!_loc16_)
                                          {
                                             _loc14_.clean();
                                             if(!(_loc16_ && param1))
                                             {
                                                addr813:
                                                _loc5_.x = -2000;
                                                if(_loc16_)
                                                {
                                                }
                                                §§goto(addr821);
                                             }
                                             _loc5_.y = -2000;
                                          }
                                          §§goto(addr821);
                                       }
                                       §§goto(addr813);
                                    }
                                    else
                                    {
                                       addr722:
                                       §§push(true);
                                    }
                                    §§goto(addr723);
                                 }
                                 else if(_loc5_.y > this.§71§ + _loc5_.height / 2)
                                 {
                                    if(_loc15_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr724);
                                 }
                                 §§goto(addr658);
                              }
                              §§goto(addr722);
                           }
                        }
                        addr746:
                     }
                     break;
                  }
                  §§goto(addr783);
                  §§push(this.§6o§);
               }
               §§goto(addr746);
            }
         }
      }
   }
}
