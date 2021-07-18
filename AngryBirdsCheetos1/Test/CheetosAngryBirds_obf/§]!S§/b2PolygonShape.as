package §]!S§
{
   import § o§.*;
   import §"0§.*;
   import §-r§.*;
   import §6!H§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §5!F§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2PolygonShape)
         {
            §5!F§ = new b2Mat22();
         }
      }
      
      b2internal var §<!@§:b2Vec2;
      
      b2internal var §#1§:Vector.<b2Vec2>;
      
      b2internal var §07§:Vector.<b2Vec2>;
      
      b2internal var §0S§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            while(true)
            {
               §#!&§ = b2internal::"![;
               while(_loc1_ || this)
               {
                  this.§<!@§ = new b2Vec2();
                  while(true)
                  {
                     this.§#1§ = new Vector.<b2Vec2>();
                     §§goto(addr94);
                  }
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr78);
               }
            }
         }
         addr94:
         loop3:
         while(true)
         {
            this.§07§ = new Vector.<b2Vec2>();
            while(true)
            {
               §#&§ = b2Settings.b2_polygonRadius;
               continue loop3;
               addr39:
               if(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     break loop3;
                  }
                  continue loop2;
               }
            }
         }
      }
      
      public static function §5![§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§<G§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §#[§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || _loc3_)
         {
            _loc3_.§+p§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §<$§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || _loc3_)
         {
            _loc3_.§[u§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §?!S§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§?M§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §[E§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§4D§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §8!%§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(!(_loc18_ && b2PolygonShape))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc18_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(_loc17_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!_loc18_)
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc6_);
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
                                             _loc12_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
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
                                                            _loc13_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc10_.y);
                                                               loop16:
                                                               while(!(_loc18_ && param2))
                                                               {
                                                                  §§push(_loc6_);
                                                                  while(!_loc18_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr357:
                                                                        while(!_loc18_)
                                                                        {
                                                                           if(_loc18_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(_loc18_ && b2PolygonShape)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(!_loc17_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           _loc14_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc14_);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(_loc17_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc17_ || _loc3_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr320:
                                                                                 addr320:
                                                                                 while(_loc17_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc13_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr325:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr208:
                                                                                 continue loop12;
                                                                                 if(_loc17_ || param1)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     if(_loc18_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           if(_loc18_ && _loc3_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc18_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§goto(addr283);
                                                                           §§push(Number(§§pop()));
                                                                           continue loop16;
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           if(_loc18_ && b2PolygonShape)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§push(_loc4_);
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(_loc16_);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr233:
                                                                                       if(!(_loc18_ && param1))
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          _loc4_ = §§pop();
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_.§!!,§(new b2Vec2(_loc5_,_loc6_));
                                                                                             while(!_loc18_)
                                                                                             {
                                                                                                _loc3_.§!!,§(_loc9_);
                                                                                                while(_loc17_)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      _loc3_.§!!,§(_loc10_);
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   §§goto(addr371);
                                                                                                   loop33:
                                                                                                   for(; !(_loc18_ && param1); _loc8_++,if(_loc17_ || param1)
                                                                                                   {
                                                                                                      addr127:
                                                                                                      if(_loc17_ || param2)
                                                                                                      {
                                                                                                         while(false)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               §§push(_loc16_);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc7_);
                                                                                                               }
                                                                                                               §§pop().§[!T§(§§pop());
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                         addr134:
                                                                                                      }
                                                                                                      continue loop28;
                                                                                                   })
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr334);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr204:
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    §§goto(addr246);
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                              §§goto(addr254);
                                                                           }
                                                                           §§goto(addr204);
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                  }
                                                                  continue loop7;
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
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr134);
            }
            §§goto(addr100);
         }
         if(_loc17_ || b2PolygonShape)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc18_ && param1))
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!(_loc18_ && param1))
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc18_ && param1))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
         }
         return _loc3_;
      }
      
      b2internal static function §"!+§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc4_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
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
         if(!_loc27_)
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(_loc26_)
               {
                  _loc5_[param3] = _loc5_[0];
               }
               if(_loc26_)
               {
                  if(!_loc27_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     addr100:
                  }
                  _loc4_++;
               }
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr100);
         }
         var _loc6_:Number = Number.MAX_VALUE;
         if(!(_loc27_ && param1))
         {
            §§push(1);
            if(!_loc27_)
            {
               _loc4_ = §§pop();
               if(_loc26_)
               {
                  addr121:
                  loop97:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1178:
                     while(§§pop() <= param3)
                     {
                        _loc7_ = _loc5_[int(_loc4_ - 1)];
                        if(!_loc27_)
                        {
                           §§push(_loc5_[_loc4_].x - _loc7_.x);
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr958:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 addr959:
                                 while(true)
                                 {
                                    §§push(_loc5_[_loc4_].y - _loc7_.y);
                                    addr947:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr948:
                                       while(true)
                                       {
                                          _loc9_ = §§pop();
                                       }
                                       addr603:
                                       if(!(_loc27_ && b2PolygonShape))
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr949);
                        continue loop97;
                     }
                  }
               }
               return;
            }
            §§goto(addr1178);
         }
         §§goto(addr121);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(!_loc2_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            super.Set(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr34);
            }
            §§goto(addr38);
         }
         addr34:
         if(param1 is b2PolygonShape)
         {
            addr38:
            _loc2_ = param1 as b2PolygonShape;
            if(_loc5_)
            {
               this.§<!@§.SetV(_loc2_.§<!@§);
            }
            do
            {
               this.§0S§ = _loc2_.§0S§;
               do
               {
                  this.§3!C§(this.§0S§);
                  do
                  {
                     _loc3_ = 0;
                  }
                  while(_loc4_);
                  
               }
               while(!_loc5_);
               
            }
            while(!(_loc5_ || _loc3_));
            
            loop3:
            while(true)
            {
               if(_loc3_ < this.§0S§)
               {
                  this.§#1§[_loc3_].SetV(_loc2_.§#1§[_loc3_]);
                  if(_loc5_ || this)
                  {
                     while(true)
                     {
                        this.§07§[_loc3_].SetV(_loc2_.§07§[_loc3_]);
                        if(_loc4_)
                        {
                           break;
                        }
                        _loc3_++;
                        if(!(_loc5_ || this))
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      public function §<G§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(_loc7_ || _loc3_)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc7_ || this)
         {
            this.§+p§(_loc3_,param2);
         }
      }
      
      public function §+p§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Vec2 = null;
         if(_loc7_ || param2)
         {
            §§push(param2);
            if(!_loc8_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc8_ && param1))
                  {
                     addr215:
                     param2 = param1.length;
                  }
                  while(true)
                  {
                  }
                  addr216:
               }
               loop1:
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  while(true)
                  {
                     this.§0S§ = param2;
                     loop3:
                     while(_loc7_)
                     {
                        if(_loc7_)
                        {
                           this.§3!C§(param2);
                           while(true)
                           {
                              _loc3_ = 0;
                              if(_loc7_)
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                           }
                           while(true)
                           {
                              §§push(_loc3_);
                              while(true)
                              {
                                 §§push(this.§0S§);
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop9:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(this.§0S§);
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  break loop9;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc3_);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  addr125:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     addr126:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr113);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          this.§<!@§ = §8!%§(this.§#1§,this.§0S§);
                                          §§goto(addr113);
                                       }
                                    }
                                    else
                                    {
                                       this.§#1§[_loc3_].SetV(param1[_loc3_]);
                                    }
                                    §§goto(addr170);
                                 }
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr215);
         }
         §§goto(addr183);
      }
      
      public function §[u§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§0S§ = 4;
            loop0:
            while(true)
            {
               this.§3!C§(4);
               while(true)
               {
                  this.§#1§[0].Set(-param1,-param2);
                  loop2:
                  while(true)
                  {
                     this.§#1§[1].Set(param1,-param2);
                     while(true)
                     {
                        this.§#1§[2].Set(param1,param2);
                        addr148:
                        while(true)
                        {
                           this.§#1§[3].Set(-param1,param2);
                           continue loop0;
                        }
                        addr115:
                        if(_loc3_ && param2)
                        {
                           continue;
                        }
                        this.§07§[1].Set(1,0);
                        loop7:
                        while(true)
                        {
                           this.§07§[2].Set(0,1);
                           addr71:
                           addr106:
                           loop8:
                           while(_loc4_ || param2)
                           {
                              while(true)
                              {
                                 this.§07§[3].Set(-1,0);
                                 while(_loc4_)
                                 {
                                    continue loop7;
                                    this.§<!@§.§7_§();
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 continue loop8;
                              }
                              return;
                           }
                           while(!(_loc3_ && this))
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr115);
                              }
                              else
                              {
                                 §§goto(addr148);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §?M§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§0S§ = 4;
         }
         loop0:
         while(true)
         {
            this.§3!C§(4);
            while(true)
            {
               this.§#1§[0].Set(-param1,-param2);
               loop2:
               for(; !(_loc8_ && param3); loop5:
               for(; !(_loc8_ && param2); while(_loc7_ || param1)
               {
                  this.§<!@§ = param3;
                  if(!_loc7_)
                  {
                     continue;
                  }
                  if(!_loc8_)
                  {
                     §§goto(addr27);
                  }
                  §§goto(addr62);
               })
               {
                  this.§07§[0].Set(0,-1);
                  while(true)
                  {
                     this.§07§[1].Set(1,0);
                     while(!_loc8_)
                     {
                        this.§07§[2].Set(0,1);
                        while(!_loc8_)
                        {
                           while(true)
                           {
                              this.§07§[3].Set(-1,0);
                              continue loop5;
                              addr34:
                              if(!_loc7_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              var _loc5_:b2Transform;
                              (_loc5_ = new b2Transform()).position = param3;
                              if(_loc7_ || this)
                              {
                                 _loc5_.R.Set(param4);
                              }
                              var _loc6_:int = 0;
                              addr181:
                              if(_loc6_ >= this.§0S§)
                              {
                                 if(_loc7_ || param2)
                                 {
                                    if(_loc8_)
                                    {
                                       addr214:
                                       if(!_loc8_)
                                       {
                                          _loc6_++;
                                          addr200:
                                          §§goto(addr181);
                                       }
                                       this.§07§[_loc6_] = b2Math.§&W§(_loc5_.R,this.§07§[_loc6_]);
                                       §§goto(addr214);
                                       addr240:
                                    }
                                    return;
                                 }
                                 §§goto(addr200);
                              }
                              this.§#1§[_loc6_] = b2Math.§=!!§(_loc5_,this.§#1§[_loc6_]);
                              §§goto(addr240);
                           }
                           §§goto(addr110);
                        }
                     }
                     continue loop0;
                     addr27:
                     if(!(_loc7_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr34);
                  }
               })
               {
                  this.§#1§[1].Set(param1,-param2);
                  while(true)
                  {
                     this.§#1§[2].Set(param1,param2);
                     addr110:
                     while(!_loc8_)
                     {
                        this.§#1§[3].Set(-param1,param2);
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      public function §4D§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§0S§ = 2;
            while(true)
            {
               this.§3!C§(2);
               addr210:
               while(!_loc4_)
               {
               }
            }
         }
         while(true)
         {
            this.§#1§[0].SetV(param1);
            while(true)
            {
               this.§#1§[1].SetV(param2);
               while(true)
               {
                  §§push(this.§<!@§);
                  loop5:
                  while(true)
                  {
                     §§push(0.5);
                     addr172:
                     while(true)
                     {
                        §§push(param1.x);
                        addr174:
                        while(true)
                        {
                           §§push(param2.x);
                           addr176:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr177:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr178:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(!(_loc4_ && param2))
                  {
                     this.§07§[0].Normalize();
                     §§goto(addr80);
                  }
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               if(!_loc4_)
               {
                  §§goto(addr73);
               }
               §§goto(addr210);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(!_loc11_)
         {
            §§push(§§pop() - param1.position.x);
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(_loc12_ || param2)
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
            if(!(_loc11_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc11_ && param1))
               {
                  addr81:
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     addr88:
                     §§push(§§pop() + §§pop() * _loc4_.col1.y);
                     if(_loc12_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr88);
               }
               var _loc7_:* = §§pop();
               §§push(_loc5_);
               if(_loc12_ || _loc3_)
               {
                  §§push(_loc4_.col2.x);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc11_ && _loc3_))
                     {
                        §§push(_loc6_);
                        if(_loc12_ || param1)
                        {
                           addr127:
                           §§push(§§pop() * _loc4_.col2.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc11_ && _loc3_)
                        {
                        }
                        §§goto(addr150);
                     }
                     addr150:
                     var _loc8_:* = §§pop();
                     var _loc9_:int = 0;
                     while(true)
                     {
                        if(_loc9_ >= this.§0S§)
                        {
                           return true;
                        }
                        _loc3_ = this.§#1§[_loc9_];
                        if(_loc12_)
                        {
                           §§push(_loc7_);
                           if(!(_loc11_ && _loc3_))
                           {
                              §§push(_loc3_.x);
                              if(_loc12_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc12_ || _loc3_)
                                    {
                                       addr191:
                                       _loc5_ = §§pop();
                                       if(_loc12_ || this)
                                       {
                                          §§push(_loc8_);
                                          if(_loc12_ || _loc3_)
                                          {
                                             addr207:
                                             addr209:
                                             §§push(§§pop() - _loc3_.y);
                                             if(_loc12_ || param1)
                                             {
                                                addr217:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc6_ = §§pop();
                                             addr219:
                                             _loc3_ = this.§07§[_loc9_];
                                             if(!_loc11_)
                                             {
                                                §§push(_loc3_.x);
                                                if(_loc12_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§push(_loc3_.y);
                                                         if(!_loc11_)
                                                         {
                                                            addr246:
                                                            §§push(§§pop() * _loc6_);
                                                            if(_loc12_ || param2)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc12_ || param2)
                                                               {
                                                                  addr263:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc12_)
                                                                  {
                                                                     addr266:
                                                                     §§push(§§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr269:
                                                                        _loc10_ = §§pop();
                                                                        addr270:
                                                                        §§push(0);
                                                                     }
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr270);
                                                            }
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                §§goto(addr266);
                                             }
                                             break;
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr207);
                     }
                     return false;
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr127);
               }
               §§goto(addr150);
            }
            §§goto(addr88);
         }
         §§goto(addr81);
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
         if(_loc21_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§0`§);
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc20_)
         {
            §§push(param2.p1);
            if(!_loc20_)
            {
               §§push(§§pop().x);
               if(!_loc20_)
               {
                  §§push(param3.position);
                  if(!_loc20_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc20_ && param1))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc21_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_ || param1)
                           {
                              addr79:
                              _loc6_ = §§pop();
                              if(!_loc20_)
                              {
                                 addr84:
                                 §§push(param2.p1.y);
                                 if(!(_loc20_ && this))
                                 {
                                    addr92:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc21_ || this)
                                    {
                                       addr103:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc7_ = §§pop();
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(_loc21_ || param2)
                              {
                                 §§push(_loc8_.col1.x);
                                 if(_loc21_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc20_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc21_)
                                       {
                                          addr128:
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc20_)
                                       {
                                       }
                                       addr136:
                                       var _loc10_:* = §§pop();
                                       §§push(_loc6_);
                                       if(_loc21_)
                                       {
                                          §§push(_loc8_.col2.x);
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc21_)
                                             {
                                                §§push(_loc7_);
                                                if(_loc21_ || param2)
                                                {
                                                   addr156:
                                                   §§push(§§pop() * _loc8_.col2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc20_)
                                                {
                                                   addr164:
                                                   var _loc11_:Number = §§pop();
                                                   if(_loc21_)
                                                   {
                                                      §§push(param2.p2);
                                                      if(_loc21_ || this)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc21_ || this)
                                                         {
                                                            §§push(param3.position);
                                                            if(_loc21_ || param1)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc20_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc21_ || param3)
                                                                  {
                                                                     addr204:
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr207:
                                                                        _loc6_ = §§pop();
                                                                        if(_loc21_ || this)
                                                                        {
                                                                           addr217:
                                                                           §§push(param2.p2.y);
                                                                           if(!_loc20_)
                                                                           {
                                                                              addr223:
                                                                              §§push(§§pop() - param3.position.y);
                                                                              if(!(_loc20_ && this))
                                                                              {
                                                                                 addr231:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        _loc8_ = param3.R;
                                                                        §§push(_loc6_);
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(_loc8_.col1.x);
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc21_ || param1)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    addr260:
                                                                                    §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                                                                    if(_loc20_ && param1)
                                                                                    {
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc6_);
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       §§push(_loc8_.col2.x);
                                                                                       if(!(_loc20_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(!(_loc20_ && param3))
                                                                                             {
                                                                                                addr299:
                                                                                                §§push(§§pop() * _loc8_.col2.y);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                addr306:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc13_:* = §§pop();
                                                                                             §§push(_loc12_);
                                                                                             if(!(_loc20_ && param3))
                                                                                             {
                                                                                                §§push(§§pop() - _loc10_);
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr320:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc14_:* = §§pop();
                                                                                                §§push(_loc13_);
                                                                                                if(_loc21_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop() - _loc11_);
                                                                                                   if(_loc21_ || param1)
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
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(this.§0S§);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            addr838:
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc8_ = param3.R;
                                                                                                            _loc9_ = this.§07§[_loc16_];
                                                                                                            if(_loc21_ || param2)
                                                                                                            {
                                                                                                               §§push(param1.normal);
                                                                                                               loop50:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col1);
                                                                                                                  addr942:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        addr975:
                                                                                                                        §§push(_loc9_.x);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc21_ || param3))
                                                                                                                           {
                                                                                                                              continue loop50;
                                                                                                                           }
                                                                                                                           addr957:
                                                                                                                           §§push(_loc8_.col2);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 addr974:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           continue loop50;
                                                                                                                        }
                                                                                                                        addr975:
                                                                                                                     }
                                                                                                                     §§goto(addr957);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr937);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push((_loc9_ = this.§#1§[_loc17_]).x);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc21_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc21_ || param2)
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        if(_loc21_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr393:
                                                                                                                              §§push(§§pop() - _loc11_);
                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                              {
                                                                                                                                 addr403:
                                                                                                                                 _loc7_ = Number(§§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr403);
                                                                                                                        }
                                                                                                                        §§push((_loc9_ = this.§07§[_loc17_]).x);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc21_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc21_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc21_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc21_ || param2)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(_loc21_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.x);
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      loop42:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         loop34:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_.y);
                                                                                                                                                            loop37:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               addr798:
                                                                                                                                                               loop43:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  loop24:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     addr800:
                                                                                                                                                                     loop25:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(!(_loc20_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr815:
                                                                                                                                                                        loop41:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           loop32:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop33:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop18:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                             if(_loc21_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr550:
                                                                                                                                                                                                      §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc21_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop21:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc17_++;
                                                                                                                                                                                                                  if(_loc20_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc21_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc20_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop18;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop18;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr817:
                                                                                                                                                                                                                        loop8:
                                                                                                                                                                                                                        while(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                           loop40:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                                                                              loop30:
                                                                                                                                                                                                                              while(_loc21_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                 loop20:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc21_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    loop19:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                       addr726:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc20_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr785:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             continue loop8;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop9:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          loop10:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop34;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             loop11:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop30;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                   loop12:
                                                                                                                                                                                                                                                   for(; !(_loc20_ && param2); while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr621);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr726);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   })
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_ && param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr818);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      if(_loc21_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               addr570:
                                                                                                                                                                                                                                                               if(_loc21_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop21;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        loop26:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr650:
                                                                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       continue loop10;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr650:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr645:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr812:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                    addr705:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop26;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr759:
                                                                                                                                                                                                                                                                              addr812:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr813:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr814:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                    break loop30;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr774:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr637:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr650);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr705);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc21_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc20_ && param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop40;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop24;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                    continue loop12;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr756:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr756:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr637);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr759);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc20_ && param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr756);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr748:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr756);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr774);
                                                                                                                                                                                                                                                                        addr735:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr696:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr814);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr621:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr696);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr785);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr784);
                                                                                                                                                                                                                                                      §§goto(addr672);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr672:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr748);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr735);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc20_ && param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop37;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr783);
                                                                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr818:
                                                                                                                                                                                                                        return §§pop();
                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr769);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr562:
                                                                                                                                                                                                                     §§push(false);
                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr570);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr607);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr562);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr600);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr645);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr725);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr606);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr550);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr650);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr651);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr817);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr794:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                         §§goto(addr812);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr813);
                                                                                                                                                      §§goto(addr800);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr580);
                                                                                                                                             }
                                                                                                                                             §§goto(addr708);
                                                                                                                                          }
                                                                                                                                          §§goto(addr815);
                                                                                                                                       }
                                                                                                                                       §§goto(addr794);
                                                                                                                                    }
                                                                                                                                    §§goto(addr798);
                                                                                                                                 }
                                                                                                                                 §§goto(addr755);
                                                                                                                              }
                                                                                                                              §§goto(addr812);
                                                                                                                           }
                                                                                                                           §§goto(addr606);
                                                                                                                        }
                                                                                                                        §§goto(addr650);
                                                                                                                     }
                                                                                                                     §§goto(addr393);
                                                                                                                  }
                                                                                                                  §§goto(addr403);
                                                                                                               }
                                                                                                               §§goto(addr393);
                                                                                                            }
                                                                                                            §§goto(addr403);
                                                                                                         }
                                                                                                      }
                                                                                                      addr832:
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         return false;
                                                                                                      }
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         param1.fraction = _loc4_;
                                                                                                      }
                                                                                                      §§goto(addr838);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr832);
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§goto(addr320);
                                                                                          }
                                                                                          §§goto(addr306);
                                                                                       }
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                    §§goto(addr306);
                                                                                 }
                                                                              }
                                                                              §§goto(addr260);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr260);
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                                  §§goto(addr207);
                                                               }
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                   §§goto(addr217);
                                                }
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr136);
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr103);
                        }
                     }
                  }
                  §§goto(addr92);
               }
               §§goto(addr79);
            }
         }
         §§goto(addr84);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§#1§[0];
         §§push(param2.position.x);
         if(_loc13_)
         {
            §§push(_loc3_.col1.x);
            if(_loc13_)
            {
               §§push(_loc4_.x);
               if(_loc13_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc12_ && this))
                  {
                     addr53:
                     §§push(_loc3_.col2.x);
                     if(!_loc12_)
                     {
                        addr61:
                        §§push(§§pop() + §§pop() * _loc4_.y);
                     }
                     §§goto(addr61);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc13_)
                  {
                     addr66:
                     var _loc5_:Number = §§pop();
                     §§push(param2.position.y);
                     if(!(_loc12_ && param2))
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc13_)
                        {
                           §§push(_loc4_.x);
                           if(_loc13_)
                           {
                              addr108:
                              §§push(§§pop() * §§pop());
                              if(_loc13_ || this)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(§§pop() * _loc4_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc13_)
                              {
                                 addr111:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc5_);
                              if(_loc13_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              while(_loc9_ < this.§0S§)
                              {
                                 _loc4_ = this.§#1§[_loc9_];
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
                                                addr504:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr505:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      addr507:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc13_)
                                                         {
                                                            §§push(_loc4_.y);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            addr512:
                                                         }
                                                         addr513:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr514:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr515:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr516:
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
                                       }
                                    }
                                 }
                                 §§goto(addr407);
                              }
                              if(_loc13_ || param2)
                              {
                                 §§push(param1.§>!7§);
                                 if(!(_loc12_ && this))
                                 {
                                    §§push(_loc5_);
                                    if(_loc13_ || param2)
                                    {
                                       §§push(§§pop() - b2internal::#&);
                                       if(_loc13_ || param2)
                                       {
                                          §§pop().x = §§pop();
                                          if(!(_loc12_ && param1))
                                          {
                                             addr614:
                                             §§push(param1.§>!7§);
                                             §§push(_loc6_);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() - b2internal::#&);
                                             }
                                          }
                                          loop54:
                                          while(true)
                                          {
                                             §§push(param1.§=k§);
                                             if(!_loc12_)
                                             {
                                                §§push(_loc8_);
                                                if(_loc13_ || param2)
                                                {
                                                   §§pop().y = §§pop() + b2internal::#&;
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   addr620:
                                                   addr594:
                                                   while(_loc13_ || param1)
                                                   {
                                                      continue loop54;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.§=k§);
                                                      addr590:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         continue loop54;
                                                      }
                                                      §§goto(addr594);
                                                   }
                                                   addr594:
                                                }
                                                while(true)
                                                {
                                                   §§pop().x = §§pop() + b2internal::#&;
                                                   §§goto(addr594);
                                                }
                                             }
                                             §§goto(addr590);
                                          }
                                          return;
                                          addr601:
                                       }
                                    }
                                    §§pop().y = §§pop();
                                    §§goto(addr620);
                                 }
                                 §§goto(addr614);
                              }
                              §§goto(addr601);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr66);
               }
               §§goto(addr61);
            }
            §§goto(addr53);
         }
         §§goto(addr66);
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
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(!_loc28_)
         {
            if(this.§0S§ == 2)
            {
               §§push(param1.center);
               loop0:
               while(true)
               {
                  §§push(0.5);
                  addr135:
                  while(true)
                  {
                     §§push(§§pop() * (this.§#1§[0].x + this.§#1§[1].x));
                     addr147:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         else if(false)
         {
            §§goto(addr73);
         }
         §§push(0);
         if(_loc27_)
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
         if(!(_loc28_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(!(_loc28_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(1 / 3);
         if(_loc27_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:int = 0;
         loop5:
         while(_loc10_ < this.§0S§)
         {
            _loc11_ = this.§#1§[_loc10_];
            if(_loc27_ || this)
            {
               _loc12_ = _loc10_ + 1 < this.§0S§ ? this.§#1§[int(_loc10_ + 1)] : this.§#1§[0];
               if(!_loc28_)
               {
                  §§push(_loc11_.x);
                  loop6:
                  while(true)
                  {
                     §§push(_loc7_);
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
                              _loc13_ = §§pop();
                              loop10:
                              while(true)
                              {
                                 §§push(_loc11_.y);
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       loop13:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          while(true)
                                          {
                                             _loc14_ = §§pop();
                                             loop15:
                                             while(true)
                                             {
                                                §§push(_loc12_.x);
                                                loop16:
                                                for(; _loc27_ || this; while(_loc27_ || this)
                                                {
                                                   §§goto(addr1103);
                                                   §§push(_loc8_);
                                                   §§goto(addr916);
                                                })
                                                {
                                                   §§push(_loc7_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr1119:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr1120:
                                                         while(true)
                                                         {
                                                            _loc15_ = §§pop();
                                                            addr1121:
                                                            while(!(_loc28_ && param1))
                                                            {
                                                               §§push(_loc12_.y);
                                                               continue loop16;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      addr338:
                                                      if(_loc28_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc27_ || param2)
                                                      {
                                                         addr353:
                                                         if(!(_loc28_ && param2))
                                                         {
                                                            if(!_loc28_)
                                                            {
                                                               if(_loc27_)
                                                               {
                                                                  addr365:
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc28_ && this))
                                                                  {
                                                                     if(!(_loc28_ && param1))
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        loop124:
                                                                        while(!_loc28_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc10_++;
                                                                              if(_loc28_)
                                                                              {
                                                                                 continue loop124;
                                                                              }
                                                                              if(_loc27_)
                                                                              {
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    loop123:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(!(_loc28_ && param2))
                                                                                       {
                                                                                          if(!(_loc28_ && this))
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                if(!(_loc28_ && param1))
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(_loc25_);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         addr286:
                                                                                                         if(!(_loc28_ && param2))
                                                                                                         {
                                                                                                            addr293:
                                                                                                            §§push(_loc26_);
                                                                                                            if(_loc27_ || this)
                                                                                                            {
                                                                                                               if(!(_loc28_ && this))
                                                                                                               {
                                                                                                                  if(_loc27_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        addr318:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              if(!_loc28_)
                                                                                                                              {
                                                                                                                                 addr330:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr338);
                                                                                                                                          }
                                                                                                                                          while(!(_loc28_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             loop32:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                addr1090:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc17_ = §§pop();
                                                                                                                                                   addr1091:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0.5);
                                                                                                                                                      loop35:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         loop36:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            loop37:
                                                                                                                                                            while(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               while(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  _loc18_ = §§pop();
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     loop40:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc28_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                                                                          while(!(_loc28_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                addr1015:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(_loc27_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1024:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_.x);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         loop50:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc12_.x);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        loop55:
                                                                                                                                                                                                                        while(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc3_ = §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop55;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                 if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                                                                          loop58:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                                                                while(!(_loc28_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc11_.y);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      break loop123;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop50;
                                                                                                                                                                                                                                                addr983:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr997:
                                                                                                                                                                                                                                             while(!(_loc28_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                while(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   loop66:
                                                                                                                                                                                                                                                   while(!_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                         loop68:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr953:
                                                                                                                                                                                                                                                            while(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                                  continue loop68;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop37;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc28_ && param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         _loc23_ = §§pop();
                                                                                                                                                                                                                                                         §§goto(addr880);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop8;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1119);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc27_ || _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop58;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr777);
                                                                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                                                                §§goto(addr540);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             addr1104:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1105);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1103:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1106);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr997);
                                                                                                                                                                                                                                 if(_loc28_ && this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr902);
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 break loop40;
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
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop36;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1080);
                                                                                                                                                                           }
                                                                                                                                                                           addr1079:
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                        addr834:
                                                                                                                                                                        while(!(_loc28_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop6;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1079);
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc28_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr834);
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1120);
                                                                                                                                                            }
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1015);
                                                                                                                                    }
                                                                                                                                    §§goto(addr794);
                                                                                                                                 }
                                                                                                                                 §§goto(addr677);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr421);
                                                                                                                        }
                                                                                                                        §§goto(addr680);
                                                                                                                     }
                                                                                                                     §§goto(addr992);
                                                                                                                  }
                                                                                                                  §§goto(addr501);
                                                                                                               }
                                                                                                               §§goto(addr571);
                                                                                                            }
                                                                                                            §§goto(addr582);
                                                                                                         }
                                                                                                         §§goto(addr432);
                                                                                                      }
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                   §§goto(addr724);
                                                                                                }
                                                                                                §§goto(addr681);
                                                                                             }
                                                                                             §§goto(addr330);
                                                                                          }
                                                                                          §§goto(addr1090);
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr995);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1091);
                                                                              }
                                                                              §§goto(addr693);
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr1121);
                                                                     }
                                                                     §§goto(addr953);
                                                                  }
                                                                  §§goto(addr682);
                                                               }
                                                               §§goto(addr1104);
                                                            }
                                                            §§goto(addr821);
                                                         }
                                                         §§goto(addr685);
                                                      }
                                                      §§goto(addr365);
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
               §§goto(addr382);
            }
            §§goto(addr225);
         }
         if(_loc27_)
         {
            §§push(param1);
            §§push(param2);
            if(_loc27_)
            {
               §§push(§§pop() * _loc5_);
            }
            §§pop().§>A§ = §§pop();
            if(!_loc28_)
            {
               §§push(_loc3_);
               loop132:
               while(true)
               {
                  §§push(1);
                  loop133:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop134:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        loop135:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop136:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr1243:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc27_)
                                    {
                                       §§push(1);
                                       if(!_loc27_)
                                       {
                                          continue loop133;
                                       }
                                       §§push(_loc5_);
                                       if(_loc28_)
                                       {
                                          continue loop134;
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(_loc28_)
                                       {
                                          continue loop135;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(!_loc28_)
                                       {
                                          if(_loc28_)
                                          {
                                             break;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    if(_loc27_)
                                    {
                                       continue loop132;
                                    }
                                    continue loop136;
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
               param1.center.Set(_loc3_,_loc4_);
               §§goto(addr1195);
            }
         }
         addr1195:
         while(true)
         {
            §§push(param1);
            §§push(param2);
            if(_loc27_ || param2)
            {
               §§push(§§pop() * _loc6_);
            }
            §§pop().§[8§ = §§pop();
            if(!_loc27_)
            {
               continue;
            }
            if(!(_loc27_ || _loc3_))
            {
               continue loop139;
            }
            if(_loc27_)
            {
               break;
            }
            §§goto(addr1243);
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc12_:* = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:* = false;
         var _loc24_:b2MassData = null;
         var _loc25_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§=!X§(param3.R,param1);
         §§push(param2);
         if(!(_loc28_ && this))
         {
            §§push(§§pop() - b2Math.§%!a§(param1,param3.position));
            if(!_loc28_)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Vector.<Number> = new Vector.<Number>();
            var _loc8_:int = 0;
            var _loc9_:* = -1;
            var _loc10_:* = -1;
            var _loc11_:* = false;
            if(_loc27_ || param3)
            {
               _loc12_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc12_);
               if(_loc27_ || param2)
               {
                  §§push(this.§0S§);
                  if(_loc27_ || this)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc27_)
                        {
                           §§push(_loc8_);
                           if(_loc27_ || this)
                           {
                              addr415:
                              var _loc26_:* = §§pop();
                              if(!(_loc28_ && param3))
                              {
                                 §§push(0);
                                 if(!(_loc28_ && param1))
                                 {
                                    §§push(_loc26_);
                                    if(_loc27_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc27_ || this)
                                          {
                                             §§push(0);
                                             if(_loc27_)
                                             {
                                                addr464:
                                                if(_loc27_)
                                                {
                                                   addr467:
                                                   switch(§§pop())
                                                   {
                                                      case 1:
                                                         addr352:
                                                         §§push(_loc9_);
                                                         if(!_loc27_)
                                                         {
                                                            §§goto(addr415);
                                                         }
                                                         §§push(-1);
                                                         if(_loc27_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc27_)
                                                               {
                                                                  addr362:
                                                                  §§push(this.§0S§);
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(!_loc28_)
                                                                     {
                                                                        addr369:
                                                                        §§push(int(§§pop()));
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           addr377:
                                                                           _loc9_ = §§pop();
                                                                           if(_loc27_ || this)
                                                                           {
                                                                              addr404:
                                                                              break;
                                                                              addr385:
                                                                           }
                                                                        }
                                                                        §§goto(addr404);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr398:
                                                                        §§push(int(§§pop()));
                                                                        if(_loc27_)
                                                                        {
                                                                           addr401:
                                                                           _loc10_ = §§pop();
                                                                           if(_loc27_)
                                                                           {
                                                                              §§goto(addr404);
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr484:
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc27_)
                                                                        {
                                                                           addr480:
                                                                           §§push(§§pop() % this.§0S§);
                                                                        }
                                                                        var _loc13_:int = §§pop();
                                                                        §§push(_loc10_);
                                                                        if(!(_loc28_ && param2))
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(§§pop() % this.§0S§);
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        var _loc14_:* = §§pop();
                                                                        §§push(0 - _loc7_[_loc9_]);
                                                                        if(!(_loc28_ && param1))
                                                                        {
                                                                           §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr534:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc15_:* = §§pop();
                                                                           §§push(0 - _loc7_[_loc10_]);
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                                              if(_loc27_ || param1)
                                                                              {
                                                                                 addr558:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc16_:* = §§pop();
                                                                              §§push(§§findproperty(b2Vec2));
                                                                              §§push(this.§#1§[_loc9_].x * (1 - _loc15_));
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(this.§#1§[_loc13_].x * _loc15_);
                                                                                 if(_loc27_ || param3)
                                                                                 {
                                                                                    addr587:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(this.§#1§[_loc9_].y * (1 - _loc15_));
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr598:
                                                                                       §§push(§§pop() + this.§#1§[_loc13_].y * _loc15_);
                                                                                    }
                                                                                    var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                    §§push(§§findproperty(b2Vec2));
                                                                                    §§push(this.§#1§[_loc10_].x * (1 - _loc16_));
                                                                                    if(!(_loc28_ && param3))
                                                                                    {
                                                                                       §§push(this.§#1§[_loc14_].x * _loc16_);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          addr636:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(this.§#1§[_loc10_].y * (1 - _loc16_));
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             addr647:
                                                                                             §§push(§§pop() + this.§#1§[_loc14_].y * _loc16_);
                                                                                          }
                                                                                          var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                          var _loc19_:* = Number(0);
                                                                                          var _loc20_:b2Vec2 = new b2Vec2();
                                                                                          var _loc21_:b2Vec2 = this.§#1§[_loc13_];
                                                                                          if(_loc27_ || this)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                if(!(_loc28_ && param3))
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   if(!(_loc28_ && param1))
                                                                                                   {
                                                                                                      addr990:
                                                                                                      if(_loc12_ != _loc14_)
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(§§pop() % this.§0S§);
                                                                                                                  if(_loc27_ || param2)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(_loc27_ || param3)
                                                                                                                     {
                                                                                                                        addr731:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc27_ || this)
                                                                                                                        {
                                                                                                                           _loc12_ = §§pop();
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              addr742:
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(_loc27_ || param1)
                                                                                                                              {
                                                                                                                                 addr750:
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc27_ || this)
                                                                                                                                    {
                                                                                                                                       _loc22_ = _loc18_;
                                                                                                                                       if(!(_loc28_ && param3))
                                                                                                                                       {
                                                                                                                                          addr775:
                                                                                                                                          §§push(0.5);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc21_.x);
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc17_.x);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!_loc28_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc22_.y);
                                                                                                                                                      if(!_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_.y);
                                                                                                                                                         if(_loc27_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               addr805:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  addr808:
                                                                                                                                                                  §§push(_loc21_.y);
                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_.y);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr816:
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           addr832:
                                                                                                                                                                           §§push(_loc22_.x);
                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr828:
                                                                                                                                                                              §§push(§§pop() - _loc17_.x);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                           if(!(_loc28_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              addr840:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc28_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(!(_loc28_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc25_ = §§pop();
                                                                                                                                                                                    if(_loc27_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr980:
                                                                                                                                                                                          §§push(§§pop() + _loc25_);
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr984:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                       addr919:
                                                                                                                                                                                       addr986:
                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                       §§push(_loc20_.x);
                                                                                                                                                                                       if(_loc27_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc25_);
                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc17_.x);
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc21_.x);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr956:
                                                                                                                                                                                                      §§push(§§pop() + _loc22_.x);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc28_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr968:
                                                                                                                                                                                                      §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                                                                      addr969:
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr971:
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         §§push(_loc20_.y);
                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc25_);
                                                                                                                                                                                                            if(!(_loc28_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_.y);
                                                                                                                                                                                                               if(!(_loc28_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc21_.y);
                                                                                                                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr902:
                                                                                                                                                                                                                        §§push(§§pop() + _loc22_.y);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr914:
                                                                                                                                                                                                                        §§pop().y = §§pop() + §§pop() / 3;
                                                                                                                                                                                                                        addr913:
                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(false)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr919);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc21_ = _loc22_;
                                                                                                                                                                                                                           §§goto(addr990);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr969);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr913);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr902);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr913);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr914);
                                                                                                                                                                                                         addr971:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr986);
                                                                                                                                                                                                      addr967:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr967);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr956);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr969);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr968);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr971);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr980);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr984);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr980);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr832);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr828);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr840);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr832);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr816);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr805);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr808);
                                                                                                                                                }
                                                                                                                                                §§goto(addr805);
                                                                                                                                             }
                                                                                                                                             §§goto(addr840);
                                                                                                                                          }
                                                                                                                                          §§goto(addr980);
                                                                                                                                       }
                                                                                                                                       §§goto(addr971);
                                                                                                                                    }
                                                                                                                                    addr995:
                                                                                                                                    _loc20_.§[!T§(1 / _loc19_);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       addr1012:
                                                                                                                                       param4.SetV(b2Math.§=!!§(param3,_loc20_));
                                                                                                                                    }
                                                                                                                                    §§goto(addr1019);
                                                                                                                                 }
                                                                                                                                 _loc22_ = this.§#1§[_loc12_];
                                                                                                                                 §§goto(addr775);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr990);
                                                                                                                     }
                                                                                                                     §§goto(addr742);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1019:
                                                                                                               return _loc19_;
                                                                                                            }
                                                                                                            §§goto(addr750);
                                                                                                         }
                                                                                                         §§goto(addr731);
                                                                                                      }
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr995);
                                                                                                   }
                                                                                                   §§goto(addr1012);
                                                                                                }
                                                                                                §§goto(addr990);
                                                                                             }
                                                                                             §§goto(addr731);
                                                                                          }
                                                                                          §§goto(addr995);
                                                                                       }
                                                                                       §§goto(addr647);
                                                                                    }
                                                                                    §§goto(addr636);
                                                                                 }
                                                                                 §§goto(addr598);
                                                                              }
                                                                              §§goto(addr587);
                                                                           }
                                                                           §§goto(addr558);
                                                                        }
                                                                        §§goto(addr534);
                                                                     }
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§0S§);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(!(_loc28_ && this))
                                                                  {
                                                                     §§goto(addr398);
                                                                  }
                                                                  §§goto(addr480);
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                         }
                                                         §§goto(addr398);
                                                      default:
                                                         break;
                                                      case 0:
                                                         addr302:
                                                         if(_loc11_)
                                                         {
                                                            if(!(_loc28_ && param2))
                                                            {
                                                               _loc24_ = new b2MassData();
                                                               if(!_loc28_)
                                                               {
                                                                  this.ComputeMass(_loc24_,1);
                                                                  param4.SetV(b2Math.§=!!§(param3,_loc24_.center));
                                                                  addr340:
                                                                  if(_loc28_)
                                                                  {
                                                                     §§goto(addr340);
                                                                  }
                                                               }
                                                               return _loc24_.§>A§;
                                                            }
                                                            §§goto(addr385);
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            if(_loc27_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                   }
                                                   addr468:
                                                   §§push(_loc9_);
                                                   if(_loc27_ || this)
                                                   {
                                                   }
                                                }
                                                §§goto(addr398);
                                                addr445:
                                             }
                                             addr449:
                                             addr450:
                                             if(§§pop() === _loc26_)
                                             {
                                                addr451:
                                                §§push(1);
                                                if(!(_loc28_ && param2))
                                                {
                                                   addr459:
                                                }
                                             }
                                             §§goto(addr464);
                                             §§push(2);
                                          }
                                          §§goto(addr451);
                                       }
                                       §§push(1);
                                       if(_loc27_)
                                       {
                                          §§goto(addr449);
                                       }
                                       §§goto(addr459);
                                    }
                                    §§goto(addr450);
                                 }
                                 §§goto(addr445);
                              }
                              §§goto(addr451);
                           }
                           §§goto(addr398);
                           addr299:
                        }
                        §§goto(addr352);
                     }
                     else
                     {
                        _loc7_[_loc12_] = b2Math.§%!a§(_loc5_,this.§#1§[_loc12_]) - _loc6_;
                        if(!(_loc28_ && param2))
                        {
                           §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                           if(_loc27_ || param1)
                           {
                              _loc23_ = §§pop();
                              if(!(_loc28_ && param2))
                              {
                                 §§push(_loc12_);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc27_ || param1)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc23_);
                                             loop3:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(_loc11_);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc12_);
                                                            if(!(_loc28_ && param1))
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(!(_loc28_ && this))
                                                               {
                                                                  if(!(_loc28_ && this))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc28_ && param2))
                                                                     {
                                                                        if(!_loc27_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc10_ = §§pop();
                                                                        if(_loc27_ || this)
                                                                        {
                                                                           if(_loc27_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           addr204:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(_loc27_ || this)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                if(_loc27_ || this)
                                                                                                {
                                                                                                   _loc8_++;
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr83:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc23_);
                                                                                                            if(!(_loc27_ || this))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         §§goto(addr302);
                                                                                                      }
                                                                                                      addr130:
                                                                                                   }
                                                                                                   §§goto(addr404);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr299);
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                          addr212:
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                    }
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 §§goto(addr130);
                                                                                 addr102:
                                                                                 if(!(_loc27_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 _loc11_ = §§pop();
                                                                                 if(!(_loc28_ && this))
                                                                                 {
                                                                                    _loc12_++;
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(true)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr83);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr352);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr468);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr404);
                                                                     }
                                                                     §§goto(addr467);
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§goto(addr83);
                                                   }
                                                }
                                                §§goto(addr204);
                                             }
                                          }
                                       }
                                       §§goto(addr83);
                                    }
                                    break;
                                 }
                                 §§goto(addr398);
                              }
                              §§goto(addr467);
                           }
                           §§goto(addr302);
                        }
                     }
                     §§goto(addr467);
                  }
                  §§goto(addr398);
               }
               §§goto(addr377);
            }
         }
         §§goto(addr51);
      }
      
      public function §"!f§() : int
      {
         return this.§0S§;
      }
      
      public function §9J§() : Vector.<b2Vec2>
      {
         return this.§#1§;
      }
      
      public function §+!;§() : Vector.<b2Vec2>
      {
         return this.§07§;
      }
      
      public function §<@§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§#1§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§#1§[0].y * param1.y);
            if(_loc7_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_)
               {
                  if(_loc7_ || param1)
                  {
                     if(!_loc6_)
                     {
                        if(§§pop() >= this.§0S§)
                        {
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 §§push(_loc2_);
                                 break;
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       addr103:
                                       §§push(Number(§§pop()));
                                       if(_loc7_ || _loc2_)
                                       {
                                          addr110:
                                          if(_loc7_ || param1)
                                          {
                                             _loc3_ = §§pop();
                                             addr118:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr153:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr172:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                         }
                                                      }
                                                      addr171:
                                                   }
                                                   while(§§pop() > §§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(_loc4_);
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         addr178:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            continue loop5;
                                                         }
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                }
                                                §§goto(addr110);
                                             }
                                             addr152:
                                          }
                                          _loc4_++;
                                          continue loop0;
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr118);
                        }
                        else
                        {
                           §§push(this.§#1§[_loc4_].x * param1.x);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(this.§#1§[_loc4_].y * param1.y);
                              if(!(_loc6_ && this))
                              {
                                 §§goto(addr152);
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr171);
                           }
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr178);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §=!G§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§#1§[0].x * param1.x);
         if(_loc7_ || this)
         {
            §§push(§§pop() + this.§#1§[0].y * param1.y);
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
               if(_loc7_)
               {
                  if(_loc7_)
                  {
                     if(§§pop() >= this.§0S§)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           if(_loc7_ || _loc2_)
                           {
                              break;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(_loc4_);
                              addr168:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr169:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       if(_loc7_)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(!_loc6_)
                                             {
                                                addr113:
                                                _loc3_ = §§pop();
                                                loop5:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         _loc4_++;
                                                         addr94:
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               break loop4;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue loop0;
                                                      addr92:
                                                   }
                                                   continue loop12;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                }
                                                addr165:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr151:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            §§goto(addr165);
                                                         }
                                                         addr164:
                                                      }
                                                   }
                                                }
                                                addr150:
                                             }
                                             while(true)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr92);
                                                §§goto(addr113);
                                             }
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr113);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        §§push(this.§#1§[_loc4_].x * param1.x);
                        if(_loc7_ || _loc2_)
                        {
                           §§push(this.§#1§[_loc4_].y * param1.y);
                           if(!_loc6_)
                           {
                              §§goto(addr150);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr164);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr168);
               }
               §§goto(addr169);
            }
            return this.§#1§[_loc2_];
         }
         §§goto(addr47);
      }
      
      private function §6!<§() : Boolean
      {
         return false;
      }
      
      private function §3!C§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§#1§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!(_loc4_ && param1))
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     addr84:
                     while(true)
                     {
                        this.§07§[_loc2_] = new b2Vec2();
                        continue loop1;
                     }
                  }
               }
               while(!(_loc3_ || this))
               {
               }
               continue;
            }
            this.§#1§[_loc2_] = new b2Vec2();
            §§goto(addr84);
         }
      }
   }
}
