package §3!,§
{
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §`h§.§@!Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §#f§ extends Sprite
   {
      
      public static const § !P§:int = 0;
      
      public static const §0!3§:int = 1;
      
      public static const §0!H§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § !P§ = 0;
            while(true)
            {
               §0!3§ = 1;
               while(!_loc2_)
               {
                  §0!H§ = 2;
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private const §3!$§:uint = 40;
      
      private const §?`§:Number = 0.3;
      
      private const §0!"§:Number = 25;
      
      private const §`!0§:Number = 10;
      
      private const §7H§:Number = 9;
      
      private var §%!U§:int;
      
      private var §&w§:int;
      
      private var §2!]§:Array;
      
      private var §6!U§:Array;
      
      private var §0![§:Point;
      
      private var §'T§:int;
      
      public function §#f§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§7U§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!(_loc10_ && param3))
         {
            super();
            while(true)
            {
               this.§%!U§ = param1 * §@!Z§.§<X§;
               loop1:
               while(true)
               {
                  this.§&w§ = param2 * §@!Z§.§5I§;
                  loop2:
                  while(true)
                  {
                     this.§'T§ = param5;
                     loop3:
                     while(true)
                     {
                        this.§0![§ = new Point(param3,param4);
                        while(_loc11_)
                        {
                           while(_loc11_ || param2)
                           {
                              if(_loc11_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc10_ && param2)
               {
                  continue;
               }
               this.§6!U§ = [];
               if(!_loc10_)
               {
                  addr38:
                  if(false)
                  {
                     while(true)
                     {
                        this.§2!]§ = [];
                        §§goto(addr44);
                        §§goto(addr38);
                     }
                     addr40:
                  }
                  var _loc9_:int = 0;
                  while(_loc9_ < this.§3!$§)
                  {
                     §§push(§§findproperty(§7U§));
                     §§push(Math.random() * 40);
                     if(_loc11_ || param1)
                     {
                        §§push(§§pop() + 10);
                     }
                     (_loc6_ = new §§pop().§7U§(§§pop())).x = -2000;
                     if(_loc11_ || param2)
                     {
                        _loc6_.y = -2000;
                        while(true)
                        {
                           this.addChild(_loc6_);
                           loop10:
                           while(_loc11_)
                           {
                              while(true)
                              {
                                 this.§2!]§[_loc9_] = _loc6_;
                                 addr161:
                                 while(_loc11_)
                                 {
                                 }
                                 continue loop10;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        _loc9_++;
                        if(!(_loc10_ && param3))
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr161);
                     }
                  }
                  return;
               }
               §§goto(addr44);
            }
         }
         while(true)
         {
            §§goto(addr40);
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7U§ = null;
         loop0:
         while(true)
         {
            §§push(this.§2!]§);
            if(!_loc2_)
            {
               if(§§pop().length <= 0)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§6!U§);
                        addr67:
                        while(§§pop().length > 0)
                        {
                           §§push(this.§6!U§);
                           if(_loc3_)
                           {
                              break loop0;
                           }
                        }
                        if(_loc3_)
                        {
                           this.§2!]§ = [];
                           if(!(_loc2_ && _loc2_))
                           {
                              this.§6!U§ = [];
                           }
                        }
                     }
                     addr65:
                  }
                  return;
               }
               §§push(this.§2!]§);
               if(_loc3_)
               {
                  _loc1_ = §§pop().shift();
                  if(_loc3_)
                  {
                     _loc1_.clean();
                  }
                  continue;
               }
               §§goto(addr67);
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(!_loc2_)
            {
               _loc1_.clean();
            }
            §§goto(addr65);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§7U§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§7g§ = null;
         var _loc13_:Object = null;
         if(!(_loc14_ && this))
         {
            §§push(param1);
            if(_loc15_ || this)
            {
               §§push(§§pop() / 20);
               if(!(_loc14_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§2!]§);
            if(!_loc14_)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§6!U§);
                  break;
               }
               §§push(this.§2!]§);
               if(!(_loc15_ || _loc2_))
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               if(!(_loc14_ && this))
               {
                  §§push(Math.random() * (this.§0!"§ - this.§`!0§));
                  loop1:
                  while(true)
                  {
                     §§push(this.§`!0§);
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
                                 §§push(this.§'T§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§ !P§);
                                    addr479:
                                    addr480:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(this.§'T§);
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       §§push(Math.PI / 2);
                                       while(true)
                                       {
                                          §§push(-§§pop());
                                          loop45:
                                          while(true)
                                          {
                                             §§push(§§pop() * Math.random());
                                             while(_loc15_ || this)
                                             {
                                                addr495:
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                            loop18:
                                                            while(true)
                                                            {
                                                               _loc9_ = §§pop();
                                                               loop19:
                                                               while(_loc15_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     §§push(_loc8_);
                                                                     if(_loc15_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§pop().§2!G§ = §§pop();
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        §§push(_loc9_);
                                                                        if(_loc15_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() * _loc6_);
                                                                        }
                                                                        §§pop().§!5§ = §§pop();
                                                                        addr249:
                                                                        while(true)
                                                                        {
                                                                           _loc5_.x = this.§0![§.x;
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 _loc5_.y = this.§0![§.y;
                                                                                 continue loop21;
                                                                              }
                                                                              addr329:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc14_ && this))
                                                                                 {
                                                                                    §§push(Math.PI / 2);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc15_ || _loc3_)
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(§§pop() * Math.random());
                                                                                             while(!_loc14_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc15_ || this))
                                                                                                   {
                                                                                                      break loop23;
                                                                                                   }
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc7_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                                                      continue loop35;
                                                                                                   }
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             continue loop1;
                                                                                             addr352:
                                                                                          }
                                                                                          continue loop45;
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr177:
                                                                              if(_loc14_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc14_)
                                                                              {
                                                                                 if(!(_loc14_ && param1))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0.5);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          if(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             §§push(Math.random() * 1.5);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                addr142:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                while(!_loc14_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                §§goto(addr352);
                                                                                                addr142:
                                                                                             }
                                                                                             §§goto(addr439);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             §§goto(addr375);
                                                                                          }
                                                                                          addr374:
                                                                                       }
                                                                                       §§goto(addr142);
                                                                                       addr120:
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc14_ && param1))
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 addr392:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr443);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr495);
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr448);
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
         if(_loc15_ || param1)
         {
            loop49:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!_loc15_)
               {
                  break;
               }
               _loc5_ = this.§6!U§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§!5§);
               if(_loc15_ || param1)
               {
                  §§push(this.§?`§);
                  if(!_loc14_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§!5§ = §§pop();
               if(_loc15_)
               {
                  if(_loc5_.§!5§ > this.§7H§)
                  {
                     while(true)
                     {
                        _loc5_.§!5§ = this.§7H§;
                        addr771:
                        while(true)
                        {
                        }
                     }
                     addr767:
                  }
                  loop52:
                  while(true)
                  {
                     _loc5_.x += _loc5_.§2!G§ * param1;
                     loop53:
                     while(true)
                     {
                        _loc5_.y += _loc5_.§!5§ * param1;
                        if(_loc14_ && _loc2_)
                        {
                           continue loop49;
                        }
                        _loc5_.rotation += 5 * param1;
                        loop54:
                        while(_loc5_.x >= -_loc5_.width / 2)
                        {
                           if(_loc5_.x > this.§%!U§ + _loc5_.width / 2)
                           {
                              if(!_loc14_)
                              {
                                 addr722:
                                 if(!(_loc14_ && _loc3_))
                                 {
                                    if(_loc15_)
                                    {
                                       addr700:
                                       §§push(true);
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                       }
                                       addr700:
                                    }
                                    else
                                    {
                                       §§goto(addr767);
                                    }
                                 }
                                 while(true)
                                 {
                                    addr589:
                                    while(true)
                                    {
                                       §§push(this.§6!U§);
                                       if(_loc15_ || _loc2_)
                                       {
                                          §§push(§§pop().length > 0);
                                          if(!_loc14_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc15_)
                                                {
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      §§pop();
                                                      if(!_loc15_)
                                                      {
                                                         continue loop49;
                                                      }
                                                      if(_loc14_ && param1)
                                                      {
                                                         continue loop52;
                                                      }
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(_loc3_);
                                                      if(_loc15_ || _loc2_)
                                                      {
                                                         addr780:
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr700);
                                                   }
                                                }
                                             }
                                             addr781:
                                             if(§§pop())
                                             {
                                                if(_loc14_)
                                                {
                                                   continue loop49;
                                                }
                                                addr786:
                                                if((_loc13_ = this.§6!U§.splice(_loc4_,1)) is §7U§)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      _loc13_.clean();
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         addr806:
                                                         _loc5_.x = -2000;
                                                         if(!_loc15_)
                                                         {
                                                         }
                                                         addr814:
                                                         §§push(_loc4_);
                                                         if(_loc15_ || _loc2_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc4_ = §§pop();
                                                         continue loop49;
                                                      }
                                                      _loc5_.y = -2000;
                                                   }
                                                   §§goto(addr814);
                                                }
                                             }
                                             §§goto(addr806);
                                          }
                                          §§goto(addr780);
                                       }
                                       §§goto(addr786);
                                    }
                                 }
                                 addr722:
                              }
                              while(true)
                              {
                                 if(!_loc15_)
                                 {
                                    break loop54;
                                 }
                                 §§goto(addr627);
                                 §§goto(addr700);
                              }
                              addr701:
                           }
                           else if(_loc5_.y > this.§&w§ + _loc5_.height / 2)
                           {
                              if(_loc14_ && this)
                              {
                                 continue loop49;
                              }
                              if(!_loc15_)
                              {
                                 continue;
                              }
                              §§push(true);
                              if(!(_loc14_ && _loc3_))
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc15_ || _loc2_))
                                 {
                                    continue loop49;
                                 }
                                 if(_loc15_)
                                 {
                                    continue loop53;
                                 }
                                 §§goto(addr701);
                              }
                              §§goto(addr781);
                           }
                           §§goto(addr589);
                        }
                        while(true)
                        {
                           §§push(true);
                           if(!(_loc14_ && _loc2_))
                           {
                              _loc3_ = §§pop();
                              §§goto(addr722);
                           }
                           break;
                        }
                        §§goto(addr780);
                     }
                  }
               }
               §§goto(addr722);
            }
         }
      }
   }
}
