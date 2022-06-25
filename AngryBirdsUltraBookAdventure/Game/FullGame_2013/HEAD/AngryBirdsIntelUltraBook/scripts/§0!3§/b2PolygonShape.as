package §0!3§
{
   import §!m§.*;
   import §+!g§.*;
   import §>!8§.*;
   import §>!L§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §^g§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §^g§ = new b2Mat22();
         }
      }
      
      b2internal var §7_§:b2Vec2;
      
      b2internal var §`!a§:Vector.<b2Vec2>;
      
      b2internal var §6>§:Vector.<b2Vec2>;
      
      b2internal var §"#§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               §2!5§ = §9Q§;
               loop1:
               while(true)
               {
                  this.§7_§ = new b2Vec2();
                  while(true)
                  {
                     this.§`!a§ = new Vector.<b2Vec2>();
                     addr107:
                     addr30:
                     while(true)
                     {
                        this.§6>§ = new Vector.<b2Vec2>();
                        continue loop1;
                     }
                     if(_loc1_ || _loc1_)
                     {
                        return;
                        addr37:
                     }
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               §!@§ = b2Settings.b2_polygonRadius;
               §§goto(addr44);
            }
         }
         §§goto(addr63);
      }
      
      public static function §-8§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§@s§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function § _§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && b2PolygonShape))
         {
            _loc3_.§-B§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §69§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && param1))
         {
            _loc3_.§^!1§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §<!H§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:b2PolygonShape = new b2PolygonShape();
         if(_loc7_)
         {
            _loc5_.§!!O§(param1,param2,param3,param4);
         }
         return _loc5_;
      }
      
      public static function §>M§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && b2PolygonShape))
         {
            _loc3_.§'k§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §0!X§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(!_loc18_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(_loc17_)
               {
                  §§push(_loc9_.x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc11_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc9_.y);
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    addr381:
                                    addr327:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr382:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr383:
                                          while(_loc17_)
                                          {
                                             _loc12_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                addr356:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr357:
                                                   while(!_loc18_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr361:
                                                         while(_loc17_ || _loc3_)
                                                         {
                                                            _loc13_ = §§pop();
                                                            while(!(_loc18_ && param2))
                                                            {
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    if(!(_loc17_ || b2PolygonShape))
                                    {
                                       continue;
                                    }
                                    _loc15_ = §§pop();
                                    loop28:
                                    while(true)
                                    {
                                       §§push(0.5);
                                       if(!(_loc18_ && _loc3_))
                                       {
                                          if(!_loc18_)
                                          {
                                             if(!(_loc17_ || param2))
                                             {
                                                continue loop3;
                                             }
                                             §§push(_loc15_);
                                             loop29:
                                             for(; !(_loc18_ && param2); §§push(_loc16_),if(_loc18_ && _loc3_)
                                             {
                                                continue;
                                             },if(!(_loc18_ && _loc3_))
                                             {
                                                §§goto(addr217);
                                             },while(!_loc18_)
                                             {
                                                §§goto(addr317);
                                                §§push(§§pop() - §§pop());
                                             },§§goto(addr347),addr314:)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc18_)
                                                {
                                                   loop38:
                                                   while(_loc17_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop30:
                                                      while(true)
                                                      {
                                                         _loc16_ = §§pop();
                                                         addr297:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc18_)
                                                            {
                                                               if(!_loc18_)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop29;
                                                               }
                                                               while(_loc17_ || param1)
                                                               {
                                                                  §§push(_loc6_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     break loop38;
                                                                  }
                                                               }
                                                               §§goto(addr361);
                                                               addr339:
                                                            }
                                                            else
                                                            {
                                                               addr234:
                                                               if(_loc17_)
                                                               {
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        continue loop30;
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc14_ = §§pop();
                                                                     addr350:
                                                                     while(_loc17_)
                                                                     {
                                                                        §§push(_loc11_);
                                                                        if(_loc17_ || b2PolygonShape)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 break loop28;
                                                                              }
                                                                              break;
                                                                              addr217:
                                                                              if(!(_loc17_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc17_ || param2))
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 §§goto(addr234);
                                                                              }
                                                                              §§goto(addr357);
                                                                           }
                                                                           §§goto(addr381);
                                                                        }
                                                                        break loop28;
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  addr349:
                                                               }
                                                               while(_loc17_ || b2PolygonShape)
                                                               {
                                                                  §§goto(addr327);
                                                               }
                                                               §§goto(addr382);
                                                               addr320:
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr349);
                                                   }
                                                   addr293:
                                                }
                                                §§goto(addr296);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr314);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr293);
                                       loop32:
                                       while(!(_loc18_ && b2PolygonShape))
                                       {
                                          _loc3_.§!V§(new b2Vec2(_loc5_,_loc6_));
                                          loop33:
                                          while(_loc17_)
                                          {
                                             _loc3_.§!V§(_loc9_);
                                             loop34:
                                             while(true)
                                             {
                                                if(!_loc18_)
                                                {
                                                   if(_loc18_)
                                                   {
                                                      break;
                                                   }
                                                   _loc3_.§!V§(_loc10_);
                                                   while(!_loc18_)
                                                   {
                                                      do
                                                      {
                                                         §§push(_loc3_);
                                                         §§push(_loc16_);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§§pop() * _loc7_);
                                                         }
                                                         §§pop().§2p§(§§pop());
                                                         continue loop34;
                                                      }
                                                      while(false);
                                                      
                                                      continue loop0;
                                                      if(_loc18_ && b2PolygonShape)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         §§goto(addr136);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr297);
                                                      }
                                                   }
                                                   continue loop32;
                                                }
                                                continue loop33;
                                             }
                                             §§goto(addr386);
                                          }
                                          §§goto(addr350);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr312);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr339);
               }
            }
            §§goto(addr83);
         }
         if(!_loc18_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!_loc18_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!_loc18_)
            {
               addr421:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc18_ && param2))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr421);
      }
      
      b2internal static function §"e§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc4_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(_loc27_)
         {
            §§push(0);
            if(!(_loc26_ && b2PolygonShape))
            {
               §§push(int(§§pop()));
            }
            _loc4_ = §§pop();
         }
         while(true)
         {
            §§push(_loc4_);
            if(!_loc26_)
            {
               if(§§pop() >= param3)
               {
                  if(!_loc26_)
                  {
                     _loc5_[param3] = _loc5_[0];
                  }
                  if(!(_loc27_ || param1))
                  {
                     continue;
                  }
                  if(_loc27_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     addr117:
                  }
                  §§push(_loc4_);
                  if(!_loc26_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc27_)
                     {
                        addr106:
                        _loc4_ = int(§§pop());
                        continue;
                     }
                  }
                  §§goto(addr106);
               }
               else
               {
                  _loc5_[_loc4_] = param2[_loc4_];
               }
               §§goto(addr117);
            }
            §§goto(addr106);
         }
         var _loc6_:Number = Number.MAX_VALUE;
         if(!(_loc26_ && param2))
         {
            §§push(1);
            if(_loc27_ || b2PolygonShape)
            {
               §§push(int(§§pop()));
               if(!_loc26_)
               {
                  §§goto(addr152);
               }
               §§goto(addr1228);
            }
            addr152:
            _loc4_ = §§pop();
            if(!_loc26_)
            {
               addr155:
               loop90:
               while(true)
               {
                  §§push(_loc4_);
                  addr1228:
                  while(§§pop() <= param3)
                  {
                     _loc7_ = _loc5_[int(_loc4_ - 1)];
                     if(_loc27_)
                     {
                        §§push(_loc5_[_loc4_].x - _loc7_.x);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc8_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc5_[_loc4_].y - _loc7_.y);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       while(true)
                                       {
                                          §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                          loop8:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop13:
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc9_);
                                                               while(true)
                                                               {
                                                                  §§push(_loc10_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     while(!(_loc26_ && param2))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           _loc9_ = §§pop();
                                                                           addr965:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              addr941:
                                                                              while(true)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 addr942:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    continue loop18;
                                                                                 }
                                                                                 addr903:
                                                                                 while(_loc27_ || param3)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(_loc26_ && param3)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr756);
                                                   §§push(_loc13_);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(!(_loc26_ && param2))
                                    {
                                       §§goto(addr809);
                                       §§push(Number(§§pop()));
                                       §§goto(addr706);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr875);
                     continue loop90;
                  }
               }
            }
            return;
         }
         §§goto(addr155);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc3_ || this)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            super.Set(param1);
            if(_loc4_)
            {
               §§goto(addr29);
            }
            §§goto(addr34);
         }
         addr29:
         if(param1 is b2PolygonShape)
         {
            addr34:
            _loc2_ = param1 as b2PolygonShape;
            if(!_loc5_)
            {
               this.§7_§.SetV(_loc2_.§7_§);
               loop0:
               while(true)
               {
                  this.§"#§ = _loc2_.§"#§;
                  addr143:
                  while(true)
                  {
                     this.§41§(this.§"#§);
                     do
                     {
                        §§push(0);
                        if(!(_loc5_ && this))
                        {
                           §§push(int(§§pop()));
                        }
                        _loc3_ = §§pop();
                     }
                     while(_loc5_);
                     
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  loop3:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop4:
                     while(true)
                     {
                        if(§§pop() < this.§"#§)
                        {
                           this.§`!a§[_loc3_].SetV(_loc2_.§`!a§[_loc3_]);
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 this.§6>§[_loc3_].SetV(_loc2_.§6>§[_loc3_]);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(!_loc5_)
                                       {
                                          §§push(int(§§pop()));
                                          if(!_loc4_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        §§goto(addr155);
                     }
                  }
               }
            }
            §§goto(addr143);
         }
         addr155:
      }
      
      public function §@s§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(!(_loc7_ && _loc3_))
            {
               _loc3_.push(_loc4_);
            }
         }
         if(!_loc7_)
         {
            this.§-B§(_loc3_,param2);
         }
      }
      
      public function §-B§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(!_loc7_)
         {
            §§push(param2);
            if(!_loc7_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr248:
                     while(true)
                     {
                        param2 = §§pop();
                        addr249:
                        while(true)
                        {
                        }
                     }
                     addr205:
                     if(!(_loc8_ || this))
                     {
                        continue;
                     }
                     loop8:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop9:
                        while(true)
                        {
                           §§push(this.§"#§);
                           loop10:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       loop13:
                                       while(_loc8_)
                                       {
                                          _loc3_ = §§pop();
                                          loop14:
                                          while(true)
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(this.§"#§);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  this.§7_§ = §0!X§(this.§`!a§,this.§"#§);
                                                               }
                                                               addr364:
                                                            }
                                                            §§push(_loc3_);
                                                            loop19:
                                                            for(; !_loc7_; if(!(_loc8_ || param2))
                                                            {
                                                               continue;
                                                            },§§goto(addr115))
                                                            {
                                                               §§push(int(§§pop()));
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc8_)
                                                                           {
                                                                              if(§§pop() < this.§"#§)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc7_ && this)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(_loc7_ && param1)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr67:
                                                                                 if(!(_loc8_ || param1))
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§push(1);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 addr77:
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr161:
                                                                                    §§push(§§pop() + 1);
                                                                                    break loop13;
                                                                                 }
                                                                                 §§push(int(§§pop()));
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 addr118:
                                                                                 _loc5_ = §§pop();
                                                                                 if(_loc7_ && param2)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 _loc6_ = b2Math.§2!C§(this.§`!a§[_loc5_],this.§`!a§[_loc4_]);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    b2Settings.b2Assert(_loc6_.§3!M§() > Number.MIN_VALUE);
                                                                                 }
                                                                                 this.§6>§[_loc3_].SetV(b2Math.§`e§(_loc6_,1));
                                                                                 addr296:
                                                                                 this.§6>§[_loc3_].Normalize();
                                                                                 addr344:
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 addr323:
                                                                                 §§goto(addr323);
                                                                              }
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        §§goto(addr77);
                                                                     }
                                                                     §§goto(addr67);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                            }
                                                            addr163:
                                                            _loc3_ = §§pop();
                                                            continue loop8;
                                                            return;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc3_);
                                                addr187:
                                             }
                                             §§goto(addr161);
                                          }
                                       }
                                       §§goto(addr163);
                                    }
                                 }
                              }
                              else
                              {
                                 this.§`!a§[_loc3_].SetV(param1[_loc3_]);
                              }
                              §§goto(addr187);
                           }
                        }
                     }
                     addr212:
                  }
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  loop2:
                  while(!(_loc7_ && this))
                  {
                     while(true)
                     {
                        this.§"#§ = param2;
                        do
                        {
                           this.§41§(param2);
                           do
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc3_ = §§pop();
                           }
                           while(_loc7_);
                           
                        }
                        while(!_loc8_);
                        
                        if(_loc7_ && this)
                        {
                           continue loop2;
                        }
                        §§goto(addr205);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr249);
               }
            }
            §§goto(addr248);
         }
         §§goto(addr239);
      }
      
      public function §^!1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§"#§ = 4;
            loop0:
            while(true)
            {
               this.§41§(4);
               loop1:
               while(true)
               {
                  this.§`!a§[0].Set(-param1,-param2);
                  while(true)
                  {
                     this.§`!a§[1].Set(param1,-param2);
                     loop3:
                     while(true)
                     {
                        this.§`!a§[2].Set(param1,param2);
                        addr134:
                        while(true)
                        {
                           this.§`!a§[3].Set(-param1,param2);
                           continue loop3;
                        }
                     }
                     if(_loc3_ || param1)
                     {
                        if(_loc3_)
                        {
                           loop9:
                           while(true)
                           {
                              this.§6>§[3].Set(-1,0);
                              for(; _loc3_; this.§7_§.§@!;§(),if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    break loop9;
                                 }
                                 continue loop1;
                              })
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr106);
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr65);
                           }
                           return;
                           addr86:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §!!O§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            this.§"#§ = 4;
            while(true)
            {
               this.§41§(4);
               addr97:
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               this.§6>§[2].Set(0,1);
               loop8:
               while(true)
               {
                  addr40:
                  while(true)
                  {
                     this.§6>§[3].Set(-1,0);
                     loop10:
                     while(true)
                     {
                        if(_loc8_ || param2)
                        {
                           addr56:
                           if(_loc7_ && param2)
                           {
                              break;
                           }
                           this.§7_§ = param3;
                           if(_loc8_)
                           {
                              continue loop8;
                           }
                           continue;
                        }
                        loop7:
                        while(true)
                        {
                           if(!(_loc7_ && param1))
                           {
                              addr90:
                              if(_loc7_ && param2)
                              {
                                 break;
                              }
                              §§goto(addr97);
                           }
                           addr114:
                           addr154:
                           while(!(_loc7_ && param1))
                           {
                              this.§6>§[1].Set(1,0);
                              continue loop7;
                           }
                           addr184:
                           while(true)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 this.§`!a§[3].Set(-param1,param2);
                                 break loop10;
                              }
                              break;
                              §§goto(addr114);
                           }
                           loop2:
                           while(true)
                           {
                              this.§`!a§[1].Set(param1,-param2);
                              addr172:
                              while(true)
                              {
                                 this.§`!a§[2].Set(param1,param2);
                                 continue loop2;
                              }
                           }
                        }
                        addr190:
                        while(true)
                        {
                           this.§`!a§[0].Set(-param1,-param2);
                           §§goto(addr184);
                           §§goto(addr90);
                        }
                     }
                     while(true)
                     {
                        if(_loc8_)
                        {
                           this.§6>§[0].Set(0,-1);
                           §§goto(addr114);
                        }
                        break;
                        §§goto(addr56);
                     }
                     §§goto(addr172);
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      public function §'k§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§"#§ = 2;
            loop0:
            while(true)
            {
               this.§41§(2);
               while(true)
               {
                  this.§`!a§[0].SetV(param1);
                  loop2:
                  while(true)
                  {
                     this.§`!a§[1].SetV(param2);
                     addr191:
                     addr190:
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     while(true)
                     {
                        §§pop().x = §§pop();
                        §§goto(addr191);
                     }
                  }
                  loop9:
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§6>§[0] = b2Math.§`e§(b2Math.§2!C§(param2,param1),1);
                     while(_loc4_ || param2)
                     {
                        this.§6>§[0].Normalize();
                        loop11:
                        for(; _loc4_ || _loc3_; if(!(_loc3_ && param1))
                        {
                           if(!_loc3_)
                           {
                              return;
                           }
                           continue loop9;
                        })
                        {
                           this.§6>§[1].x = -this.§6>§[0].x;
                           while(!(_loc3_ && param2))
                           {
                              this.§6>§[1].y = -this.§6>§[0].y;
                              if(!_loc3_)
                              {
                                 continue loop11;
                              }
                           }
                           §§goto(addr191);
                        }
                     }
                     while(true)
                     {
                        §§push(this.§7_§);
                        while(true)
                        {
                           §§push(0.5);
                           if(_loc4_ || param1)
                           {
                              §§push(param1.x);
                              if(_loc4_ || param1)
                              {
                                 §§push(param2.x);
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                 }
                                 addr188:
                              }
                              while(true)
                              {
                              }
                              addr189:
                           }
                           §§goto(addr190);
                           addr215:
                           §§push(this.§7_§);
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§push(0.5);
                           if(_loc4_)
                           {
                              if(_loc4_ || this)
                              {
                                 §§push(param1.y);
                                 if(_loc4_ || this)
                                 {
                                    §§push(param2.y);
                                    if(!_loc3_)
                                    {
                                       addr149:
                                       §§push(§§pop() + §§pop());
                                       if(_loc4_ || param2)
                                       {
                                          addr157:
                                          §§pop().y = §§pop() * §§pop();
                                          continue loop9;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr188);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr102);
                     }
                     addr102:
                  }
               }
            }
         }
         §§goto(addr224);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(!_loc12_)
         {
            §§push(§§pop() - param1.position.x);
            if(_loc11_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(!(_loc12_ && _loc3_))
            {
               §§push(§§pop() - param1.position.y);
               if(!_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(!_loc12_)
            {
               §§push(_loc4_.col1.x);
               if(_loc11_ || param2)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc11_)
                  {
                     §§push(_loc6_);
                     if(!_loc12_)
                     {
                        addr73:
                        §§push(§§pop() * _loc4_.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc11_ || this)
                     {
                        addr86:
                        var _loc7_:Number = §§pop();
                        §§push(_loc5_);
                        if(!(_loc12_ && this))
                        {
                           §§push(_loc4_.col2.x);
                           if(_loc11_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc11_)
                              {
                                 addr103:
                                 §§push(_loc6_);
                                 if(!_loc12_)
                                 {
                                    addr106:
                                    §§push(§§pop() * _loc4_.col2.y);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc11_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc8_:* = §§pop();
                              §§push(0);
                              if(_loc11_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              while(_loc9_ < this.§"#§)
                              {
                                 _loc3_ = this.§`!a§[_loc9_];
                                 if(!_loc12_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc11_ || param2)
                                    {
                                       §§push(_loc3_.x);
                                       if(!(_loc12_ && param1))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc12_)
                                          {
                                             addr160:
                                             §§push(Number(§§pop()));
                                             if(!_loc12_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc12_ && _loc3_))
                                                {
                                                   addr171:
                                                   §§push(_loc8_);
                                                   if(_loc11_ || param1)
                                                   {
                                                      addr179:
                                                      addr181:
                                                      §§push(§§pop() - _loc3_.y);
                                                      if(_loc11_ || this)
                                                      {
                                                      }
                                                      addr190:
                                                      _loc6_ = §§pop();
                                                      _loc3_ = this.§6>§[_loc9_];
                                                      if(!(_loc12_ && this))
                                                      {
                                                         §§push(_loc3_.x);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(_loc5_);
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.y);
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * _loc6_);
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           addr282:
                                                                        }
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           addr284:
                                                                           while(true)
                                                                           {
                                                                              addr218:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(!(_loc11_ || param2))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc12_ && param2))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       if(!(_loc12_ && param1))
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr190);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr190);
                                             }
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr171);
                              }
                              return true;
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr73);
            }
            §§goto(addr86);
         }
         §§goto(addr35);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         §§push(0);
         if(_loc21_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§-Q§);
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc21_)
         {
            §§push(param2.p1);
            if(!_loc20_)
            {
               §§push(§§pop().x);
               if(!_loc20_)
               {
                  §§push(param3.position);
                  if(_loc21_)
                  {
                     §§push(§§pop().x);
                     if(_loc21_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc20_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc20_)
                           {
                           }
                           addr89:
                           _loc7_ = §§pop();
                           _loc8_ = param3.R;
                           §§push(_loc6_);
                           if(_loc21_ || param3)
                           {
                              §§push(_loc8_.col1.x);
                              if(_loc21_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc21_ || param3)
                                 {
                                    §§push(_loc7_);
                                    if(_loc21_ || param1)
                                    {
                                       addr123:
                                       §§push(§§pop() * _loc8_.col1.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc21_)
                                    {
                                       addr130:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc10_:* = §§pop();
                                 §§push(_loc6_);
                                 if(!(_loc20_ && param3))
                                 {
                                    §§push(_loc8_.col2.x);
                                    if(!_loc20_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc21_)
                                       {
                                          addr148:
                                          §§push(_loc7_);
                                          if(_loc21_ || param1)
                                          {
                                             addr160:
                                             §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                             if(!(_loc20_ && param2))
                                             {
                                                addr168:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc11_:* = §§pop();
                                             if(_loc21_)
                                             {
                                                §§push(param2.p2);
                                                if(_loc21_ || param1)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(param3.position);
                                                      if(!_loc20_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc20_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc21_ || this)
                                                            {
                                                               addr199:
                                                               §§push(Number(§§pop()));
                                                               if(_loc21_ || param1)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr212:
                                                                     addr210:
                                                                     §§push(param2.p2.y);
                                                                     if(!(_loc20_ && this))
                                                                     {
                                                                        addr220:
                                                                        addr223:
                                                                        addr222:
                                                                        §§push(§§pop() - param3.position.y);
                                                                        if(_loc21_ || this)
                                                                        {
                                                                        }
                                                                        addr232:
                                                                        _loc7_ = §§pop();
                                                                        _loc8_ = param3.R;
                                                                        §§push(_loc6_);
                                                                        if(!(_loc20_ && param2))
                                                                        {
                                                                           §§push(_loc8_.col1.x);
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc21_ || param1)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr261:
                                                                                    §§push(§§pop() * _loc8_.col1.y);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    addr268:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc6_);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(_loc8_.col2.x);
                                                                                 if(!(_loc20_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       addr286:
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr293:
                                                                                          §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc21_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc14_:* = §§pop();
                                                                                    §§push(_loc13_);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc11_);
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc15_:* = §§pop();
                                                                                    §§push(-1);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    var _loc16_:* = §§pop();
                                                                                    §§push(0);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    var _loc17_:* = §§pop();
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc17_);
                                                                                       if(!(_loc20_ && param1))
                                                                                       {
                                                                                          §§push(this.§"#§);
                                                                                          if(!(_loc20_ && param1))
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                addr945:
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(_loc16_);
                                                                                                   break;
                                                                                                }
                                                                                                _loc8_ = param3.R;
                                                                                                _loc9_ = this.§6>§[_loc16_];
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(param1.normal);
                                                                                                   loop60:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col1);
                                                                                                      loop61:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         loop62:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc9_.x);
                                                                                                            loop63:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc20_ && param1))
                                                                                                               {
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  loop64:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr1020:
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           if(_loc21_ || param1)
                                                                                                                           {
                                                                                                                              addr1030:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc21_ || this)
                                                                                                                              {
                                                                                                                                 addr1038:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    if(_loc20_ && param2)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr965:
                                                                                                                                          loop69:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.normal);
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                continue loop60;
                                                                                                                                             }
                                                                                                                                             §§push(_loc8_.col1);
                                                                                                                                             if(!(_loc21_ || param1))
                                                                                                                                             {
                                                                                                                                                continue loop61;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.x);
                                                                                                                                                   if(_loc21_ || param3)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                      {
                                                                                                                                                         continue loop64;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1030);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      continue loop69;
                                                                                                                                                   }
                                                                                                                                                   addr1083:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1038);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    return true;
                                                                                                                                 }
                                                                                                                                 continue loop62;
                                                                                                                              }
                                                                                                                              continue loop63;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1082:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1083);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else if(true)
                                                                                                {
                                                                                                   §§goto(addr1085);
                                                                                                }
                                                                                                §§goto(addr965);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc9_ = this.§`!a§[_loc17_];
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(_loc9_.x);
                                                                                                   if(_loc21_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc21_ || param3)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!(_loc20_ && param3))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  addr377:
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr381:
                                                                                                                     §§push(§§pop() - _loc11_);
                                                                                                                     if(!(_loc20_ && this))
                                                                                                                     {
                                                                                                                        addr390:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc7_ = §§pop();
                                                                                                               }
                                                                                                               _loc9_ = this.§6>§[_loc17_];
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc9_.x);
                                                                                                                  loop1:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     loop2:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        loop3:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           loop4:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop6:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    loop7:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop8:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          loop9:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.x);
                                                                                                                                             loop10:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                loop11:
                                                                                                                                                while(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop12:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.y);
                                                                                                                                                      loop13:
                                                                                                                                                      while(!(_loc20_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         loop14:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            loop15:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               loop16:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                     loop18:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        loop19:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           loop20:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 loop21:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    loop22:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                       loop23:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          loop24:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             loop25:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop54:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop55:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc21_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc20_ && param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                               loop56:
                                                                                                                                                                                                               while(!_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                  loop33:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                        continue loop12;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop52:
                                                                                                                                                                                                                     while(_loc21_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop53:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop40:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc21_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop3;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                       if(_loc21_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc21_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc20_ && param3))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc20_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr509:
                                                                                                                                                                                                                                                §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         loop45:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                            if(_loc21_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + 1);
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr421:
                                                                                                                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc17_ = §§pop();
                                                                                                                                                                                                                                                                  if(_loc21_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop40;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop0;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr734:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                           if(_loc21_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr571:
                                                                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                             addr583:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          while(_loc21_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                                                                       §§goto(addr571);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                                                                                                                    addr572:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr864:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop7;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr822:
                                                                                                                                                                                                                                                                              while(_loc21_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop8;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr618:
                                                                                                                                                                                                                                                                           addr749:
                                                                                                                                                                                                                                                                           while(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop21;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                                                                                                                              addr750:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                 continue loop14;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr734:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr534:
                                                                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr714:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              if(_loc21_ || param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc20_ && this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr731:
                                                                                                                                                                                                                                                                                 while(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    §§goto(addr734);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    break loop40;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr731:
                                                                                                                                                                                                                                                                                 addr850:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr881:
                                                                                                                                                                                                                                                                                    return false;
                                                                                                                                                                                                                                                                                    addr739:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr618);
                                                                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr658:
                                                                                                                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop40;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr837:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                                                                 addr737:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                    break loop45;
                                                                                                                                                                                                                                                                                    §§goto(addr421);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr658);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop25;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc21_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr601);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr731);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else if(_loc21_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr658);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr737);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc16_ = §§pop();
                                                                                                                                                                                                                                                            §§goto(addr739);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr534);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr750);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                         if(_loc20_ && param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop10;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr687:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                               if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr706:
                                                                                                                                                                                                                                                                     if(!(_loc21_ || param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(_loc21_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              while(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop54;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop23;
                                                                                                                                                                                                                                                                              addr779:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr706);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop24;
                                                                                                                                                                                                                                                                        addr764:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr714);
                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                     §§goto(addr881);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr779);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop20;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr648:
                                                                                                                                                                                                                                                   if(_loc20_ && this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop56;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                                                                                                                   §§goto(addr658);
                                                                                                                                                                                                                                                   addr630:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr731);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr572);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr583);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr509);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr618);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr648);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr749);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr881);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr856:
                                                                                                                                                                                                            while(!(_loc20_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                            §§goto(addr864);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr850);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr856);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop2;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop6;
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
                                                                                                               }
                                                                                                               §§goto(addr734);
                                                                                                            }
                                                                                                            §§goto(addr381);
                                                                                                         }
                                                                                                         §§goto(addr390);
                                                                                                      }
                                                                                                      §§goto(addr381);
                                                                                                   }
                                                                                                   §§goto(addr390);
                                                                                                }
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr939);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr939:
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          param1.fraction = _loc4_;
                                                                                       }
                                                                                       §§goto(addr945);
                                                                                    }
                                                                                    addr1085:
                                                                                    return false;
                                                                                    §§push(0);
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     §§goto(addr232);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr130);
                        }
                        _loc6_ = §§pop();
                        if(!(_loc20_ && param1))
                        {
                           addr74:
                           addr72:
                           §§push(param2.p1.y);
                           if(_loc21_ || param2)
                           {
                              addr85:
                              §§push(§§pop() - param3.position.y);
                              if(_loc20_)
                              {
                              }
                           }
                           §§goto(addr89);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr89);
            }
            §§goto(addr74);
         }
         §§goto(addr72);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§`!a§[0];
         §§push(param2.position.x);
         if(!_loc12_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc12_)
            {
               §§push(_loc4_.x);
               if(_loc13_)
               {
                  addr62:
                  §§push(§§pop() * §§pop());
                  if(_loc13_ || param2)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc13_)
                     {
                        §§push(§§pop() * _loc4_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc12_ && param1))
                  {
                     addr71:
                     var _loc5_:Number = §§pop();
                     §§push(param2.position.y);
                     if(!_loc12_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!_loc12_)
                        {
                           §§push(_loc4_.x);
                           if(_loc13_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc12_)
                              {
                                 addr89:
                                 §§push(_loc3_.col2.y);
                                 if(!_loc12_)
                                 {
                                    addr97:
                                    §§push(§§pop() + §§pop() * _loc4_.y);
                                 }
                                 §§goto(addr97);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc12_)
                              {
                                 addr101:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc5_);
                              if(_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!(_loc12_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(1);
                              if(_loc13_ || this)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              while(_loc9_ < this.§"#§)
                              {
                                 _loc4_ = this.§`!a§[_loc9_];
                                 if(!_loc12_)
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr499:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          addr501:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr502:
                                             while(true)
                                             {
                                                §§push(_loc4_.x);
                                                if(_loc13_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      addr514:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr515:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.y);
                                                            addr517:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr512:
                                                }
                                                addr518:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr519:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr520:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr521:
                                                         while(true)
                                                         {
                                                            _loc10_ = §§pop();
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr419);
                              }
                              if(!(_loc12_ && param1))
                              {
                                 §§push(param1.§4m§);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    §§push(_loc5_);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() - §!@§);
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          addr556:
                                          §§pop().x = §§pop();
                                          if(_loc13_ || param1)
                                          {
                                             addr622:
                                             §§push(param1.§4m§);
                                             §§push(_loc6_);
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                §§push(§§pop() - §!@§);
                                             }
                                          }
                                          loop50:
                                          while(true)
                                          {
                                             §§push(param1.§=!`§);
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr608:
                                                addr619:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop() + §!@§;
                                                   continue loop50;
                                                }
                                                §§push(param1.§=!`§);
                                                if(_loc12_)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc8_);
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§pop().y = §§pop() + §!@§;
                                                   if(_loc13_ || param2)
                                                   {
                                                      return;
                                                   }
                                                   continue loop50;
                                                }
                                                §§goto(addr608);
                                             }
                                          }
                                          addr634:
                                       }
                                       §§pop().y = §§pop();
                                       §§goto(addr634);
                                    }
                                    §§goto(addr556);
                                 }
                                 §§goto(addr622);
                              }
                              §§goto(addr556);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr71);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr62);
         }
         §§goto(addr71);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(!_loc27_)
         {
            if(this.§"#§ != 2)
            {
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(_loc28_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(1 / 3);
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               §§push(0);
               if(!_loc27_)
               {
                  §§push(int(§§pop()));
               }
               var _loc10_:* = §§pop();
               loop0:
               while(_loc10_ < this.§"#§)
               {
                  _loc11_ = this.§`!a§[_loc10_];
                  if(_loc28_)
                  {
                     _loc12_ = _loc10_ + 1 < this.§"#§ ? this.§`!a§[int(_loc10_ + 1)] : this.§`!a§[0];
                     if(_loc28_ || this)
                     {
                        §§push(_loc11_.x);
                        loop1:
                        while(true)
                        {
                           §§push(_loc7_);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop3:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc11_.y);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             loop8:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   _loc14_ = §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.y);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    loop21:
                                                                                    for(; _loc28_ || param1; while(!(_loc27_ && this))
                                                                                    {
                                                                                       if(_loc27_ && param1)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(_loc27_ && _loc3_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr1013);
                                                                                       §§push(Number(§§pop()));
                                                                                    })
                                                                                    {
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§push(_loc16_);
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc17_ = §§pop();
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               loop30:
                                                                                                               while(_loc28_)
                                                                                                               {
                                                                                                                  §§push(_loc17_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr1069:
                                                                                                                     addr386:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr1070:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc18_ = §§pop();
                                                                                                                           addr1071:
                                                                                                                           while(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 addr1057:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr1058:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr1059:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                          addr1060:
                                                                                                                                          while(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          continue loop20;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!(_loc28_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        addr396:
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           if(_loc28_ || this)
                                                                                                                           {
                                                                                                                              addr406:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 loop106:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(0.25);
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             addr449:
                                                                                                                                             if(!(_loc27_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc27_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                §§push(_loc22_);
                                                                                                                                                if(_loc28_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                         loop107:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc27_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc27_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc24_);
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr501:
                                                                                                                                                                        if(!(_loc27_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                           if(_loc28_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc28_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc28_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr534:
                                                                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc28_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc24_);
                                                                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr566:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            loop108:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc28_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc28_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop123:
                                                                                                                                                                                                                           while(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr594:
                                                                                                                                                                                                                              if(_loc28_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                 if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr619:
                                                                                                                                                                                                                                    loop112:
                                                                                                                                                                                                                                    while(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr626:
                                                                                                                                                                                                                                             loop111:
                                                                                                                                                                                                                                             while(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr633:
                                                                                                                                                                                                                                                if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr640:
                                                                                                                                                                                                                                                   if(_loc28_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                      loop122:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc24_);
                                                                                                                                                                                                                                                         addr649:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  loop121:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc28_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           loop124:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(0.5);
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr692:
                                                                                                                                                                                                                                                                                          loop109:
                                                                                                                                                                                                                                                                                          while(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                                                                             loop110:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                addr696:
                                                                                                                                                                                                                                                                                                loop125:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc27_ && param2)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                                                                         loop113:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            loop114:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               addr710:
                                                                                                                                                                                                                                                                                                               loop115:
                                                                                                                                                                                                                                                                                                               while(_loc28_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  loop116:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 loop117:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    loop118:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr315:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop114;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr367:
                                                                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr377:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc28_ || this))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop125;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr386);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr774);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break loop117;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop124;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop113;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop110;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop108;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop107;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop122;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop121;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr773:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            addr774:
                                                                                                                                                                                                                                                                                                                                                            addr1039:
                                                                                                                                                                                                                                                                                                                                                            while(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                     break loop111;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr791:
                                                                                                                                                                                                                                                                                                                                                                  while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr815:
                                                                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                           while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(0.5);
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                    break loop123;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 continue loop24;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           loop80:
                                                                                                                                                                                                                                                                                                                                                                           while(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              loop81:
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(0.25);
                                                                                                                                                                                                                                                                                                                                                                                             break loop108;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    loop77:
                                                                                                                                                                                                                                                                                                                                                                                    while(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          while(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue loop80;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr430:
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                addr439:
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr907:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr430);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop106;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop29;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1071);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop81;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1060);
                                                                                                                                                                                                                                                                                                                                                                                                         addr857:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr439);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                      addr880:
                                                                                                                                                                                                                                                                                                                                                                                                      while(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop77;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr932:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         addr933:
                                                                                                                                                                                                                                                                                                                                                                                                         addr1014:
                                                                                                                                                                                                                                                                                                                                                                                                         while(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                                               while(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                  break loop116;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                                                                                                                                                                                                                               addr910:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                               addr957:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           break loop109;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     break loop109;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr315);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop11;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                            break loop106;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr907:
                                                                                                                                                                                                                                                                                                                                                                                                   addr423:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop117;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop118;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr954:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                         addr924:
                                                                                                                                                                                                                                                                                                                                                                                                         while(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr932);
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr933);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                                                   break loop81;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr907);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1069);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr954);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr953:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr815);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(_loc28_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr907);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr815:
                                                                                                                                                                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr832:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                           break loop117;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr988:
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     addr989:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                        addr990:
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                           continue loop21;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr534);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                               break loop115;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr799);
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr774);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr377);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1058);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr957);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                             addr838:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr842:
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc28_ || this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr857);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr842);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1013:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1014);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr873);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr906);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr396);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop116;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(_loc28_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr837);
                                                                                                                                                                                                                                                                                                                                       §§goto(addr449);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr989);
                                                                                                                                                                                                                                                                                                                                 addr833:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr924);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr910);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr880);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(_loc28_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                     §§goto(addr921);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop8;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1052);
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr1056);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1059);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1057);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr990);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                                                                                                                             loop55:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc11_.y);
                                                                                                                                                                                                                                                                                                   while(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr988);
                                                                                                                                                                                                                                                                                                         §§goto(addr640);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr501);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                      addr1035:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc12_.x);
                                                                                                                                                                                                                                                                                                         addr1037:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            break loop55;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr983:
                                                                                                                                                                                                                                                                                                   addr1034:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                §§goto(addr594);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1039);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                                                                             break loop107;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr692:
                                                                                                                                                                                                                                                                                          addr1031:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr696);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr713);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr832);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr692);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop22;
                                                                                                                                                                                                                                                                           addr664:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                                                                           addr771:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              addr772:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr773);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr770:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr791);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr654:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr771);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr790:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr791);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr648:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr986);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                   addr755:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr758:
                                                                                                                                                                                                                                                         if(!(_loc27_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                                                                               addr767:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  break loop112;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr766:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1031);
                                                                                                                                                                                                                                                               §§goto(addr758);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1030:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr833);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr633);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(!(_loc27_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr790);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr626);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr626:
                                                                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr708);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr766);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr769:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr770);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr619:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr654);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr979);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr832);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr592:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr626);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr823);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr692);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr754);
                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr619);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr649);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1037);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr789);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr566);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr970);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr777);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr626);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr619);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr767);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr649);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr983);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr648);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr592);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr755);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1034);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1035);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr769);
                                                                                                                                                }
                                                                                                                                                §§goto(addr664);
                                                                                                                                             }
                                                                                                                                             §§goto(addr836);
                                                                                                                                          }
                                                                                                                                          §§goto(addr696);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr838);
                                                                                                                                 }
                                                                                                                                 while(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr953);
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              if(_loc28_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§goto(addr1070);
                                                                                                                           }
                                                                                                                           §§goto(addr815);
                                                                                                                        }
                                                                                                                        §§goto(addr710);
                                                                                                                     }
                                                                                                                     §§goto(addr406);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop9;
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
                     }
                     §§goto(addr907);
                  }
                  §§goto(addr234);
               }
               if(_loc28_ || _loc3_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(!(_loc27_ && _loc3_))
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§=`§ = §§pop();
                  if(!(_loc27_ && _loc3_))
                  {
                     §§push(_loc3_);
                     loop129:
                     while(true)
                     {
                        §§push(1);
                        loop130:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop131:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop132:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop133:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop135:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc28_ || this)
                                          {
                                             if(_loc27_)
                                             {
                                                break;
                                             }
                                             if(!(_loc28_ || _loc3_))
                                             {
                                                continue loop133;
                                             }
                                             if(!_loc28_)
                                             {
                                                continue loop129;
                                             }
                                             §§push(1);
                                             if(!(_loc28_ || _loc3_))
                                             {
                                                continue loop130;
                                             }
                                             §§push(_loc5_);
                                             if(!(_loc28_ || this))
                                             {
                                                continue loop131;
                                             }
                                             §§push(§§pop() / §§pop());
                                             if(_loc27_)
                                             {
                                                continue loop132;
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc27_ && this))
                                             {
                                                addr1245:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                             while(true)
                                             {
                                                param1.§4=§.Set(_loc3_,_loc4_);
                                                loop137:
                                                while(!_loc27_)
                                                {
                                                   if(_loc28_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         §§push(param2);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                         }
                                                         §§pop().§#P§ = §§pop();
                                                         if(_loc28_ || this)
                                                         {
                                                            break;
                                                         }
                                                         continue loop137;
                                                      }
                                                      return;
                                                      continue;
                                                   }
                                                   continue loop135;
                                                }
                                             }
                                          }
                                          §§goto(addr1245);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr1187);
            }
         }
         §§push(param1.§4=§);
         loop139:
         while(true)
         {
            §§push(0.5);
            if(!(_loc27_ && _loc3_))
            {
               §§push(§§pop() * (this.§`!a§[0].x + this.§`!a§[1].x));
            }
            addr148:
            while(true)
            {
               §§pop().x = §§pop();
               continue loop139;
            }
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc12_:* = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:* = false;
         var _loc24_:b2MassData = null;
         var _loc25_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§[p§(param3.R,param1);
         §§push(param2);
         if(!_loc27_)
         {
            §§push(§§pop() - b2Math.§extends§(param1,param3.position));
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         §§push(0);
         if(!(_loc27_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(-1);
         if(!(_loc27_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(-1);
         if(_loc28_)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(false);
         if(_loc28_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc11_:* = §§pop();
         if(!(_loc27_ && param2))
         {
            §§push(0);
            if(_loc28_ || param3)
            {
               §§push(int(§§pop()));
            }
            _loc12_ = §§pop();
         }
         while(true)
         {
            §§push(_loc12_);
            if(_loc28_)
            {
               §§push(this.§"#§);
               if(_loc28_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc28_)
                     {
                        §§push(_loc8_);
                        if(!(_loc27_ && param2))
                        {
                           var _loc26_:* = §§pop();
                           if(!_loc27_)
                           {
                              §§push(0);
                              if(!(_loc27_ && param2))
                              {
                                 §§push(_loc26_);
                                 if(!_loc27_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc27_)
                                       {
                                          §§push(0);
                                          if(_loc27_)
                                          {
                                             addr574:
                                             addr575:
                                             if(§§pop() === _loc26_)
                                             {
                                                if(_loc28_ || param1)
                                                {
                                                   addr583:
                                                   §§push(1);
                                                   if(!(_loc27_ && this))
                                                   {
                                                      addr599:
                                                      if(_loc28_ || this)
                                                      {
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               addr393:
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§goto(addr448);
                                                                  }
                                                                  addr521:
                                                                  _loc10_ = §§pop();
                                                                  if(_loc28_)
                                                                  {
                                                                     addr524:
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               if(_loc28_)
                                                               {
                                                                  §§goto(addr396);
                                                               }
                                                               §§goto(addr521);
                                                            case 1:
                                                               addr451:
                                                               §§push(_loc9_);
                                                               if(!(_loc27_ && param1))
                                                               {
                                                                  addr460:
                                                                  §§push(-1);
                                                                  if(_loc28_)
                                                                  {
                                                                     addr463:
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc28_)
                                                                        {
                                                                           addr466:
                                                                           §§push(this.§"#§);
                                                                           if(!(_loc27_ && this))
                                                                           {
                                                                              addr475:
                                                                              §§push(1);
                                                                              if(!(_loc27_ && param2))
                                                                              {
                                                                                 addr483:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    if(!(_loc27_ && param3))
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       if(!(_loc27_ && param1))
                                                                                       {
                                                                                          §§goto(addr524);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr507:
                                                                                    §§push(1);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       addr510:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc27_ && param3))
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§goto(addr521);
                                                                                          }
                                                                                          addr612:
                                                                                          §§push(§§pop() + 1);
                                                                                          if(_loc28_ || param2)
                                                                                          {
                                                                                             addr620:
                                                                                             §§push(§§pop() % this.§"#§);
                                                                                          }
                                                                                       }
                                                                                       var _loc13_:int = §§pop();
                                                                                       §§push(_loc10_);
                                                                                       if(_loc28_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          if(!(_loc27_ && param3))
                                                                                          {
                                                                                             §§push(§§pop() % this.§"#§);
                                                                                          }
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       §§push(0 - _loc7_[_loc9_]);
                                                                                       if(!(_loc27_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                                                          if(!(_loc27_ && param1))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc15_:* = §§pop();
                                                                                       §§push(0 - _loc7_[_loc10_]);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                                                          if(!(_loc27_ && param1))
                                                                                          {
                                                                                             addr698:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc16_:* = §§pop();
                                                                                          §§push(§§findproperty(b2Vec2));
                                                                                          §§push(this.§`!a§[_loc9_].x * (1 - _loc15_));
                                                                                          if(_loc28_ || param1)
                                                                                          {
                                                                                             §§push(this.§`!a§[_loc13_].x * _loc15_);
                                                                                             if(!(_loc27_ && param1))
                                                                                             {
                                                                                                addr732:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                §§push(this.§`!a§[_loc9_].y * (1 - _loc15_));
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   §§push(§§pop() + this.§`!a§[_loc13_].y * _loc15_);
                                                                                                }
                                                                                             }
                                                                                             var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                             §§push(§§findproperty(b2Vec2));
                                                                                             §§push(this.§`!a§[_loc10_].x * (1 - _loc16_));
                                                                                             if(_loc28_ || param2)
                                                                                             {
                                                                                                §§push(this.§`!a§[_loc14_].x * _loc16_);
                                                                                                if(!(_loc27_ && param1))
                                                                                                {
                                                                                                   addr786:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   §§push(this.§`!a§[_loc10_].y * (1 - _loc16_));
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      addr797:
                                                                                                      §§push(§§pop() + this.§`!a§[_loc14_].y * _loc16_);
                                                                                                   }
                                                                                                   var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                                   var _loc19_:Number = 0;
                                                                                                   var _loc20_:b2Vec2 = new b2Vec2();
                                                                                                   var _loc21_:b2Vec2 = this.§`!a§[_loc13_];
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      if(_loc28_ || param3)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(_loc28_ || param3)
                                                                                                         {
                                                                                                            addr839:
                                                                                                            _loc12_ = §§pop();
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               addr1120:
                                                                                                               if(_loc12_ != _loc14_)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     addr847:
                                                                                                                     §§push(1);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() % this.§"#§);
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              addr858:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(_loc28_ || param3)
                                                                                                                              {
                                                                                                                                 addr866:
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                       {
                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                _loc22_ = _loc18_;
                                                                                                                                                if(_loc28_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr900:
                                                                                                                                                   §§push(0.5);
                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc21_.x);
                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_.x);
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc22_.y);
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc17_.y);
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc21_.y);
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr947:
                                                                                                                                                                              §§push(_loc17_.y);
                                                                                                                                                                              if(!(_loc27_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr956:
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr972:
                                                                                                                                                                                    §§push(_loc22_.x);
                                                                                                                                                                                    if(_loc28_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr968:
                                                                                                                                                                                       §§push(§§pop() - _loc17_.x);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                    if(_loc28_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr980:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!(_loc27_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc25_ = §§pop();
                                                                                                                                                                                             if(_loc28_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1100:
                                                                                                                                                                                                   §§push(§§pop() + _loc25_);
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1105:
                                                                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1105);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1046:
                                                                                                                                                                                             addr1106:
                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                             §§push(_loc20_.x);
                                                                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc25_);
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_.x);
                                                                                                                                                                                                   if(_loc28_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_.x);
                                                                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc28_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1088:
                                                                                                                                                                                                            §§push(§§pop() + _loc22_.x);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1095:
                                                                                                                                                                                                            §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                                                                            addr1096:
                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                            §§push(_loc20_.y);
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc25_);
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc17_.y);
                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc21_.y);
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1034:
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1022:
                                                                                                                                                                                                                           §§push(§§pop() + _loc22_.y);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!(_loc27_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1031:
                                                                                                                                                                                                                           §§push(§§pop() / 3);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                        if(_loc28_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1046);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc21_ = _loc22_;
                                                                                                                                                                                                                              §§goto(addr1120);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1106);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1096);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1022);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1031);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1034);
                                                                                                                                                                                                            addr1094:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1094);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1088);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1096);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1095);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1105);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1100);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr972);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr968);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr972);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr980);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr972);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr956);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr972);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1100);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr947);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1100);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1105);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1095);
                                                                                                                                             }
                                                                                                                                             addr1130:
                                                                                                                                             _loc20_.§2p§(1 / _loc19_);
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                addr1138:
                                                                                                                                                param4.SetV(b2Math.§&!M§(param3,_loc20_));
                                                                                                                                                return _loc19_;
                                                                                                                                                addr1146:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1146);
                                                                                                                                          }
                                                                                                                                          _loc22_ = this.§`!a§[_loc12_];
                                                                                                                                          §§goto(addr900);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1120);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1138);
                                                                                                                              }
                                                                                                                              §§goto(addr1120);
                                                                                                                           }
                                                                                                                           §§goto(addr1138);
                                                                                                                        }
                                                                                                                        §§goto(addr858);
                                                                                                                     }
                                                                                                                     §§goto(addr1120);
                                                                                                                  }
                                                                                                                  §§goto(addr866);
                                                                                                               }
                                                                                                               if(_loc28_ || param1)
                                                                                                               {
                                                                                                                  §§goto(addr1130);
                                                                                                               }
                                                                                                               §§goto(addr1138);
                                                                                                            }
                                                                                                            §§goto(addr1130);
                                                                                                         }
                                                                                                         §§goto(addr847);
                                                                                                      }
                                                                                                      §§goto(addr839);
                                                                                                   }
                                                                                                   §§goto(addr1138);
                                                                                                }
                                                                                                §§goto(addr797);
                                                                                             }
                                                                                             §§goto(addr786);
                                                                                          }
                                                                                          §§goto(addr732);
                                                                                       }
                                                                                       §§goto(addr698);
                                                                                    }
                                                                                    §§goto(addr612);
                                                                                    §§goto(addr524);
                                                                                 }
                                                                                 §§goto(addr620);
                                                                              }
                                                                              §§goto(addr510);
                                                                           }
                                                                           §§goto(addr521);
                                                                        }
                                                                        §§goto(addr524);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§"#§);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§goto(addr507);
                                                                        }
                                                                        §§goto(addr612);
                                                                     }
                                                                  }
                                                                  §§goto(addr483);
                                                               }
                                                         }
                                                         §§push(_loc9_);
                                                         if(_loc28_)
                                                         {
                                                            §§goto(addr612);
                                                         }
                                                      }
                                                      §§goto(addr510);
                                                      addr591:
                                                   }
                                                }
                                             }
                                             else if(true)
                                             {
                                                §§goto(addr599);
                                                §§push(2);
                                             }
                                             §§goto(addr599);
                                             if(_loc28_)
                                             {
                                                addr597:
                                             }
                                          }
                                          §§goto(addr599);
                                       }
                                       §§goto(addr583);
                                    }
                                    else
                                    {
                                       §§push(1);
                                       if(_loc28_ || param2)
                                       {
                                          §§goto(addr574);
                                       }
                                    }
                                    §§goto(addr591);
                                 }
                                 §§goto(addr575);
                              }
                              §§goto(addr597);
                           }
                           §§goto(addr583);
                        }
                        §§goto(addr612);
                     }
                     §§goto(addr396);
                  }
                  else
                  {
                     _loc7_[_loc12_] = b2Math.§extends§(_loc5_,this.§`!a§[_loc12_]) - _loc6_;
                     loop1:
                     while(true)
                     {
                        §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                        if(_loc28_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop2:
                        while(true)
                        {
                           _loc23_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc12_);
                              if(!(_loc27_ && param1))
                              {
                                 §§push(0);
                                 if(!_loc27_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc28_ || this)
                                       {
                                          §§push(_loc23_);
                                          if(!(_loc27_ && param1))
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc27_)
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc11_);
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      while(!_loc27_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc28_ || this)
                                                            {
                                                               while(_loc28_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           addr331:
                                                                           while(true)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!(_loc27_ && this))
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    if(_loc27_ && param3)
                                                                                    {
                                                                                       addr448:
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§push(int(§§pop()));
                                                                                    if(_loc28_ || param1)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(!(_loc27_ && param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr451);
                                                                                    }
                                                                                    §§goto(addr460);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr521);
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr483);
                                                               }
                                                               continue loop3;
                                                               addr323:
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      continue loop2;
                                                      if(!(_loc28_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      _loc11_ = §§pop();
                                                      if(!(_loc27_ && param3))
                                                      {
                                                         if(!(_loc27_ && this))
                                                         {
                                                            if(_loc28_)
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc28_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(!(_loc27_ && param2))
                                                                  {
                                                                     if(!_loc27_)
                                                                     {
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(_loc28_)
                                                                           {
                                                                              if(_loc28_ || param1)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 if(!(_loc27_ && param2))
                                                                                 {
                                                                                    §§goto(addr131);
                                                                                 }
                                                                                 addr396:
                                                                                 _loc24_ = new b2MassData();
                                                                                 if(!(_loc27_ && param2))
                                                                                 {
                                                                                    this.ComputeMass(_loc24_,1);
                                                                                    param4.SetV(b2Math.§&!M§(param3,_loc24_.§4=§));
                                                                                 }
                                                                                 return _loc24_.§=`§;
                                                                              }
                                                                              §§goto(addr226);
                                                                           }
                                                                           §§goto(addr612);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr521);
                                                               }
                                                               §§goto(addr507);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      §§goto(addr524);
                                                   }
                                                }
                                                §§goto(addr466);
                                             }
                                             else
                                             {
                                                §§push(_loc11_);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr393);
                                       }
                                       §§goto(addr323);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr510);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr460);
               }
               §§goto(addr463);
            }
            §§goto(addr521);
         }
      }
      
      public function §8!g§() : int
      {
         return this.§"#§;
      }
      
      public function §64§() : Vector.<b2Vec2>
      {
         return this.§`!a§;
      }
      
      public function §+!,§() : Vector.<b2Vec2>
      {
         return this.§6>§;
      }
      
      public function §8!N§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`!a§[0].x * param1.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + this.§`!a§[0].y * param1.y);
            if(!(_loc7_ && param1))
            {
               addr54:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_ || _loc2_)
               {
                  if(!_loc7_)
                  {
                     if(!(_loc7_ && this))
                     {
                        if(§§pop() >= this.§"#§)
                        {
                           if(_loc7_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc6_ || _loc2_)
                           {
                              §§push(_loc2_);
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc6_ || param1)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc6_ || _loc3_)
                                          {
                                          }
                                          while(!_loc6_)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                addr190:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr191:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr142:
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc7_ && _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     addr167:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§push(_loc4_);
                                                                              continue loop4;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr214:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§`!a§[_loc4_].y * param1.y);
                                                               }
                                                               addr202:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          _loc4_ = §§pop();
                                          addr124:
                                          continue loop0;
                                          addr124:
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr191);
                           }
                        }
                        else
                        {
                           §§push(this.§`!a§[_loc4_].x * param1.x);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr124);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function §9!-§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(0);
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`!a§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§`!a§[0].y * param1.y);
            if(_loc7_ || this)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     if(§§pop() >= this.§"#§)
                     {
                        if(_loc7_ || _loc2_)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(int(§§pop()));
                              }
                              loop2:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          if(_loc7_)
                                          {
                                             addr136:
                                             §§push(Number(§§pop()));
                                             if(_loc7_ || this)
                                             {
                                                _loc3_ = §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr149:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc7_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§`!a§[_loc4_].y * param1.y);
                                                                  break loop6;
                                                               }
                                                               addr191:
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr200:
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr201:
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               §§goto(addr202);
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                      addr202:
                                                   }
                                                   else
                                                   {
                                                      addr146:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            addr104:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop0;
                                                                  addr107:
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         addr103:
                                                      }
                                                      §§goto(addr104);
                                                      §§goto(addr146);
                                                   }
                                                }
                                             }
                                             §§goto(addr149);
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr136);
                                 }
                              }
                           }
                        }
                        §§goto(addr107);
                     }
                     else
                     {
                        §§push(this.§`!a§[_loc4_].x * param1.x);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr103);
               }
               §§goto(addr104);
            }
            return this.§`!a§[_loc2_];
         }
         §§goto(addr55);
      }
      
      private function §7v§() : Boolean
      {
         return false;
      }
      
      private function §41§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§`!a§.length);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && param1))
            {
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() >= param1)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        this.§6>§[_loc2_] = new b2Vec2();
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              addr73:
                              §§push(§§pop() + 1);
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr74:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                              addr73:
                           }
                           §§goto(addr73);
                        }
                        addr85:
                        addr94:
                     }
                     while(_loc3_)
                     {
                        §§goto(addr85);
                        §§goto(addr74);
                     }
                     continue;
                  }
                  this.§`!a§[_loc2_] = new b2Vec2();
                  §§goto(addr94);
               }
               §§goto(addr73);
            }
            §§goto(addr74);
         }
      }
   }
}
