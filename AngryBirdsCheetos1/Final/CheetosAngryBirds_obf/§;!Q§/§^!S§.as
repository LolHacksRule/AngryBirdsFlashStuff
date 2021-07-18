package §;!Q§
{
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §?m§.§7?§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §^!S§ extends Sprite
   {
      
      public static const §?C§:int = 0;
      
      public static const §[!§:int = 1;
      
      public static const §"-§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?C§ = 0;
            while(true)
            {
               §[!§ = 1;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §"-§ = 2;
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private const §5!A§:uint = 40;
      
      private const §8>§:Number = 0.3;
      
      private const §"!G§:Number = 25;
      
      private const §5Y§:Number = 10;
      
      private const §]!V§:Number = 9;
      
      private var §#W§:int;
      
      private var §6!-§:int;
      
      private var §>z§:Array;
      
      private var §?!S§:Array;
      
      private var §2!"§:Point;
      
      private var §-Q§:int;
      
      public function §^!S§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§0`§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(_loc11_)
         {
            super();
            while(true)
            {
               this.§#W§ = param1 * §7?§.§&Z§;
               addr98:
               while(true)
               {
                  this.§6!-§ = param2 * §7?§.§1H§;
               }
            }
            addr101:
         }
         loop2:
         while(true)
         {
            this.§-Q§ = param5;
            while(true)
            {
               if(_loc10_)
               {
                  continue loop2;
               }
               if(!_loc10_)
               {
                  this.§2!"§ = new Point(param3,param4);
                  continue;
               }
               §§goto(addr101);
            }
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§0`§ = null;
         loop0:
         while(true)
         {
            §§push(this.§>z§);
            if(_loc3_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§>z§);
                  if(!_loc2_)
                  {
                     _loc1_ = §§pop().shift();
                     if(!_loc2_)
                     {
                        _loc1_.clean();
                     }
                     continue loop0;
                  }
               }
               if(_loc3_)
               {
                  while(true)
                  {
                     §§push(this.§?!S§);
                     break loop0;
                  }
                  addr70:
               }
               §§goto(addr97);
            }
            break;
         }
         while(§§pop().length > 0)
         {
            §§push(this.§?!S§);
            if(!_loc3_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(_loc3_ || this)
            {
               _loc1_.clean();
            }
            §§goto(addr70);
         }
         if(_loc3_ || _loc2_)
         {
            this.§>z§ = [];
            if(_loc2_)
            {
            }
            §§goto(addr97);
         }
         addr97:
         this.§?!S§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§0`§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:§&!!§ = null;
         var _loc13_:Object = null;
         if(!(_loc14_ && this))
         {
            §§push(param1);
            if(!_loc14_)
            {
               §§push(§§pop() / 20);
               if(!(_loc14_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§>z§);
            if(_loc15_ || _loc2_)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§?!S§);
                  break;
               }
               §§push(this.§>z§);
               if(!_loc15_)
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               if(!_loc14_)
               {
                  §§push(Math.random() * (this.§"!G§ - this.§5Y§));
                  loop1:
                  while(true)
                  {
                     §§push(this.§5Y§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§-Q§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§?C§);
                                    loop7:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(this.§-Q§);
                                       loop8:
                                       while(_loc15_)
                                       {
                                          §§push(§[!§);
                                          loop9:
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   §§push(this.§-Q§);
                                                   if(!_loc15_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(§"-§);
                                                   if(_loc14_)
                                                   {
                                                      continue;
                                                   }
                                                   if(§§pop() != §§pop())
                                                   {
                                                      loop29:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         §§push(_loc8_);
                                                         if(_loc15_ || _loc2_)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                         }
                                                         §§pop().§0D§ = §§pop();
                                                         addr217:
                                                         loop30:
                                                         while(true)
                                                         {
                                                            if(_loc15_ || _loc3_)
                                                            {
                                                               §§push(_loc5_);
                                                               §§push(_loc9_);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§pop().§^@§ = §§pop();
                                                               while(true)
                                                               {
                                                                  _loc5_.x = this.§2!"§.x;
                                                                  loop32:
                                                                  while(_loc15_)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc5_.y = this.§2!"§.y;
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc14_ && param1))
                                                                           {
                                                                              this.§?!S§.push(_loc5_);
                                                                              loop34:
                                                                              while(true)
                                                                              {
                                                                                 loop35:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(Math.random() * 1.5);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop36:
                                                                                          while(_loc15_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop37:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc14_ && param1)
                                                                                                {
                                                                                                   break loop33;
                                                                                                }
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   _loc10_ = §§pop();
                                                                                                   continue loop34;
                                                                                                }
                                                                                                addr387:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc14_ && this))
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                     addr358:
                                                                                                                     while(_loc15_)
                                                                                                                     {
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc14_ && _loc2_)
                                                                                                                           {
                                                                                                                              break loop9;
                                                                                                                              addr339:
                                                                                                                           }
                                                                                                                           §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                           while(!(_loc14_ && _loc2_))
                                                                                                                           {
                                                                                                                              _loc9_ = §§pop();
                                                                                                                              break loop30;
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                           addr156:
                                                                                                                           if(_loc14_ && this)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(0.2);
                                                                                                                           if(!(_loc14_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    addr87:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc15_ || param1))
                                                                                                                                    {
                                                                                                                                       continue loop36;
                                                                                                                                    }
                                                                                                                                    if(_loc15_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                break loop35;
                                                                                                                                             }
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                continue loop35;
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          addr452:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                                                                                             addr433:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                addr434:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr451:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr255:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc14_ && param1)
                                                                                                                                          {
                                                                                                                                             break loop37;
                                                                                                                                          }
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             addr264:
                                                                                                                                             if(_loc15_ || this)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                while(!(_loc14_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                                                                                      break loop36;
                                                                                                                                                   }
                                                                                                                                                   break loop7;
                                                                                                                                                }
                                                                                                                                                continue loop24;
                                                                                                                                                addr272:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * Math.random());
                                                                                                                                                addr450:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr451);
                                                                                                                                                }
                                                                                                                                                §§goto(addr264);
                                                                                                                                             }
                                                                                                                                             addr447:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr255:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       addr422:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop29;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(!_loc14_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr447);
                                                                                                                                    §§push(-§§pop());
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                                 addr444:
                                                                                                                              }
                                                                                                                              continue loop37;
                                                                                                                           }
                                                                                                                           §§goto(addr87);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr450);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr390:
                                                                                                   }
                                                                                                   §§goto(addr433);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc15_ || _loc2_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      §§goto(addr316);
                                                                                                   }
                                                                                                   addr315:
                                                                                                }
                                                                                                §§goto(addr339);
                                                                                                §§goto(addr255);
                                                                                             }
                                                                                          }
                                                                                          while(_loc15_)
                                                                                          {
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                break loop32;
                                                                                             }
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                          addr125:
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    §§goto(addr125);
                                                                                 }
                                                                                 continue loop32;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Math.PI / 2);
                                                                                 break loop33;
                                                                              }
                                                                              addr293:
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr422);
                                                                  }
                                                                  while(_loc15_)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        continue loop29;
                                                                     }
                                                                     §§goto(addr452);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                            break;
                                                            if(_loc14_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         while(_loc15_)
                                                         {
                                                            continue loop29;
                                                            §§goto(addr217);
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   §§goto(addr293);
                                                }
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr387);
                                             §§goto(addr361);
                                          }
                                       }
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr444);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr422);
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(!_loc14_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(_loc15_)
         {
            loop49:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(_loc14_)
               {
                  break;
               }
               _loc5_ = this.§?!S§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§^@§);
               if(!(_loc14_ && _loc3_))
               {
                  §§push(this.§8>§);
                  if(!(_loc14_ && _loc3_))
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§^@§ = §§pop();
               if(!_loc14_)
               {
                  if(_loc5_.§^@§ > this.§]!V§)
                  {
                     while(true)
                     {
                        _loc5_.§^@§ = this.§]!V§;
                        addr736:
                        while(true)
                        {
                        }
                     }
                     addr732:
                  }
                  loop52:
                  while(true)
                  {
                     _loc5_.x += _loc5_.§0D§ * param1;
                     while(true)
                     {
                        _loc5_.y += _loc5_.§^@§ * param1;
                        loop54:
                        while(true)
                        {
                           _loc5_.rotation += 5 * param1;
                           loop55:
                           while(true)
                           {
                              if(_loc5_.x >= -_loc5_.width / 2)
                              {
                                 if(_loc5_.x > this.§#W§ + _loc5_.width / 2)
                                 {
                                    continue;
                                 }
                                 if(_loc5_.y > this.§6!-§ + _loc5_.height / 2)
                                 {
                                    if(_loc15_ || _loc3_)
                                    {
                                       §§push(true);
                                       if(!(_loc14_ && param1))
                                       {
                                          _loc3_ = §§pop();
                                          loop56:
                                          while(true)
                                          {
                                             if(!_loc14_)
                                             {
                                                if(!(_loc15_ || _loc2_))
                                                {
                                                   continue loop55;
                                                }
                                                if(_loc15_)
                                                {
                                                   loop61:
                                                   while(true)
                                                   {
                                                      §§push(this.§?!S§);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop().length > 0);
                                                         if(!_loc14_)
                                                         {
                                                            addr559:
                                                            if(!(_loc14_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        §§pop();
                                                                        if(_loc14_ && this)
                                                                        {
                                                                           continue loop49;
                                                                        }
                                                                        if(!_loc15_)
                                                                        {
                                                                           continue loop56;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(_loc3_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr740:
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        loop64:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr692:
                                                                           while(!_loc14_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop61;
                                                                              }
                                                                              continue loop64;
                                                                           }
                                                                           §§goto(addr732);
                                                                        }
                                                                        addr691:
                                                                     }
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     addr744:
                                                                     §§push(this.§?!S§);
                                                                     break;
                                                                  }
                                                                  continue loop49;
                                                               }
                                                               addr794:
                                                               §§push(_loc4_);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               _loc4_ = §§pop();
                                                               continue loop49;
                                                            }
                                                            addr663:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr664:
                                                               while(true)
                                                               {
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     continue loop54;
                                                                  }
                                                               }
                                                               continue loop54;
                                                               §§goto(addr559);
                                                            }
                                                            §§goto(addr692);
                                                         }
                                                         §§goto(addr740);
                                                      }
                                                      break;
                                                   }
                                                   if((_loc13_ = §§pop().splice(_loc4_,1)) is §0`§)
                                                   {
                                                      if(_loc15_ || _loc2_)
                                                      {
                                                         _loc13_.clean();
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            addr771:
                                                            _loc5_.x = -2000;
                                                            if(_loc14_ && _loc3_)
                                                            {
                                                            }
                                                            §§goto(addr794);
                                                         }
                                                         _loc5_.y = -2000;
                                                      }
                                                      §§goto(addr794);
                                                   }
                                                   §§goto(addr771);
                                                   addr549:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         break loop56;
                                                      }
                                                      §§push(true);
                                                   }
                                                   addr688:
                                                }
                                                §§goto(addr691);
                                             }
                                             §§goto(addr664);
                                          }
                                          continue loop52;
                                       }
                                       §§goto(addr740);
                                    }
                                    §§goto(addr744);
                                 }
                                 §§goto(addr549);
                              }
                              §§goto(addr688);
                           }
                        }
                        if(!(_loc15_ || _loc3_))
                        {
                           continue;
                        }
                        §§goto(addr663);
                        §§push(true);
                     }
                  }
               }
               §§goto(addr694);
            }
         }
      }
   }
}
