package §&U§
{
   import §0!G§.*;
   import §2!F§.*;
   import §9"§.*;
   import §`j§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §%!E§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!E§ = new b2Mat22();
         }
      }
      
      b2internal var §3§:b2Vec2;
      
      b2internal var §9Z§:Vector.<b2Vec2>;
      
      b2internal var §&b§:Vector.<b2Vec2>;
      
      b2internal var §9X§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         loop0:
         while(true)
         {
            §8!J§ = b2internal::,!K;
            while(true)
            {
               this.§3§ = new b2Vec2();
               while(true)
               {
                  this.§9Z§ = new Vector.<b2Vec2>();
                  loop3:
                  while(true)
                  {
                     this.§&b§ = new Vector.<b2Vec2>();
                     while(true)
                     {
                        §@s§ = b2Settings.b2_polygonRadius;
                        while(_loc1_)
                        {
                           continue loop3;
                           this.§3§.§3a§();
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §%!R§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && b2PolygonShape))
         {
            _loc3_.§[U§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §06§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || param1)
         {
            _loc3_.§@c§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §-!H§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && b2PolygonShape))
         {
            _loc3_.§6[§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §>!1§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§]-§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §@[§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || _loc3_)
         {
            _loc3_.§9%§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §9H§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
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
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc17_ && b2PolygonShape))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc18_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(!(_loc17_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!(_loc17_ && param2))
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
                                 if(!(_loc17_ && param2))
                                 {
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                    }
                                    addr400:
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       _loc12_ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc10_.x);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop13:
                                                   while(!(_loc17_ && param1))
                                                   {
                                                      _loc13_ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_.y);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     _loc14_ = §§pop();
                                                                     loop19:
                                                                     while(_loc18_ || param1)
                                                                     {
                                                                        §§push(_loc11_);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           loop21:
                                                                           while(_loc18_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    if(_loc17_ && param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop17;
                                                                                 addr197:
                                                                                 if(_loc17_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr204:
                                                                                 §§push(_loc16_);
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    addr212:
                                                                                    if(_loc18_ || b2PolygonShape)
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc17_ && param2))
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          addr242:
                                                                                          if(!(_loc17_ && param1))
                                                                                          {
                                                                                             addr249:
                                                                                             if(_loc18_ || param2)
                                                                                             {
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                _loc4_ = §§pop();
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_.§-i§(new b2Vec2(_loc5_,_loc6_));
                                                                                                   loop33:
                                                                                                   for(; !(_loc17_ && _loc3_); while(!(_loc17_ && b2PolygonShape))
                                                                                                   {
                                                                                                      continue loop32;
                                                                                                   })
                                                                                                   {
                                                                                                      _loc3_.§-i§(_loc9_);
                                                                                                      while(_loc18_)
                                                                                                      {
                                                                                                         _loc3_.§-i§(_loc10_);
                                                                                                         continue loop33;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc17_ && b2PolygonShape))
                                                                                                         {
                                                                                                            §§goto(addr197);
                                                                                                         }
                                                                                                         §§goto(addr242);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            _loc16_ = §§pop();
                                                                                                            §§goto(addr297);
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr242);
                                                                                                      }
                                                                                                      addr297:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         break loop33;
                                                                                                         §§goto(addr289);
                                                                                                      }
                                                                                                      addr289:
                                                                                                   }
                                                                                                   while(!(_loc17_ && param2))
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc15_);
                                                                                                               while(!(_loc17_ && b2PolygonShape))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     if(_loc17_ && param1)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     §§goto(addr289);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     §§goto(addr249);
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                                  §§goto(addr204);
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                               addr269:
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         while(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            if(!(_loc18_ || param1))
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§goto(addr350);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                         addr335:
                                                                                                      }
                                                                                                      §§goto(addr289);
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                   if(_loc17_ && _loc3_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop37:
                                                                                                      do
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         §§push(_loc16_);
                                                                                                         if(_loc18_ || param2)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc7_);
                                                                                                         }
                                                                                                         §§pop().§@-§(§§pop());
                                                                                                         while(!_loc17_)
                                                                                                         {
                                                                                                            _loc8_++;
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  continue loop37;
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            §§goto(addr170);
                                                                                                         }
                                                                                                         §§goto(addr149);
                                                                                                      }
                                                                                                      while(false);
                                                                                                      
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr277);
                                                                                          }
                                                                                          §§goto(addr289);
                                                                                       }
                                                                                       while(!_loc17_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc13_);
                                                                                       }
                                                                                       §§goto(addr400);
                                                                                       addr321:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc17_ && b2PolygonShape)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr335);
                                                                                       §§push(§§pop() - §§pop());
                                                                                       §§goto(addr212);
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop8;
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
               §§goto(addr165);
            }
            §§goto(addr96);
         }
         if(_loc18_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc18_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!_loc17_)
            {
               addr428:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc17_ && param1))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr428);
      }
      
      b2internal static function §<Y§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         if(_loc27_ || param2)
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(_loc27_)
               {
                  if(_loc27_)
                  {
                     if(_loc27_)
                     {
                        _loc5_[param3] = _loc5_[0];
                        addr92:
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr106:
                     }
                     _loc4_++;
                  }
                  continue;
               }
               §§goto(addr92);
            }
            else
            {
               _loc5_[_loc4_] = param2[_loc4_];
            }
            §§goto(addr106);
         }
         var _loc6_:Number = Number.MAX_VALUE;
         if(_loc27_ || param3)
         {
            §§push(1);
            if(!_loc26_)
            {
               _loc4_ = §§pop();
               if(!(_loc26_ && param1))
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr1148:
               }
               §§goto(addr1151);
            }
            while(§§pop() <= param3)
            {
               _loc7_ = _loc5_[int(_loc4_ - 1)];
               if(!_loc26_)
               {
                  §§push(_loc5_[_loc4_].x - _loc7_.x);
                  loop3:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr944:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        addr945:
                        while(true)
                        {
                           §§push(_loc5_[_loc4_].y - _loc7_.y);
                           addr933:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr934:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                    addr921:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       addr922:
                                       while(!_loc26_)
                                       {
                                          §§push(_loc8_);
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             addr906:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                addr907:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr908:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      addr909:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr344);
               §§goto(addr1148);
            }
         }
         addr1151:
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc2_ || _loc3_)
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
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            super.Set(param1);
            if(!(_loc5_ && _loc3_))
            {
               §§goto(addr33);
            }
            §§goto(addr37);
         }
         addr33:
         if(param1 is b2PolygonShape)
         {
            addr37:
            _loc2_ = param1 as b2PolygonShape;
            if(_loc4_ || _loc3_)
            {
               this.§3§.SetV(_loc2_.§3§);
               loop0:
               while(true)
               {
                  this.§9X§ = _loc2_.§9X§;
                  loop1:
                  while(true)
                  {
                     this.§%_§(this.§9X§);
                     addr124:
                     while(true)
                     {
                        _loc3_ = 0;
                        if(_loc4_ || _loc2_)
                        {
                           if(_loc4_ || param1)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        if(_loc3_ < this.§9X§)
                        {
                           this.§9Z§[_loc3_].SetV(_loc2_.§9Z§[_loc3_]);
                           loop4:
                           while(true)
                           {
                              addr56:
                              while(true)
                              {
                                 this.§&b§[_loc3_].SetV(_loc2_.§&b§[_loc3_]);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr151);
                     }
                  }
               }
            }
            §§goto(addr124);
         }
         addr151:
      }
      
      public function §[U§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(_loc8_ || param2)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc8_)
         {
            this.§@c§(_loc3_,param2);
         }
      }
      
      public function §@c§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Vec2 = null;
         if(_loc8_ || _loc3_)
         {
            §§push(param2);
            if(!_loc7_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr221:
                     while(true)
                     {
                        param2 = §§pop();
                        addr222:
                        while(true)
                        {
                        }
                     }
                  }
                  addr218:
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  while(!_loc7_)
                  {
                     this.§9X§ = param2;
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           this.§%_§(param2);
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§goto(addr218);
                           }
                        }
                        loop8:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop9:
                           while(true)
                           {
                              §§push(this.§9X§);
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
                                          _loc3_ = §§pop();
                                          loop13:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(this.§9X§);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            break loop16;
                                                         }
                                                         §§push(_loc3_);
                                                         loop18:
                                                         for(; !(_loc7_ && _loc3_); if(_loc7_ && param1)
                                                         {
                                                            continue;
                                                         },§§push(1),if(_loc8_ || this)
                                                         {
                                                            if(!(_loc8_ || param2))
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc8_ || param1)
                                                            {
                                                               if(§§pop() < this.§9X§)
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     if(!(_loc8_ || param2))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§goto(addr89);
                                                                     }
                                                                     §§goto(addr101);
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               §§push(0);
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr107);
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                         },§§goto(addr93))
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc8_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            _loc4_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  addr89:
                                                                  §§push(1);
                                                                  if(_loc8_)
                                                                  {
                                                                     addr93:
                                                                     §§push(int(§§pop() + §§pop()));
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        addr107:
                                                                        §§push(int(§§pop()));
                                                                        if(_loc8_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop16;
                                                                        addr101:
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr295);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§9Z§[_loc3_].SetV(param1[_loc3_]);
                                    if(_loc8_)
                                    {
                                       _loc3_++;
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          continue loop8;
                                       }
                                    }
                                 }
                                 addr295:
                                 this.§3§ = §9H§(this.§9Z§,this.§9X§);
                                 return;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr222);
               }
            }
            §§goto(addr221);
         }
         §§goto(addr203);
      }
      
      public function §6[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§9X§ = 4;
         }
         loop0:
         while(true)
         {
            this.§%_§(4);
            loop1:
            while(true)
            {
               this.§9Z§[0].Set(-param1,-param2);
               loop2:
               while(true)
               {
                  this.§9Z§[1].Set(param1,-param2);
                  loop3:
                  while(true)
                  {
                     this.§9Z§[2].Set(param1,param2);
                     loop4:
                     do
                     {
                        this.§9Z§[3].Set(-param1,param2);
                        loop5:
                        while(!_loc3_)
                        {
                           this.§&b§[0].Set(0,-1);
                           loop6:
                           while(_loc4_)
                           {
                              this.§&b§[1].Set(1,0);
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop6;
                                 addr58:
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.§3§.§3a§();
                                    addr65:
                                    if(!(_loc3_ && param2))
                                    {
                                       continue loop4;
                                    }
                                    addr56:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          while(!_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop5;
                                          addr74:
                                       }
                                       §§goto(addr58);
                                       §§goto(addr65);
                                    }
                                 }
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(!(_loc4_ || this));
                     
                     return;
                  }
               }
            }
         }
      }
      
      public function §]-§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§9X§ = 4;
            loop0:
            while(true)
            {
               this.§%_§(4);
               while(true)
               {
                  this.§9Z§[0].Set(-param1,-param2);
                  addr143:
                  while(_loc7_)
                  {
                     this.§9Z§[1].Set(param1,-param2);
                     while(_loc7_)
                     {
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§9Z§[2].Set(param1,param2);
            while(true)
            {
               this.§9Z§[3].Set(-param1,param2);
               loop6:
               for(; !_loc8_; if(!(_loc7_ || param2))
               {
                  continue;
               },if(!_loc8_)
               {
                  this.§3§ = param3;
                  if(!(_loc8_ && param3))
                  {
                     if(_loc7_)
                     {
                        if(false)
                        {
                           §§goto(addr34);
                        }
                        var _loc5_:b2Transform;
                        (_loc5_ = new b2Transform()).position = param3;
                        if(_loc7_ || this)
                        {
                           _loc5_.R.Set(param4);
                        }
                        var _loc6_:int = 0;
                        addr176:
                        if(_loc6_ >= this.§9X§)
                        {
                           if(!_loc8_)
                           {
                              if(!(_loc7_ || param1))
                              {
                                 this.§&b§[_loc6_] = b2Math.§2!3§(_loc5_.R,this.§&b§[_loc6_]);
                                 _loc6_++;
                                 addr195:
                                 if(!(_loc8_ && param1))
                                 {
                                    §§goto(addr176);
                                 }
                                 addr216:
                                 §§goto(addr216);
                                 addr240:
                              }
                              return;
                           }
                           §§goto(addr195);
                        }
                        this.§9Z§[_loc6_] = b2Math.§@E§(_loc5_,this.§9Z§[_loc6_]);
                        §§goto(addr240);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr42);
               },§§goto(addr143))
               {
                  if(_loc7_)
                  {
                     this.§&b§[0].Set(0,-1);
                     while(true)
                     {
                        this.§&b§[1].Set(1,0);
                        addr71:
                        loop8:
                        while(_loc7_ || this)
                        {
                           this.§&b§[2].Set(0,1);
                           loop9:
                           while(true)
                           {
                              addr34:
                              while(true)
                              {
                                 this.§&b§[3].Set(-1,0);
                                 addr42:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop9;
                                 }
                                 continue loop6;
                              }
                              continue loop8;
                           }
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr130);
                  }
               }
            }
         }
      }
      
      public function §9%§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§9X§ = 2;
            while(true)
            {
               this.§%_§(2);
               loop1:
               while(true)
               {
                  this.§9Z§[0].SetV(param1);
                  while(true)
                  {
                     this.§9Z§[1].SetV(param2);
                     addr175:
                     while(!_loc4_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(_loc12_)
         {
            §§push(§§pop() - param1.position.x);
            if(!(_loc11_ && _loc3_))
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(_loc12_ || _loc3_)
            {
               §§push(§§pop() - param1.position.y);
               if(!(_loc11_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(_loc12_)
            {
               §§push(_loc4_.col1.x);
               if(!_loc11_)
               {
                  addr97:
                  §§push(§§pop() * §§pop());
                  if(!(_loc11_ && this))
                  {
                     §§push(_loc6_);
                     if(!(_loc11_ && param1))
                     {
                        §§push(§§pop() * _loc4_.col1.y);
                     }
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc5_);
                  if(_loc12_)
                  {
                     §§push(_loc4_.col2.x);
                     if(!(_loc11_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc12_ || param1)
                        {
                           §§push(_loc6_);
                           if(_loc12_ || this)
                           {
                              addr127:
                              §§push(§§pop() * _loc4_.col2.y);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc12_ || _loc3_)
                           {
                           }
                           §§goto(addr140);
                        }
                        addr140:
                        var _loc8_:* = §§pop();
                        var _loc9_:int = 0;
                        while(true)
                        {
                           if(_loc9_ >= this.§9X§)
                           {
                              return true;
                           }
                           _loc3_ = this.§9Z§[_loc9_];
                           if(_loc12_ || this)
                           {
                              §§push(_loc7_);
                              if(_loc12_ || param1)
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc11_ && param1))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc12_ || param2)
                                       {
                                          addr196:
                                          _loc5_ = §§pop();
                                          if(_loc12_ || param2)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc11_)
                                             {
                                                addr209:
                                                §§push(§§pop() - _loc3_.y);
                                                if(!(_loc11_ && param1))
                                                {
                                                   addr217:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr217);
                                          }
                                          addr219:
                                          _loc3_ = this.§&b§[_loc9_];
                                          if(!(_loc11_ && param1))
                                          {
                                             §§push(_loc3_.x);
                                             if(_loc12_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc12_)
                                                   {
                                                      §§push(_loc3_.y);
                                                      if(_loc12_)
                                                      {
                                                         addr246:
                                                         §§push(§§pop() * _loc6_);
                                                         if(_loc12_ || param1)
                                                         {
                                                            addr255:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               addr263:
                                                               §§push(Number(§§pop()));
                                                               if(_loc12_)
                                                               {
                                                                  addr266:
                                                                  §§push(§§pop());
                                                                  if(_loc12_ || _loc3_)
                                                                  {
                                                                     addr274:
                                                                     _loc10_ = §§pop();
                                                                     addr275:
                                                                     §§push(0);
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr303:
                                                                     _loc9_++;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr303);
                                       }
                                       _loc6_ = §§pop();
                                       §§goto(addr219);
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr209);
                              }
                           }
                           §§goto(addr196);
                        }
                        return false;
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr140);
               }
               §§push(§§pop() + §§pop());
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr97);
         }
         §§goto(addr41);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         §§push(0);
         if(!_loc21_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§7!A§);
         if(_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc20_)
         {
            §§push(param2.p1);
            if(_loc20_)
            {
               §§push(§§pop().x);
               if(!_loc21_)
               {
                  §§push(param3.position);
                  if(_loc20_ || param3)
                  {
                     §§push(§§pop().x);
                     if(!_loc21_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc21_ && param2))
                        {
                           §§push(Number(§§pop()));
                           if(_loc20_)
                           {
                              addr73:
                              _loc6_ = §§pop();
                              if(_loc20_)
                              {
                                 addr78:
                                 §§push(param2.p1.y);
                                 if(_loc20_)
                                 {
                                    addr84:
                                    addr83:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc21_ && param1)
                                    {
                                    }
                                    addr93:
                                    _loc7_ = §§pop();
                                    _loc8_ = param3.R;
                                    §§push(_loc6_);
                                    if(_loc20_ || param2)
                                    {
                                       §§push(_loc8_.col1.x);
                                       if(!_loc21_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc20_ || param3)
                                          {
                                             addr119:
                                             §§push(_loc7_);
                                             if(_loc20_)
                                             {
                                                addr122:
                                                §§push(§§pop() * _loc8_.col1.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc20_)
                                             {
                                                addr129:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(_loc6_);
                                             if(_loc20_ || this)
                                             {
                                                §§push(_loc8_.col2.x);
                                                if(_loc20_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc20_)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!_loc21_)
                                                      {
                                                         addr155:
                                                         §§push(§§pop() * _loc8_.col2.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc21_ && param2))
                                                      {
                                                         addr167:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      if(_loc20_ || param1)
                                                      {
                                                         §§push(param2.p2);
                                                         if(_loc20_ || this)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(param3.position);
                                                               if(!(_loc21_ && param1))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc21_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc21_ && param3))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc20_ || param3)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!(_loc21_ && param3))
                                                                           {
                                                                              addr226:
                                                                              §§push(param2.p2.y);
                                                                              if(_loc20_ || param3)
                                                                              {
                                                                                 addr234:
                                                                                 §§push(§§pop() - param3.position.y);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    addr240:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              addr242:
                                                                              _loc8_ = param3.R;
                                                                              §§push(_loc6_);
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 §§push(_loc8_.col1.x);
                                                                                 if(!(_loc21_ && param3))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc20_ || param3)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!(_loc21_ && param3))
                                                                                       {
                                                                                          addr284:
                                                                                          §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                                                                          if(_loc20_ || param3)
                                                                                          {
                                                                                             addr292:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr284);
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc6_);
                                                                                    if(!(_loc21_ && param1))
                                                                                    {
                                                                                       §§push(_loc8_.col2.x);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr313:
                                                                                                §§push(§§pop() * _loc8_.col2.y);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                             }
                                                                                             addr321:
                                                                                             var _loc13_:* = §§pop();
                                                                                             §§push(_loc12_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() - _loc10_);
                                                                                                if(_loc20_ || param3)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc21_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() - _loc11_);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc15_:* = §§pop();
                                                                                             var _loc16_:* = -1;
                                                                                             var _loc17_:int = 0;
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc17_);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   §§push(this.§9X§);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         §§goto(addr817);
                                                                                                      }
                                                                                                      §§push((_loc9_ = this.§9Z§[_loc17_]).x);
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(!(_loc21_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc21_ && param2))
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        addr393:
                                                                                                                        §§push(§§pop() - _loc11_);
                                                                                                                        if(_loc20_ || param2)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr402:
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        §§push((_loc9_ = this.§&b§[_loc17_]).x);
                                                                                                                        if(!(_loc21_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc20_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc20_ || param3)
                                                                                                                                             {
                                                                                                                                                addr450:
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.x);
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      loop49:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_.y);
                                                                                                                                                            loop38:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               addr779:
                                                                                                                                                               loop47:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  loop44:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc20_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr789:
                                                                                                                                                                           loop32:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              addr790:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc19_ = §§pop();
                                                                                                                                                                                 continue loop32;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr788:
                                                                                                                                                                     }
                                                                                                                                                                     loop4:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        loop39:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() != §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                              loop5:
                                                                                                                                                                              while(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 loop6:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                    loop7:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       loop8:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop13:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop14:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop25:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                            loop26:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                               addr737:
                                                                                                                                                                                                               while(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  continue loop26;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop5;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr736:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                                                                            loop21:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                                                                               loop36:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc20_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr484:
                                                                                                                                                                                                                        loop22:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr488:
                                                                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr629:
                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr497:
                                                                                                                                                                                                                                    if(!(_loc21_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr794:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                          addr795:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr797:
                                                                                                                                                                                                                                                return false;
                                                                                                                                                                                                                                                addr796:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr742:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                                                                       §§goto(addr497);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr700:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 loop19:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                    addr630:
                                                                                                                                                                                                                                    while(_loc20_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                          while(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                addr645:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                                                                                                                   addr646:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop22;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr488);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             break loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr640:
                                                                                                                                                                                                                                          addr651:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc20_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr717:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(_loc20_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop6;
                                                                                                                                                                                                                                 addr629:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr640);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr645);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop2:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                           if(!(_loc21_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc21_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr526:
                                                                                                                                                                                                                                    §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc21_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop38;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                                                                   if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop8;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr669:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc21_ && this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop14;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr588:
                                                                                                                                                                                                                                                                  if(!(_loc21_ && param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        addr596:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                           if(_loc20_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_ && param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop49;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc21_ && this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr629);
                                                                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr646);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr484);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(_loc20_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                             while(_loc20_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr700);
                                                                                                                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr796);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr752:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr797);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr736);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr605:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc20_ || this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr709:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr717);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr588);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr595:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr789);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr737);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr629);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr615);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                                                                   for(; _loc20_ || param2; while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc17_++;
                                                                                                                                                                                                                                                      if(_loc21_ && param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc21_ && param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop36;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop2;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr484);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr677);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   })
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr742);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr646);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr454);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr596);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr605);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr630);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr790);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr795);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr526);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr484:
                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                        addr506:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr793:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr793:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr794);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr760);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr651);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr752);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr793);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr788);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr789);
                                                                                                                                                }
                                                                                                                                                §§goto(addr793);
                                                                                                                                             }
                                                                                                                                             §§goto(addr595);
                                                                                                                                          }
                                                                                                                                          §§goto(addr506);
                                                                                                                                       }
                                                                                                                                       §§goto(addr708);
                                                                                                                                    }
                                                                                                                                    §§goto(addr779);
                                                                                                                                 }
                                                                                                                                 §§goto(addr596);
                                                                                                                              }
                                                                                                                              §§goto(addr450);
                                                                                                                           }
                                                                                                                           §§goto(addr795);
                                                                                                                        }
                                                                                                                        §§goto(addr644);
                                                                                                                     }
                                                                                                                     §§goto(addr402);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr402);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                   §§goto(addr811);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             addr811:
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                return false;
                                                                                             }
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                param1.fraction = _loc4_;
                                                                                             }
                                                                                             addr817:
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                break loop0;
                                                                                             }
                                                                                             _loc8_ = param3.R;
                                                                                             _loc9_ = this.§&b§[_loc16_];
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(param1.normal);
                                                                                                loop53:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   addr927:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(!(_loc21_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc9_.x);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         addr937:
                                                                                                      }
                                                                                                      addr938:
                                                                                                      loop56:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         addr950:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr951:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_.y);
                                                                                                               addr953:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr954:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     continue loop53;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop56;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             return true;
                                                                                             §§push(0);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr284);
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr119);
                                 }
                              }
                              §§goto(addr93);
                           }
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr83);
               }
               §§goto(addr73);
            }
            §§goto(addr78);
         }
         §§goto(addr84);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§9Z§[0];
         §§push(param2.position.x);
         if(!_loc13_)
         {
            §§push(_loc3_.col1.x);
            if(_loc12_ || param2)
            {
               §§push(_loc4_.x);
               if(_loc12_ || param2)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc13_ && this))
                  {
                     addr62:
                     §§push(_loc3_.col2.x);
                     if(!_loc13_)
                     {
                        addr70:
                        §§push(§§pop() + §§pop() * _loc4_.y);
                     }
                     §§goto(addr70);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc13_)
                  {
                     addr75:
                     var _loc5_:* = Number(§§pop());
                     §§push(param2.position.y);
                     if(_loc12_ || param2)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc12_)
                        {
                           §§push(_loc4_.x);
                           if(!_loc13_)
                           {
                              addr112:
                              §§push(§§pop() * §§pop());
                              if(!_loc13_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!(_loc13_ && param1))
                                 {
                                    §§push(§§pop() * _loc4_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc13_ && param2))
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc5_);
                              if(_loc12_ || this)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              loop0:
                              while(_loc9_ < this.§9X§)
                              {
                                 _loc4_ = this.§9Z§[_loc9_];
                                 if(!_loc13_)
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc12_)
                                             {
                                                §§push(_loc4_.x);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr466:
                                                   if(!(_loc12_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   loop19:
                                                   while(_loc12_)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      if(_loc12_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc12_)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               §§push(_loc4_.y);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              addr494:
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc13_ && param2))
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   if(!(_loc12_ || param1))
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr422:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr423:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                         }
                                                                                                      }
                                                                                                      addr221:
                                                                                                      if(_loc13_ && _loc3_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            if(!(_loc12_ || param1))
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            loop44:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  loop41:
                                                                                                                  while(_loc12_)
                                                                                                                  {
                                                                                                                     if(_loc12_ || param2)
                                                                                                                     {
                                                                                                                        _loc9_++;
                                                                                                                        if(_loc13_ && this)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           break loop40;
                                                                                                                        }
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(!(_loc13_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc12_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && this))
                                                                                                                                 {
                                                                                                                                    §§goto(addr221);
                                                                                                                                 }
                                                                                                                                 loop30:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    addr379:
                                                                                                                                    addr424:
                                                                                                                                    while(_loc12_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       while(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          continue loop21;
                                                                                                                                          if(_loc13_ && this)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             continue loop21;
                                                                                                                                          }
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                addr188:
                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                if(_loc13_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   loop34:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(!(_loc13_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!(_loc13_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr317:
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        addr328:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr329:
                                                                                                                                                                           addr365:
                                                                                                                                                                           while(!(_loc13_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                              break loop41;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc13_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr377:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop30;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr377:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr328:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr414:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc12_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              break loop34;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        addr414:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr422);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr377);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr329);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr317);
                                                                                                                                                         }
                                                                                                                                                         break loop41;
                                                                                                                                                      }
                                                                                                                                                      addr323:
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      while(!_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr328);
                                                                                                                                                         }
                                                                                                                                                         while(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr377);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr515:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc10_ = §§pop();
                                                                                                                                                               continue loop1;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break loop42;
                                                                                                                                                      §§goto(addr328);
                                                                                                                                                      §§goto(addr188);
                                                                                                                                                   }
                                                                                                                                                   continue loop18;
                                                                                                                                                   addr288:
                                                                                                                                                }
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop42;
                                                                                                                                                   }
                                                                                                                                                   addr254:
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      addr244:
                                                                                                                                                      while(!(_loc13_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!_loc12_)
                                                                                                                                                         {
                                                                                                                                                            continue loop40;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.col1);
                                                                                                                                                         if(_loc13_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         if(!(_loc12_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc4_.x);
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            continue loop15;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr466);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.y);
                                                                                                                                                               addr511:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr512:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     addr513:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr514);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr509:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr244);
                                                                                                                                                      }
                                                                                                                                                      addr244:
                                                                                                                                                      continue loop3;
                                                                                                                                                      addr443:
                                                                                                                                                   }
                                                                                                                                                   while(_loc12_ || param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop44;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr515);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(!(_loc13_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr365);
                                                                                                                                                         }
                                                                                                                                                         continue loop20;
                                                                                                                                                         addr354:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr374);
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      §§goto(addr377);
                                                                                                                                                   }
                                                                                                                                                   continue loop22;
                                                                                                                                                   addr351:
                                                                                                                                                }
                                                                                                                                                §§goto(addr514);
                                                                                                                                             }
                                                                                                                                             §§goto(addr513);
                                                                                                                                          }
                                                                                                                                          while(!_loc13_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr351);
                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                          }
                                                                                                                                          continue loop19;
                                                                                                                                          addr348:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr348);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(_loc12_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr347);
                                                                                                                                       §§push(_loc6_);
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr323);
                                                                                                                           }
                                                                                                                           §§goto(addr244);
                                                                                                                        }
                                                                                                                        §§goto(addr423);
                                                                                                                     }
                                                                                                                     §§goto(addr379);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc12_ || param2)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(!(_loc13_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 §§goto(addr174);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr254);
                                                                                                                        }
                                                                                                                        §§goto(addr329);
                                                                                                                        addr163:
                                                                                                                     }
                                                                                                                     §§goto(addr354);
                                                                                                                  }
                                                                                                               }
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr163);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr326);
                                                                                                      }
                                                                                                      §§goto(addr244);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                             §§goto(addr424);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr422);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr490:
                                                               }
                                                               §§goto(addr511);
                                                            }
                                                            §§goto(addr512);
                                                         }
                                                         §§goto(addr490);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr508:
                                                      }
                                                      §§goto(addr509);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr508);
                                                   }
                                                   addr506:
                                                }
                                             }
                                             §§goto(addr506);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr494);
                              }
                              if(_loc12_ || param1)
                              {
                                 §§push(param1.§!!C§);
                                 if(!_loc13_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() - b2internal::@s);
                                       if(!(_loc13_ && this))
                                       {
                                          §§pop().x = §§pop();
                                          if(_loc12_ || this)
                                          {
                                             addr583:
                                             §§push(param1.§!!C§);
                                             §§push(_loc6_);
                                             if(!(_loc13_ && this))
                                             {
                                                addr603:
                                                §§pop().y = §§pop() - b2internal::@s;
                                                while(true)
                                                {
                                                   §§push(param1.§<0§);
                                                   addr576:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr577:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop() + b2internal::@s;
                                                      }
                                                   }
                                                }
                                                addr604:
                                             }
                                             §§goto(addr603);
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§<0§);
                                             if(!_loc13_)
                                             {
                                                §§push(_loc8_);
                                                if(!_loc13_)
                                                {
                                                   §§pop().y = §§pop() + b2internal::@s;
                                                   if(_loc13_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr604);
                                                }
                                                §§goto(addr577);
                                             }
                                             §§goto(addr576);
                                          }
                                          return;
                                          addr572:
                                       }
                                    }
                                    §§goto(addr603);
                                 }
                                 §§goto(addr583);
                              }
                              §§goto(addr572);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr75);
               }
               §§goto(addr70);
            }
            §§goto(addr62);
         }
         §§goto(addr75);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
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
         if(!_loc28_)
         {
            if(this.§9X§ == 2)
            {
               loop133:
               while(true)
               {
                  §§push(param1.center);
                  loop134:
                  while(true)
                  {
                     §§push(0.5);
                     loop135:
                     while(true)
                     {
                        §§push(§§pop() * (this.§9Z§[0].x + this.§9Z§[1].x));
                        loop136:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           while(true)
                           {
                              §§push(param1.center);
                              if(_loc27_ || _loc3_)
                              {
                                 §§push(0.5);
                                 if(!_loc28_)
                                 {
                                    §§push(§§pop() * (this.§9Z§[0].y + this.§9Z§[1].y));
                                 }
                                 if(_loc27_)
                                 {
                                    if(_loc27_ || this)
                                    {
                                       §§pop().y = §§pop();
                                       if(_loc27_)
                                       {
                                          param1.§6O§ = 0;
                                          do
                                          {
                                             param1.§`$§ = 0;
                                          }
                                          while(_loc28_ && _loc3_);
                                          
                                          if(!_loc28_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop133;
                                    }
                                    continue loop135;
                                 }
                                 continue loop136;
                              }
                              continue loop134;
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(0);
               if(!(_loc28_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(_loc27_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(_loc27_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(1 / 3);
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§9X§)
               {
                  _loc11_ = this.§9Z§[_loc10_];
                  if(_loc27_ || param2)
                  {
                     _loc12_ = _loc10_ + 1 < this.§9X§ ? this.§9Z§[int(_loc10_ + 1)] : this.§9Z§[0];
                     if(!(_loc28_ && param1))
                     {
                        §§push(_loc11_.x);
                        if(!_loc28_)
                        {
                           §§push(_loc7_);
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              addr1136:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           addr1135:
                        }
                        loop3:
                        while(true)
                        {
                           _loc13_ = §§pop();
                           while(true)
                           {
                              §§push(_loc11_.y);
                              loop5:
                              while(true)
                              {
                                 §§push(_loc8_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc14_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc12_.x);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop13:
                                                      while(true)
                                                      {
                                                         _loc15_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc12_.y);
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               addr1103:
                                                               addr879:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  continue loop5;
                                                               }
                                                               if(_loc28_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               loop79:
                                                               while(true)
                                                               {
                                                                  _loc24_ = §§pop();
                                                                  addr888:
                                                                  loop80:
                                                                  while(!(_loc28_ && this))
                                                                  {
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        loop81:
                                                                        for(; !_loc28_; if(!(_loc27_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        },if(!(_loc28_ && param2))
                                                                        {
                                                                           §§push(_loc17_);
                                                                           if(!_loc28_)
                                                                           {
                                                                              if(!(_loc28_ && _loc3_))
                                                                              {
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(_loc25_);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          if(!(_loc28_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc26_);
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   if(!(_loc28_ && param1))
                                                                                                   {
                                                                                                      addr343:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr348:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc28_ && _loc3_))
                                                                                                            {
                                                                                                               §§goto(addr355);
                                                                                                            }
                                                                                                            §§goto(addr1004);
                                                                                                         }
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                      §§goto(addr663);
                                                                                                   }
                                                                                                   §§goto(addr793);
                                                                                                }
                                                                                                §§goto(addr562);
                                                                                             }
                                                                                             §§goto(addr585);
                                                                                          }
                                                                                          §§goto(addr1050);
                                                                                       }
                                                                                       §§goto(addr538);
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 §§goto(addr1135);
                                                                              }
                                                                              §§goto(addr671);
                                                                           }
                                                                           §§goto(addr348);
                                                                        },§§goto(addr1088))
                                                                        {
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(0.25);
                                                                              loop82:
                                                                              for(; _loc27_; if(_loc28_ && this)
                                                                              {
                                                                                 continue;
                                                                              },§§goto(addr538),§§push(_loc20_))
                                                                              {
                                                                                 §§push(_loc21_);
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    §§push(_loc21_);
                                                                                    if(!(_loc28_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc28_ && param2))
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(_loc21_);
                                                                                             loop83:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop84:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr766:
                                                                                                   loop119:
                                                                                                   while(!(_loc28_ && this))
                                                                                                   {
                                                                                                      §§push(_loc23_);
                                                                                                      loop120:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc23_);
                                                                                                         loop121:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr776:
                                                                                                            loop85:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc28_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc19_);
                                                                                                                  }
                                                                                                                  addr785:
                                                                                                               }
                                                                                                               loop87:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc21_);
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     loop117:
                                                                                                                     while(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        loop118:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc19_);
                                                                                                                           addr793:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc23_);
                                                                                                                              loop89:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop90:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    loop91:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc28_ && param1))
                                                                                                                                       {
                                                                                                                                          if(!(_loc28_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop92:
                                                                                                                                             while(!(_loc28_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr819:
                                                                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr826:
                                                                                                                                                   if(!(_loc28_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr834:
                                                                                                                                                      §§push(0.5);
                                                                                                                                                      loop93:
                                                                                                                                                      for(; !(_loc28_ && param1); while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc27_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue loop93;
                                                                                                                                                         }
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc27_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr690);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr705);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1093);
                                                                                                                                                      },continue loop79)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         loop94:
                                                                                                                                                         while(!(_loc28_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            loop95:
                                                                                                                                                            for(; _loc27_; if(!(_loc28_ && param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop82;
                                                                                                                                                            })
                                                                                                                                                            {
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  loop96:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     loop97:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc27_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop98:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc25_ = §§pop();
                                                                                                                                                                                    loop99:
                                                                                                                                                                                    while(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                       loop100:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.25);
                                                                                                                                                                                             if(_loc28_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop93;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc28_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop96;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc28_ && _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop118;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                   if(!(_loc28_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop120;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc24_);
                                                                                                                                                                                                            if(_loc27_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop83;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc27_ || this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop89;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc27_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr477:
                                                                                                                                                                                                                     §§push(_loc24_);
                                                                                                                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr485:
                                                                                                                                                                                                                        if(!(_loc28_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc24_);
                                                                                                                                                                                                                           if(_loc27_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop83;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr585:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 while(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      while(!(_loc28_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop107:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc26_ = §§pop();
                                                                                                                                                                                                                                                                        loop108:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr719:
                                                                                                                                                                                                                                                                              if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                 addr286:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop81;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop100;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr372:
                                                                                                                                                                                                                                                                                 addr992:
                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr375:
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop92;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr379:
                                                                                                                                                                                                                                                                                    if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr386:
                                                                                                                                                                                                                                                                                       if(_loc27_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr393:
                                                                                                                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop108;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1054:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             break loop97;
                                                                                                                                                                                                                                                                                             §§goto(addr393);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             break loop107;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          §§goto(addr386);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                                                                       addr964:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    loop71:
                                                                                                                                                                                                                                                                                    while(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                break loop80;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                addr1070:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                                                                                                                   if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                                                                      break loop93;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break loop97;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1069:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          §§goto(addr819);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             break loop71;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          §§goto(addr919);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr919:
                                                                                                                                                                                                                                                                                       while(!_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                             addr1098:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                                                                                                                addr1073:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                                                                                                                   addr1074:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      addr1075:
                                                                                                                                                                                                                                                                                                      while(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         loop32:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                                                                                                                                                                            addr1081:
                                                                                                                                                                                                                                                                                                            while(!_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                  addr1060:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     addr1061:
                                                                                                                                                                                                                                                                                                                     while(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr1069);
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop8;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr690:
                                                                                                                                                                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop32;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr826);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop10;
                                                                                                                                                                                                                                                                                       §§goto(addr379);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(!_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                          break loop108;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1073);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr953:
                                                                                                                                                                                                                                                                                       if(_loc27_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr934);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr961:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                             addr1087:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                addr1088:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                                                                   addr1089:
                                                                                                                                                                                                                                                                                                   while(!_loc28_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         addr1093:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop6;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr953);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1086:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1094);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(_loc27_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                       break loop99;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1136);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(_loc27_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1004);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1003:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1004);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop107;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop99;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr916);
                                                                                                                                                                                                                                                                           §§goto(addr719);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1075);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop98;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(!(_loc28_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                                                                                                                               §§goto(addr980);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop12;
                                                                                                                                                                                                                                                            addr705:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(0.5);
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                               if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr647:
                                                                                                                                                                                                                                                                  while(!(_loc28_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     while(_loc27_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                                                                        while(_loc27_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           continue loop93;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc11_.y);
                                                                                                                                                                                                                                                                           addr1009:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              addr1010:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc12_.y);
                                                                                                                                                                                                                                                                                 addr1012:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    break loop119;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr663);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr663:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1007);
                                                                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1103);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc11_.x);
                                                                                                                                                                                                                                                                     addr1046:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        break loop94;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr647);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr647:
                                                                                                                                                                                                                                                                  addr1044:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr663);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr785);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr655);
                                                                                                                                                                                                                                                         §§goto(addr1004);
                                                                                                                                                                                                                                                         if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(_loc27_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr372);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr375);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1044);
                                                                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1074);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop97;
                                                                                                                                                                                                                                                      addr614:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop87;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop91;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop94;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr602:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr647);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1009);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop90;
                                                                                                                                                                                                                                 addr585:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop121;
                                                                                                                                                                                                                              addr576:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop121;
                                                                                                                                                                                                                           addr577:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1046);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr562:
                                                                                                                                                                                                                        while(_loc27_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc28_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop84;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr576);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop85;
                                                                                                                                                                                                                        addr562:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr577);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr647);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr485);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr510:
                                                                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop95;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr602);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr614);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1012);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1010);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr477);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr562);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1003);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1089);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr875);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop82;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr964);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr869:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1112:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1113);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr869);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                        §§goto(addr1056);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1087);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               addr1017:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1018);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_.x);
                                                                                                                                                            break loop117;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1041);
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1047);
                                                                                                                                                         §§goto(addr834);
                                                                                                                                                      }
                                                                                                                                                      addr834:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1097);
                                                                                                                                                }
                                                                                                                                                §§goto(addr919);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                break loop81;
                                                                                                                                                §§goto(addr812);
                                                                                                                                             }
                                                                                                                                             addr812:
                                                                                                                                             addr900:
                                                                                                                                          }
                                                                                                                                          while(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1054);
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr1060);
                                                                                                                                          addr1051:
                                                                                                                                       }
                                                                                                                                       §§goto(addr834);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        addr1050:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr1051);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr789:
                                                                                                                  }
                                                                                                                  §§goto(addr793);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(!_loc28_)
                                                                                                   {
                                                                                                      §§goto(addr1016);
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§goto(addr1092);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr776);
                                                                                       }
                                                                                       §§goto(addr842);
                                                                                    }
                                                                                    §§goto(addr789);
                                                                                 }
                                                                                 §§goto(addr766);
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§goto(addr1017);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc23_ = §§pop();
                                                                           §§goto(addr902);
                                                                        }
                                                                     }
                                                                     §§goto(addr961);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§goto(addr900);
                                                                        §§push(_loc15_);
                                                                     }
                                                                     break;
                                                                     §§goto(addr888);
                                                                  }
                                                                  §§goto(addr1098);
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
                     §§goto(addr913);
                  }
                  §§goto(addr225);
               }
               if(_loc27_ || param2)
               {
                  §§push(param1);
                  §§push(param2);
                  if(!_loc28_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§6O§ = §§pop();
                  if(_loc27_)
                  {
                     §§push(_loc3_);
                     loop122:
                     while(true)
                     {
                        §§push(1);
                        loop123:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop124:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop125:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop126:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop127:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr1278:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc27_ || param2)
                                          {
                                             if(!(_loc27_ || param2))
                                             {
                                                break;
                                             }
                                             §§push(1);
                                             if(_loc27_ || this)
                                             {
                                                §§push(_loc5_);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!(_loc28_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc28_ && param2))
                                                      {
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            continue loop122;
                                                         }
                                                         continue loop127;
                                                      }
                                                      continue loop122;
                                                   }
                                                   continue loop125;
                                                }
                                                continue loop124;
                                             }
                                             continue loop123;
                                          }
                                          continue loop122;
                                       }
                                       continue loop126;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     param1.center.Set(_loc3_,_loc4_);
                     §§goto(addr1191);
                  }
               }
               §§goto(addr1198);
            }
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1036
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §%d§() : int
      {
         return this.§9X§;
      }
      
      public function §;D§() : Vector.<b2Vec2>
      {
         return this.§9Z§;
      }
      
      public function §1!?§() : Vector.<b2Vec2>
      {
         return this.§&b§;
      }
      
      public function §[[§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§9Z§[0].x * param1.x);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() + this.§9Z§[0].y * param1.y);
            if(!_loc6_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc6_ && _loc2_))
               {
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop() >= this.§9X§)
                     {
                        if(_loc6_ && this)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           addr91:
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              break;
                           }
                           loop10:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr179:
                              addr122:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_ || param1)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr115:
                                             §§push(Number(§§pop()));
                                             if(!(_loc6_ && this))
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr160:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                      }
                                                      addr174:
                                                   }
                                                }
                                             }
                                             addr159:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§9Z§[_loc4_].y * param1.y);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§goto(addr159);
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             addr143:
                                          }
                                          while(true)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                addr96:
                                                _loc4_++;
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                addr177:
                                                while(true)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr115);
                              }
                              _loc3_ = §§pop();
                           }
                        }
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(_loc6_ && _loc3_)
                              {
                                 §§goto(addr176);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr179);
                           §§goto(addr122);
                        }
                     }
                     else
                     {
                        §§push(this.§9Z§[_loc4_].x * param1.x);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr177);
               }
               §§goto(addr91);
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function § !<§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§9Z§[0].x * param1.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + this.§9Z§[0].y * param1.y);
            if(!(_loc7_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() >= this.§9X§)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     loop5:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc6_ || _loc2_)
                        {
                           if(!_loc7_)
                           {
                              addr111:
                              §§push(Number(§§pop()));
                              if(_loc6_ || param1)
                              {
                                 _loc3_ = §§pop();
                                 while(!_loc6_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          addr173:
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop5;
                                          }
                                          addr173:
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                                 addr119:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr168:
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             _loc4_++;
                                             addr96:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   break loop3;
                                                }
                                                §§goto(addr119);
                                             }
                                             §§goto(addr119);
                                          }
                                          continue loop0;
                                          addr94:
                                       }
                                       §§goto(addr169);
                                    }
                                 }
                                 addr167:
                              }
                              §§goto(addr94);
                           }
                           else
                           {
                              addr153:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr167);
                                 }
                              }
                              addr153:
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr96);
               }
               else
               {
                  §§push(this.§9Z§[_loc4_].x * param1.x);
                  if(!_loc7_)
                  {
                     §§push(this.§9Z§[_loc4_].y * param1.y);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc6_)
                        {
                           §§goto(addr153);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr168);
                  }
               }
               §§goto(addr153);
            }
            §§goto(addr173);
         }
         return this.§9Z§[_loc2_];
      }
      
      private function §!W§() : Boolean
      {
         return false;
      }
      
      private function §%_§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§9Z§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!(_loc4_ && param1))
               {
                  break;
               }
               do
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
               }
               while(_loc4_);
               
               continue;
               addr48:
            }
            else
            {
               this.§9Z§[_loc2_] = new b2Vec2();
            }
            while(true)
            {
               this.§&b§[_loc2_] = new b2Vec2();
               while(true)
               {
                  _loc2_++;
                  §§goto(addr48);
               }
            }
         }
      }
   }
}
