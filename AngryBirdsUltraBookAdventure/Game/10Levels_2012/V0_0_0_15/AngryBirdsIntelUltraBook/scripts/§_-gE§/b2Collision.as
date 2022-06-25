package §_-gE§
{
   import §_-03n§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §_-uE§:Vector.<§_-ix§>;
      
      private static var s_clipPoints1:Vector.<§_-ix§>;
      
      private static var s_clipPoints2:Vector.<§_-ix§>;
      
      private static var §_-0EE§:Vector.<int>;
      
      private static var §_-gq§:Vector.<int>;
      
      private static var §_-I2§:b2Vec2;
      
      private static var §_-Aj§:b2Vec2;
      
      private static var §_-kn§:b2Vec2;
      
      private static var §_-KT§:b2Vec2;
      
      private static var §_-4F§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            b2_nullFeature = 255;
            while(true)
            {
               §_-uE§ = §_-um§();
               loop1:
               while(true)
               {
                  s_clipPoints1 = §_-um§();
                  loop2:
                  while(true)
                  {
                     s_clipPoints2 = §_-um§();
                     loop3:
                     while(true)
                     {
                        §_-0EE§ = new Vector.<int>(1);
                        loop4:
                        while(true)
                        {
                           §_-gq§ = new Vector.<int>(1);
                           loop5:
                           while(true)
                           {
                              §_-I2§ = new b2Vec2();
                              while(true)
                              {
                                 §_-Aj§ = new b2Vec2();
                                 continue loop3;
                                 addr109:
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    §_-4F§ = new b2Vec2();
                                    loop10:
                                    while(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          s_tangent2 = new b2Vec2();
                                          loop11:
                                          while(!(_loc1_ && b2Collision))
                                          {
                                             if(!_loc1_)
                                             {
                                                s_v11 = new b2Vec2();
                                                loop12:
                                                while(true)
                                                {
                                                   s_v12 = new b2Vec2();
                                                   while(!_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         b2CollidePolyTempVec = new b2Vec2();
                                                         if(_loc2_ || b2Collision)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(_loc1_ && _loc1_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr52);
                                                               continue loop11;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue;
                                                         continue;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop10;
                                                }
                                                return;
                                                addr52:
                                                addr68:
                                             }
                                             continue loop4;
                                          }
                                          continue loop1;
                                          addr74:
                                       }
                                       continue loop5;
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
         §§goto(addr68);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §_-Z4§(param1:Vector.<§_-ix§>, param2:Vector.<§_-ix§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§_-ix§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§_-ix§ = null;
         if(!(_loc14_ && b2Collision))
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(!_loc14_)
         {
            §§push(param3.x);
            if(!_loc14_)
            {
               §§push(_loc7_.x);
               if(_loc15_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc15_ || b2Collision)
                  {
                     §§push(param3.y);
                     if(_loc15_)
                     {
                        addr89:
                        §§push(_loc7_.y);
                        if(!_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc15_ || param2)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc14_ && param1))
                              {
                                 §§push(param4);
                                 if(_loc15_)
                                 {
                                    addr112:
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc14_ && b2Collision))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc14_)
                                       {
                                          addr123:
                                          _loc9_ = §§pop();
                                          §§push(param3.x);
                                          if(_loc15_ || param3)
                                          {
                                             addr133:
                                             §§push(_loc8_.x);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc14_)
                                                {
                                                   addr140:
                                                   §§push(param3.y);
                                                   if(!(_loc14_ && b2Collision))
                                                   {
                                                      addr151:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc15_)
                                                      {
                                                         addr154:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_)
                                                         {
                                                            addr157:
                                                            §§push(§§pop() - param4);
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               addr166:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc10_:* = §§pop();
                                                         if(_loc15_ || b2Collision)
                                                         {
                                                            §§push(_loc9_);
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        param1[_loc6_++].Set(param2[0]);
                                                                        addr291:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr281:
                                                                  }
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop6:
                                                                        while(!(_loc14_ && b2Collision))
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              loop7:
                                                                              while(!(_loc14_ && param3))
                                                                              {
                                                                                 param1[_loc6_++].Set(param2[1]);
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    addr176:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(_loc14_ && param3)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§push(0);
                                                                                                if(!(_loc14_ && param2))
                                                                                                {
                                                                                                   if(_loc15_ || param2)
                                                                                                   {
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               addr224:
                                                                                                               §§push(_loc9_);
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  addr229:
                                                                                                                  §§push(§§pop() / (§§pop() - _loc10_));
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr229);
                                                                                                            }
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc11_ = §§pop();
                                                                                                         }
                                                                                                         if(_loc14_ && param3)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                                            §§push(_loc7_.x);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc15_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc8_.x);
                                                                                                                  if(_loc15_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc7_.x);
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§pop().x = §§pop();
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               §§push(_loc7_.y);
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(!(_loc14_ && b2Collision))
                                                                                                                  {
                                                                                                                     §§push(_loc8_.y);
                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc7_.y);
                                                                                                                     }
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                            }
                                                                                                            _loc5_ = param1[_loc6_];
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               if(_loc9_ > 0)
                                                                                                               {
                                                                                                                  _loc13_ = param2[0];
                                                                                                                  addr369:
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     _loc5_.id = _loc13_.id;
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr410);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc13_ = param2[1];
                                                                                                                  if(_loc15_ || param2)
                                                                                                                  {
                                                                                                                     _loc5_.id = _loc13_.id;
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc6_++;
                                                                                                               §§goto(addr410);
                                                                                                            }
                                                                                                            §§goto(addr369);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr281);
                                                                                                         }
                                                                                                      }
                                                                                                      addr410:
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                   return _loc6_;
                                                                                                }
                                                                                                §§goto(addr229);
                                                                                             }
                                                                                             §§goto(addr224);
                                                                                          }
                                                                                          §§goto(addr229);
                                                                                       }
                                                                                       §§goto(addr224);
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr133);
               }
               §§goto(addr89);
            }
            §§goto(addr133);
         }
         §§goto(addr123);
      }
      
      public static function §_-02D§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§_-OS§);
         if(!_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§_-09U§;
         var _loc8_:Vector.<b2Vec2> = param1.§_-EH§;
         §§push(param4.§_-OS§);
         if(_loc26_ || b2Collision)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§_-09U§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc26_)
         {
            §§push(_loc12_.x);
            if(_loc26_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc27_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc26_ || param1)
                  {
                     addr84:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc26_ || param3)
                  {
                     addr96:
                     var _loc13_:Number = §§pop();
                     §§push(_loc11_.col1.y);
                     if(!(_loc27_ && b2Collision))
                     {
                        §§push(_loc12_.x);
                        if(_loc26_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc26_ || param3)
                           {
                              §§push(_loc11_.col2.y);
                              if(_loc26_)
                              {
                                 addr129:
                                 §§push(§§pop() * _loc12_.y);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc26_)
                              {
                              }
                              addr136:
                              var _loc14_:* = §§pop();
                              §§push((_loc11_ = param5.R).col1.x);
                              if(!_loc27_)
                              {
                                 §§push(_loc13_);
                                 if(!_loc27_)
                                 {
                                    addr177:
                                    §§push(§§pop() * §§pop());
                                    if(_loc26_ || b2Collision)
                                    {
                                       §§push(_loc11_.col1.y);
                                       if(!(_loc27_ && param2))
                                       {
                                          §§push(§§pop() * _loc14_);
                                       }
                                    }
                                    var _loc15_:Number = §§pop();
                                    §§push(_loc11_.col2.x);
                                    if(_loc26_)
                                    {
                                       §§push(_loc13_);
                                       if(!(_loc27_ && param3))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc26_)
                                          {
                                             §§push(_loc11_.col2.y);
                                             if(_loc26_ || param3)
                                             {
                                                addr205:
                                                §§push(§§pop() * _loc14_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc26_ || param2)
                                             {
                                                addr216:
                                                var _loc16_:Number = §§pop();
                                                var _loc17_:* = 0;
                                                var _loc18_:* = Number(Number.MAX_VALUE);
                                                var _loc19_:int = 0;
                                                while(_loc19_ < _loc9_)
                                                {
                                                   §§push((_loc12_ = _loc10_[_loc19_]).x);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(_loc15_);
                                                      if(!(_loc27_ && param3))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc26_ || param2)
                                                         {
                                                            §§push(_loc12_.y);
                                                            if(_loc26_ || param3)
                                                            {
                                                               §§push(§§pop() * _loc16_);
                                                               if(!(_loc27_ && param2))
                                                               {
                                                                  addr270:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc26_)
                                                                  {
                                                                     addr273:
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc27_ && param3)
                                                                     {
                                                                     }
                                                                     addr305:
                                                                     _loc18_ = §§pop();
                                                                     if(_loc26_ || param3)
                                                                     {
                                                                        §§push(_loc19_);
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc17_ = §§pop();
                                                                        if(!(_loc27_ && param3))
                                                                        {
                                                                           addr335:
                                                                           _loc19_++;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop());
                                                                  if(!(_loc27_ && param3))
                                                                  {
                                                                     _loc25_ = §§pop();
                                                                     if(_loc26_ || param1)
                                                                     {
                                                                        §§push(_loc18_);
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(_loc26_)
                                                               {
                                                                  §§push(_loc25_);
                                                                  if(_loc26_)
                                                                  {
                                                                     §§goto(addr305);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                _loc12_ = _loc7_[param3];
                                                _loc11_ = param2.R;
                                                §§push(param2.position.x);
                                                if(_loc26_)
                                                {
                                                   §§push(_loc11_.col1.x);
                                                   if(_loc26_ || param1)
                                                   {
                                                      §§push(_loc12_.x);
                                                      if(!_loc27_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc27_ && b2Collision))
                                                         {
                                                            addr375:
                                                            §§push(_loc11_.col2.x);
                                                            if(_loc26_ || param3)
                                                            {
                                                               addr388:
                                                               §§push(§§pop() + §§pop() * _loc12_.y);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc27_ && param2))
                                                         {
                                                            addr397:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc20_:* = §§pop();
                                                         §§push(param2.position.y);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(_loc11_.col1.y);
                                                            if(_loc26_)
                                                            {
                                                               §§push(_loc12_.x);
                                                               if(_loc26_)
                                                               {
                                                                  addr435:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc27_ && param2))
                                                                  {
                                                                     §§push(_loc11_.col2.y);
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        §§push(§§pop() * _loc12_.y);
                                                                     }
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc26_)
                                                                  {
                                                                     addr439:
                                                                     var _loc21_:Number = §§pop();
                                                                     _loc12_ = _loc10_[_loc17_];
                                                                     _loc11_ = param5.R;
                                                                     §§push(param5.position.x);
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(_loc11_.col1.x);
                                                                        if(_loc26_ || param3)
                                                                        {
                                                                           §§push(_loc12_.x);
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr471:
                                                                                 §§push(_loc11_.col2.x);
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    addr476:
                                                                                    §§push(§§pop() * _loc12_.y);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc26_)
                                                                              {
                                                                                 addr483:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc22_:* = §§pop();
                                                                              §§push(param5.position.y);
                                                                              if(_loc26_ || param3)
                                                                              {
                                                                                 §§push(_loc11_.col1.y);
                                                                                 if(_loc26_ || param1)
                                                                                 {
                                                                                    §§push(_loc12_.x);
                                                                                    if(_loc26_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          addr517:
                                                                                          §§push(_loc11_.col2.y);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             addr522:
                                                                                             §§push(§§pop() * _loc12_.y);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc27_ && param3))
                                                                                       {
                                                                                          addr535:
                                                                                          var _loc23_:* = Number(§§pop());
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§push(_loc22_);
                                                                                             if(!(_loc27_ && param3))
                                                                                             {
                                                                                                §§push(_loc20_);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      addr552:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         _loc22_ = §§pop();
                                                                                                         if(_loc26_ || param2)
                                                                                                         {
                                                                                                            addr563:
                                                                                                            §§push(_loc23_);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(_loc21_);
                                                                                                               if(_loc26_ || param3)
                                                                                                               {
                                                                                                                  addr574:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc27_ && b2Collision))
                                                                                                                  {
                                                                                                                     addr582:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc27_ && param1)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr620:
                                                                                                                     §§push(_loc23_);
                                                                                                                     if(_loc26_ || b2Collision)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc14_);
                                                                                                                        if(_loc26_ || b2Collision)
                                                                                                                        {
                                                                                                                           addr637:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              addr640:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        var _loc24_:* = §§pop();
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     §§goto(addr637);
                                                                                                                  }
                                                                                                                  _loc23_ = §§pop();
                                                                                                                  addr591:
                                                                                                                  §§push(_loc22_);
                                                                                                                  if(_loc26_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr599:
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc27_ && param2))
                                                                                                                        {
                                                                                                                           §§goto(addr620);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr637);
                                                                                                                  }
                                                                                                                  §§goto(addr640);
                                                                                                               }
                                                                                                               §§goto(addr637);
                                                                                                            }
                                                                                                            §§goto(addr599);
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                      }
                                                                                                      §§goto(addr620);
                                                                                                   }
                                                                                                   §§goto(addr582);
                                                                                                }
                                                                                                §§goto(addr574);
                                                                                             }
                                                                                             §§goto(addr552);
                                                                                          }
                                                                                          §§goto(addr563);
                                                                                       }
                                                                                       §§goto(addr535);
                                                                                    }
                                                                                    §§goto(addr522);
                                                                                 }
                                                                                 §§goto(addr517);
                                                                              }
                                                                              §§goto(addr535);
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                        §§goto(addr471);
                                                                     }
                                                                     §§goto(addr483);
                                                                  }
                                                                  §§goto(addr439);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§goto(addr435);
                                                         }
                                                         §§goto(addr439);
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr375);
                                                }
                                                §§goto(addr397);
                                             }
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc27_ && param2)
                                 {
                                 }
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr136);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr136);
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr84);
         }
         §§goto(addr96);
      }
      
      public static function §_-F3§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§_-OS§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§_-EH§;
         _loc9_ = param5.R;
         _loc8_ = param4.§_-LW§;
         §§push(param5.position.x);
         if(!(_loc26_ && param2))
         {
            §§push(_loc9_.col1.x);
            if(_loc27_)
            {
               §§push(_loc8_.x);
               if(!(_loc26_ && param3))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc26_ && param3))
                  {
                     addr81:
                     §§push(_loc9_.col2.x);
                     if(_loc27_ || param1)
                     {
                        addr91:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || param2)
                  {
                     addr103:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(!_loc26_)
                  {
                     §§push(_loc9_.col1.y);
                     if(!(_loc26_ && param2))
                     {
                        §§push(_loc8_.x);
                        if(!_loc26_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc27_ || param1)
                           {
                              addr132:
                              §§push(_loc9_.col2.y);
                              if(_loc27_)
                              {
                                 addr137:
                                 §§push(§§pop() * _loc8_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc27_)
                           {
                              addr144:
                              §§push(Number(§§pop()));
                           }
                           var _loc11_:* = §§pop();
                           _loc9_ = param3.R;
                           _loc8_ = param2.§_-LW§;
                           if(!_loc26_)
                           {
                              §§push(_loc10_);
                              if(!_loc26_)
                              {
                                 §§push(param3.position);
                                 if(_loc27_ || param3)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc26_)
                                    {
                                       §§push(_loc9_.col1);
                                       if(!_loc26_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc26_ && param1))
                                          {
                                             §§push(_loc8_.x);
                                             if(_loc27_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc27_)
                                                {
                                                   addr190:
                                                   §§push(_loc9_.col2);
                                                   if(_loc27_ || b2Collision)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc26_)
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(!(_loc26_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc27_)
                                                            {
                                                               addr214:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc26_ && param1))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc26_ && b2Collision))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc26_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc26_ && b2Collision))
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr249:
                                                                                 §§push(param3.position.y);
                                                                                 if(!(_loc26_ && b2Collision))
                                                                                 {
                                                                                    §§push(_loc9_.col1);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc27_ || b2Collision)
                                                                                       {
                                                                                          §§push(_loc8_.x);
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             addr278:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc27_ || param1)
                                                                                             {
                                                                                                addr286:
                                                                                                §§push(_loc9_.col2.y);
                                                                                                if(_loc27_ || b2Collision)
                                                                                                {
                                                                                                   addr299:
                                                                                                   §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc27_ || param1)
                                                                                                      {
                                                                                                         addr310:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc27_ || b2Collision)
                                                                                                         {
                                                                                                            addr318:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               addr322:
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc27_ || param2)
                                                                                                               {
                                                                                                                  §§push(param3.R.col1.x);
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     addr336:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(_loc27_ || param2)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr352:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr356:
                                                                                                                           var _loc12_:Number = §§pop();
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§push(param3.R.col2.x);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       addr372:
                                                                                                                                       §§push(§§pop() * param3.R.col2.y);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr380:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc13_:* = §§pop();
                                                                                                                                 var _loc14_:* = 0;
                                                                                                                                 §§push(-Number.MAX_VALUE);
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc15_:* = §§pop();
                                                                                                                                 var _loc16_:int = 0;
                                                                                                                                 while(_loc16_ < _loc6_)
                                                                                                                                 {
                                                                                                                                    §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(_loc27_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_.y);
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                addr429:
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!(_loc26_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr441:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(!(_loc26_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr449:
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr457:
                                                                                                                                                            _loc25_ = §§pop();
                                                                                                                                                            if(_loc27_ || param3)
                                                                                                                                                            {
                                                                                                                                                               addr466:
                                                                                                                                                               addr465:
                                                                                                                                                               if(§§pop() > _loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc25_);
                                                                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr478:
                                                                                                                                                                     _loc15_ = Number(§§pop());
                                                                                                                                                                     if(!(_loc26_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr478);
                                                                                                                                                               }
                                                                                                                                                               _loc16_++;
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr478);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr466);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr465);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr449);
                                                                                                                                                }
                                                                                                                                                §§goto(addr457);
                                                                                                                                             }
                                                                                                                                             §§goto(addr466);
                                                                                                                                          }
                                                                                                                                          §§goto(addr441);
                                                                                                                                       }
                                                                                                                                       §§goto(addr429);
                                                                                                                                    }
                                                                                                                                    §§goto(addr478);
                                                                                                                                 }
                                                                                                                                 §§push(§_-02D§(param2,param3,_loc14_,param4,param5));
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc17_:* = §§pop();
                                                                                                                                 if(!(_loc26_ && b2Collision))
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= 0)
                                                                                                                                          {
                                                                                                                                             addr534:
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(!(_loc26_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr566:
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr563:
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr566);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                addr562:
                                                                                                                                                §§goto(addr563);
                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          var _loc18_:* = §§pop();
                                                                                                                                          §§push(§_-02D§(param2,param3,_loc18_,param4,param5));
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc19_:* = §§pop();
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(1);
                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() < _loc6_)
                                                                                                                                                      {
                                                                                                                                                         addr598:
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr603:
                                                                                                                                                            addr602:
                                                                                                                                                            §§push(int(§§pop() + 1));
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr611:
                                                                                                                                                            var _loc20_:* = §§pop();
                                                                                                                                                            §§push(§_-02D§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            var _loc21_:* = §§pop();
                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               loop1:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                  loop2:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr1078:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 addr1065:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                    addr1066:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1077:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           loop9:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                 loop10:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                    loop11:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                             loop13:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                                                                loop14:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                      loop15:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                         loop16:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_ || b2Collision)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                                                                               loop17:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                  loop18:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop19:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                                                                        loop20:
                                                                                                                                                                                                                        while(_loc27_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop21:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop22:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc24_);
                                                                                                                                                                                                                                 loop23:
                                                                                                                                                                                                                                 while(_loc27_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(-1);
                                                                                                                                                                                                                                    loop24:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop54:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                      addr930:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr929:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break loop54;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1069:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          loop64:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc24_ = §§pop();
                                                                                                                                                                                                                                             addr1071:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                                                                addr1058:
                                                                                                                                                                                                                                                loop56:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                   addr1059:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop64;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         addr1053:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr1054:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc23_ = §§pop();
                                                                                                                                                                                                                                                               addr1055:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop21;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop56;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr921:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                loop25:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(!(_loc26_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop24;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                                                                         addr847:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                         loop26:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop27:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                                                                                  loop28:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc26_ && param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop21;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              loop30:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§_-02D§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                                 addr727:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop10;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr983:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                       addr984:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                          addr985:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1055);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr662:
                                                                                                                                                                                                                                                                           if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                              if(_loc27_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    loop33:
                                                                                                                                                                                                                                                                                    while(_loc27_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                                                                       loop34:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                                   if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr662);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break loop34;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop22;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr921);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr817:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr681:
                                                                                                                                                                                                                                                                                                               if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop26;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1065);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                                                                                                                     addr864:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr693:
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop25;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr727);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop19;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr984);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                                                                                                                     addr693:
                                                                                                                                                                                                                                                                                                                     addr961:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr929);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop34;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                     §§goto(addr681);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1066);
                                                                                                                                                                                                                                                                                                                  addr742:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1054);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr693);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr710:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr693);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                   §§goto(addr817);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr984);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr855);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr986);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr989);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr693);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr847);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1062);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr960:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr961);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr960:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1054);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr985);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1059);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr930);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr973);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr871);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr960);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop13;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1078);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1058);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1071);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr952:
                                                                                                                                                                                             if(_loc26_ && param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr960);
                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          param1[0] = _loc14_;
                                                                                                                                                                                          addr1005:
                                                                                                                                                                                          addr989:
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                          §§push(_loc17_);
                                                                                                                                                                                          addr1005:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1069);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1005);
                                                                                                                                                         }
                                                                                                                                                         addr610:
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr610);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr611);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr603);
                                                                                                                                                }
                                                                                                                                                §§goto(addr602);
                                                                                                                                             }
                                                                                                                                             §§goto(addr610);
                                                                                                                                          }
                                                                                                                                          §§goto(addr598);
                                                                                                                                       }
                                                                                                                                       §§goto(addr563);
                                                                                                                                    }
                                                                                                                                    §§goto(addr562);
                                                                                                                                 }
                                                                                                                                 §§goto(addr534);
                                                                                                                              }
                                                                                                                              §§goto(addr372);
                                                                                                                           }
                                                                                                                           §§goto(addr380);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr356);
                                                                                                                  }
                                                                                                                  addr351:
                                                                                                                  §§goto(addr352);
                                                                                                                  §§push(§§pop() * param3.R.col1.y);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr356);
                                                                                                      }
                                                                                                      §§goto(addr336);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                §§goto(addr299);
                                                                                             }
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    §§goto(addr351);
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        §§goto(addr356);
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                }
                                                §§goto(addr286);
                                             }
                                             §§goto(addr299);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr310);
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr318);
                           }
                           §§goto(addr322);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr144);
               }
               §§goto(addr91);
            }
            §§goto(addr81);
         }
         §§goto(addr103);
      }
      
      public static function §_-F2§(param1:Vector.<§_-ix§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§_-ix§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§_-OS§);
         if(_loc24_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§_-EH§;
         §§push(param5.§_-OS§);
         if(_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§_-09U§;
         var _loc11_:Vector.<b2Vec2> = param5.§_-EH§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!(_loc25_ && param1))
         {
            §§push(_loc13_.x);
            if(!_loc25_)
            {
               §§push(§§pop() * §§pop());
               if(_loc24_)
               {
                  §§push(_loc12_.col2.x);
                  if(_loc24_)
                  {
                     addr87:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc25_)
                  {
                     addr93:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(_loc24_)
               {
                  §§push(_loc13_.x);
                  if(!_loc25_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc24_)
                     {
                        addr107:
                        §§push(_loc12_.col2.y);
                        if(_loc24_)
                        {
                           addr112:
                           §§push(§§pop() * _loc13_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc25_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc15_:* = §§pop();
                     §§push((_loc12_ = param6.R).col1.x);
                     if(!(_loc25_ && param1))
                     {
                        §§push(_loc14_);
                        if(_loc24_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc24_ || b2Collision)
                           {
                              addr150:
                              §§push(_loc12_.col1.y);
                              if(!_loc25_)
                              {
                                 addr157:
                                 §§push(§§pop() + §§pop() * _loc15_);
                                 if(_loc24_ || param1)
                                 {
                                    addr165:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc16_:* = §§pop();
                                 if(_loc24_ || param3)
                                 {
                                    §§push(_loc12_.col2.x);
                                    if(_loc24_ || param3)
                                    {
                                       §§push(_loc14_);
                                       if(!(_loc25_ && param2))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc25_)
                                          {
                                             §§push(_loc12_.col2.y);
                                             if(!(_loc25_ && param3))
                                             {
                                                addr205:
                                                §§push(§§pop() * _loc15_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc25_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc25_)
                                                {
                                                }
                                                addr220:
                                                _loc14_ = §§pop();
                                                addr221:
                                                var _loc17_:* = 0;
                                                var _loc18_:* = Number(Number.MAX_VALUE);
                                                var _loc19_:int = 0;
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(_loc19_);
                                                   if(_loc24_ || param3)
                                                   {
                                                      §§push(_loc9_);
                                                      if(!(_loc25_ && param3))
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§push(_loc17_);
                                                            if(_loc24_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         _loc13_ = _loc11_[_loc19_];
                                                         if(_loc24_)
                                                         {
                                                            §§push(_loc14_);
                                                            if(!_loc25_)
                                                            {
                                                               §§push(_loc13_.x);
                                                               if(_loc24_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc25_)
                                                                  {
                                                                     §§push(_loc15_);
                                                                     if(_loc24_ || param2)
                                                                     {
                                                                        §§push(§§pop() * _loc13_.y);
                                                                        if(_loc24_ || param2)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc25_)
                                                                           {
                                                                              addr292:
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc25_ && param2))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    addr303:
                                                                                    _loc23_ = §§pop();
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       addr307:
                                                                                       if(§§pop() < _loc18_)
                                                                                       {
                                                                                          loop5:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc23_);
                                                                                             if(!(_loc25_ && param2))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr317:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc18_ = §§pop();
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop3:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(!_loc25_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                            }
                                                                                                            _loc17_ = §§pop();
                                                                                                            addr256:
                                                                                                            addr248:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  if(!_loc25_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            addr248:
                                                                                                            while(false)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr316:
                                                                                             }
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc19_++;
                                                                                          if(!(_loc25_ && b2Collision))
                                                                                          {
                                                                                             §§goto(addr248);
                                                                                          }
                                                                                          §§goto(addr256);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               §§goto(addr307);
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      addr341:
                                                      var _loc21_:* = §§pop();
                                                      if(!_loc25_)
                                                      {
                                                         §§push(1);
                                                         if(_loc24_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc25_ && param1))
                                                            {
                                                               if(§§pop() < _loc9_)
                                                               {
                                                                  §§push(_loc21_);
                                                                  if(!_loc25_)
                                                                  {
                                                                     addr363:
                                                                     addr362:
                                                                     §§push(int(§§pop() + 1));
                                                                     if(_loc24_)
                                                                     {
                                                                        addr366:
                                                                     }
                                                                     addr370:
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(_loc24_)
                                                                  {
                                                                     §§goto(addr370);
                                                                  }
                                                               }
                                                               var _loc22_:* = §§pop();
                                                               _loc20_ = param1[0];
                                                               _loc13_ = _loc10_[_loc21_];
                                                               _loc12_ = param6.R;
                                                               if(!_loc25_)
                                                               {
                                                                  §§push(_loc20_.v);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(param6.position);
                                                                     addr577:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr578:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_.col1);
                                                                           addr580:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr581:
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_.x);
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§push(_loc12_.col2);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc25_ && b2Collision))
                                                                                          {
                                                                                             §§push(_loc13_.y);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr601:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                             }
                                                                                             addr600:
                                                                                          }
                                                                                          §§goto(addr601);
                                                                                          addr524:
                                                                                          §§push(_loc12_.col2);
                                                                                          if(!(_loc24_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc24_ || param1)
                                                                                          {
                                                                                             §§push(_loc13_.y);
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                addr546:
                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                if(!(_loc25_ && b2Collision))
                                                                                                {
                                                                                                   if(_loc25_ && param3)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc24_ || param1)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      loop19:
                                                                                                      for(; _loc24_; while(true)
                                                                                                      {
                                                                                                         if(!(_loc25_ && b2Collision))
                                                                                                         {
                                                                                                            §§push(_loc20_.id);
                                                                                                            if(!(_loc25_ && param3))
                                                                                                            {
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§_-9h§);
                                                                                                                  if(!(_loc25_ && b2Collision))
                                                                                                                  {
                                                                                                                     if(!_loc25_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           if(!(_loc25_ && b2Collision))
                                                                                                                           {
                                                                                                                              §§pop().§_-Cq§ = §§pop();
                                                                                                                              if(_loc25_ && param3)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc24_ || param2)
                                                                                                                              {
                                                                                                                                 while(false)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 _loc20_ = param1[1];
                                                                                                                                 _loc13_ = _loc10_[_loc22_];
                                                                                                                                 _loc12_ = param6.R;
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc20_.v);
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param6.position);
                                                                                                                                       addr792:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          addr793:
                                                                                                                                          loop33:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_.col1);
                                                                                                                                             addr795:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                loop35:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc13_.x);
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_.col2);
                                                                                                                                                         addr803:
                                                                                                                                                         addr740:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            addr804:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_.y);
                                                                                                                                                               addr806:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc24_ || param3))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc12_.col2);
                                                                                                                                                         if(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               addr756:
                                                                                                                                                               if(!_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_.y);
                                                                                                                                                                  if(!(_loc25_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr768:
                                                                                                                                                                     §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           loop44:
                                                                                                                                                                           while(!_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc20_.id);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().§_-9h§);
                                                                                                                                                                                 addr680:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param4);
                                                                                                                                                                                    loop47:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§_-uj§ = §§pop();
                                                                                                                                                                                       addr682:
                                                                                                                                                                                       while(!_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc20_.id);
                                                                                                                                                                                             loop50:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().§_-9h§);
                                                                                                                                                                                                addr671:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                   addr672:
                                                                                                                                                                                                   while(_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().§_-09v§ = §§pop();
                                                                                                                                                                                                      continue loop50;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop44;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc25_ && b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().§_-9h§);
                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                       if(!(_loc25_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().§_-Cq§ = §§pop();
                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc25_ && param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr682);
                                                                                                                                                                                             }
                                                                                                                                                                                             return;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr675);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr672);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr680);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr671);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop33;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr806);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                                  addr809:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  addr808:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr809);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr807:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr768);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr803);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr807);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr684);
                                                                                                                                 addr446:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr468);
                                                                                                                              }
                                                                                                                              §§goto(addr448);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr467);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr453);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr466);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr452);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr465);
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      },§§goto(addr451))
                                                                                                      {
                                                                                                         §§push(_loc20_.id);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§_-9h§);
                                                                                                            addr466:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param4);
                                                                                                               addr467:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().§_-uj§ = §§pop();
                                                                                                                  addr468:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr448:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc20_.id);
                                                                                                                        addr451:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§_-9h§);
                                                                                                                           addr452:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc21_);
                                                                                                                              addr453:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().§_-09v§ = §§pop();
                                                                                                                                 continue loop19;
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
                                                                                                else
                                                                                                {
                                                                                                   addr602:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   addr602:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   continue loop9;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr600);
                                                                                             }
                                                                                             §§goto(addr602);
                                                                                          }
                                                                                          §§goto(addr546);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr602);
                                                                                 }
                                                                                 §§goto(addr601);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr446);
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      §§goto(addr366);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr341);
                                                §§push(§§pop());
                                             }
                                          }
                                          _loc15_ = §§pop();
                                          if(!_loc25_)
                                          {
                                             addr216:
                                             §§push(_loc16_);
                                             if(!_loc25_)
                                             {
                                                §§goto(addr220);
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr112);
               }
               §§goto(addr107);
            }
            §§goto(addr87);
         }
         §§goto(addr93);
      }
      
      private static function §_-um§() : Vector.<§_-ix§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§_-ix§> = new Vector.<§_-ix§>(2);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_[0] = new §_-ix§();
         }
         do
         {
            _loc1_[1] = new §_-ix§();
         }
         while(_loc2_ && _loc2_);
         
         return _loc1_;
      }
      
      public static function §_-r1§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§_-ix§ = null;
         var _loc12_:b2PolygonShape = null;
         var _loc13_:b2PolygonShape = null;
         var _loc14_:b2Transform = null;
         var _loc15_:b2Transform = null;
         var _loc16_:* = 0;
         var _loc17_:uint = 0;
         var _loc20_:b2Mat22 = null;
         var _loc25_:b2Vec2 = null;
         var _loc39_:* = 0;
         var _loc42_:* = NaN;
         var _loc43_:b2ManifoldPoint = null;
         var _loc44_:* = NaN;
         var _loc45_:* = NaN;
         if(!(_loc47_ && param2))
         {
            param1.§_-XO§ = 0;
         }
         var _loc7_:Number = param2.§_-0CZ§ + param4.§_-0CZ§;
         var _loc8_:* = 0;
         if(_loc46_)
         {
            §_-0EE§[0] = _loc8_;
         }
         §§push(§_-F3§(§_-0EE§,param2,param3,param4,param5));
         if(_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc46_ || param3)
         {
            §§push(int(§_-0EE§[0]));
            if(!_loc47_)
            {
               _loc8_ = §§pop();
               if(_loc46_)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(_loc46_)
                     {
                        return;
                     }
                     addr111:
                     §§push(0);
                  }
               }
               §§goto(addr111);
            }
            var _loc10_:* = §§pop();
            if(_loc46_ || b2Collision)
            {
               §_-gq§[0] = _loc10_;
            }
            §§push(§_-F3§(§_-gq§,param4,param5,param2,param3));
            if(_loc46_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc46_)
            {
               _loc10_ = int(§_-gq§[0]);
               if(!(_loc47_ && param2))
               {
                  §§push(_loc11_);
                  if(!_loc47_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(_loc46_)
                        {
                           §§goto(addr161);
                        }
                     }
                     §§push(0.98);
                     if(_loc46_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!(_loc47_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(_loc46_)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(!(_loc47_ && param1))
                     {
                        §§push(_loc9_);
                        if(_loc46_ || param3)
                        {
                           addr206:
                           §§push(§§pop() * §§pop());
                           if(!(_loc47_ && param2))
                           {
                              §§push(_loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr207:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(_loc46_)
                              {
                                 §§push(_loc10_);
                                 if(_loc46_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    addr249:
                                    §§push(1);
                                    if(!(_loc46_ || param3))
                                    {
                                       continue;
                                    }
                                    _loc17_ = §§pop();
                                    if(!_loc47_)
                                    {
                                       if(false)
                                       {
                                          loop43:
                                          while(true)
                                          {
                                             param1.§_-1c§ = b2Manifold.§_-vN§;
                                             addr242:
                                             addr255:
                                             while(_loc46_ || b2Collision)
                                             {
                                                §§goto(addr249);
                                             }
                                             while(true)
                                             {
                                                continue loop43;
                                             }
                                          }
                                       }
                                       addr306:
                                       var _loc21_:Vector.<§_-ix§> = §_-uE§;
                                       if(!_loc47_)
                                       {
                                          §_-F2§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                                       }
                                       §§push(_loc12_.§_-OS§);
                                       if(_loc46_ || b2Collision)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var _loc22_:* = §§pop();
                                       var _loc23_:Vector.<b2Vec2>;
                                       var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§_-09U§)[_loc16_];
                                       if(_loc46_)
                                       {
                                          if(_loc16_ + 1 < _loc22_)
                                          {
                                             addr346:
                                             _loc25_ = _loc23_[int(_loc16_ + 1)];
                                          }
                                          else
                                          {
                                             _loc25_ = _loc23_[0];
                                          }
                                          var _loc26_:b2Vec2;
                                          §§push(_loc26_ = §_-I2§);
                                          §§push(_loc25_.x);
                                          if(!_loc47_)
                                          {
                                             §§push(_loc24_.x);
                                             if(!(_loc47_ && param2))
                                             {
                                                addr379:
                                                §§push(§§pop() - §§pop());
                                                §§push(_loc25_.y);
                                                if(!(_loc47_ && b2Collision))
                                                {
                                                   §§push(§§pop() - _loc24_.y);
                                                }
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             if(_loc46_)
                                             {
                                                _loc26_.Normalize();
                                             }
                                             var _loc27_:b2Vec2;
                                             (_loc27_ = §_-Aj§).x = _loc26_.y;
                                             if(!(_loc47_ && param3))
                                             {
                                                §§push(_loc27_);
                                                §§push(_loc26_.x);
                                                if(!(_loc47_ && param3))
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().y = §§pop();
                                             }
                                             var _loc28_:b2Vec2;
                                             §§push(_loc28_ = §_-kn§);
                                             §§push(0.5);
                                             if(_loc46_)
                                             {
                                                §§push(_loc24_.x);
                                                if(_loc46_)
                                                {
                                                   §§push(_loc25_.x);
                                                   if(!(_loc47_ && param1))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc46_ || param3)
                                                      {
                                                         addr472:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(0.5);
                                                         if(!(_loc47_ && param1))
                                                         {
                                                            §§push(_loc24_.y);
                                                            if(_loc46_ || param2)
                                                            {
                                                               §§push(§§pop() + _loc25_.y);
                                                            }
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         var _loc29_:b2Vec2 = §_-4F§;
                                                         _loc20_ = _loc14_.R;
                                                         if(_loc46_)
                                                         {
                                                            §§push(_loc29_);
                                                            §§push(_loc20_.col1.x);
                                                            if(!(_loc47_ && param3))
                                                            {
                                                               §§push(_loc26_.x);
                                                               if(!_loc47_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc47_)
                                                                  {
                                                                     addr500:
                                                                     §§push(_loc20_.col2.x);
                                                                     if(!_loc47_)
                                                                     {
                                                                        addr505:
                                                                        §§push(§§pop() * _loc26_.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§pop().x = §§pop();
                                                                  if(_loc46_)
                                                                  {
                                                                     §§push(_loc29_);
                                                                     §§push(_loc20_.col1.y);
                                                                     if(!_loc47_)
                                                                     {
                                                                        §§push(_loc26_.x);
                                                                        if(_loc46_)
                                                                        {
                                                                           addr539:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc46_)
                                                                           {
                                                                              §§push(_loc20_.col2.y);
                                                                              if(!(_loc47_ && param1))
                                                                              {
                                                                                 §§push(§§pop() * _loc26_.y);
                                                                              }
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           addr540:
                                                                           var _loc30_:b2Vec2;
                                                                           §§push(_loc30_ = s_tangent2);
                                                                           §§push(_loc29_.x);
                                                                           if(_loc46_ || param2)
                                                                           {
                                                                              §§push(-§§pop());
                                                                           }
                                                                           §§pop().x = §§pop();
                                                                           if(!(_loc47_ && param1))
                                                                           {
                                                                              §§push(_loc30_);
                                                                              §§push(_loc29_.y);
                                                                              if(_loc46_ || param3)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                           }
                                                                           var _loc31_:b2Vec2;
                                                                           (_loc31_ = §_-KT§).x = _loc29_.y;
                                                                           if(!_loc47_)
                                                                           {
                                                                              §§push(_loc31_);
                                                                              §§push(_loc29_.x);
                                                                              if(_loc46_ || param1)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                           }
                                                                           var _loc32_:b2Vec2 = s_v11;
                                                                           var _loc33_:b2Vec2 = s_v12;
                                                                           if(!_loc47_)
                                                                           {
                                                                              §§push(_loc32_);
                                                                              §§push(_loc14_.position.x);
                                                                              if(!_loc47_)
                                                                              {
                                                                                 §§push(_loc20_.col1.x);
                                                                                 if(!(_loc47_ && param3))
                                                                                 {
                                                                                    §§push(_loc24_.x);
                                                                                    if(_loc46_ || b2Collision)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc46_ || param1)
                                                                                       {
                                                                                          addr797:
                                                                                          §§push(_loc20_.col2.x);
                                                                                          if(_loc46_)
                                                                                          {
                                                                                             addr805:
                                                                                             §§push(§§pop() + §§pop() * _loc24_.y);
                                                                                          }
                                                                                          §§goto(addr805);
                                                                                       }
                                                                                       addr807:
                                                                                       §§pop().x = §§pop() + §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc32_);
                                                                                          §§push(_loc14_.position.y);
                                                                                          if(!(_loc47_ && b2Collision))
                                                                                          {
                                                                                             §§push(_loc20_.col1.y);
                                                                                             if(_loc46_)
                                                                                             {
                                                                                                §§push(_loc24_.x);
                                                                                                if(_loc46_ || b2Collision)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc46_)
                                                                                                   {
                                                                                                      addr759:
                                                                                                      §§push(_loc20_.col2.y);
                                                                                                      if(_loc46_ || param3)
                                                                                                      {
                                                                                                         addr755:
                                                                                                         §§push(§§pop() * _loc24_.y);
                                                                                                      }
                                                                                                      §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                      loop7:
                                                                                                      for(; _loc46_; if(!(_loc46_ || param3))
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(false)
                                                                                                      {
                                                                                                         §§goto(addr660);
                                                                                                      },§§push(_loc31_.x),if(_loc46_ || param3)
                                                                                                      {
                                                                                                         §§push(_loc32_.x);
                                                                                                         if(!(_loc47_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc47_ && param2))
                                                                                                            {
                                                                                                               §§push(_loc31_.y);
                                                                                                               if(_loc46_ || param1)
                                                                                                               {
                                                                                                                  addr844:
                                                                                                                  §§push(§§pop() * _loc32_.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc47_ && param1))
                                                                                                               {
                                                                                                                  addr855:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc34_:* = §§pop();
                                                                                                               §§push(_loc29_.x);
                                                                                                               if(!_loc47_)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(_loc46_)
                                                                                                                  {
                                                                                                                     §§push(_loc32_.x);
                                                                                                                     if(_loc46_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc47_)
                                                                                                                        {
                                                                                                                           §§push(_loc29_.y);
                                                                                                                           if(!_loc47_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc32_.y);
                                                                                                                              if(_loc46_ || param1)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr894:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc46_ || b2Collision)
                                                                                                                              {
                                                                                                                                 addr903:
                                                                                                                                 var _loc35_:Number = §§pop();
                                                                                                                                 §§push(_loc29_.x);
                                                                                                                                 if(_loc46_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc33_.x);
                                                                                                                                    if(_loc46_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!(_loc47_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc29_.y);
                                                                                                                                          if(!(_loc47_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc33_.y);
                                                                                                                                             if(_loc46_ || b2Collision)
                                                                                                                                             {
                                                                                                                                                addr946:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc47_)
                                                                                                                                                {
                                                                                                                                                   addr942:
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                }
                                                                                                                                                var _loc36_:Number = §§pop();
                                                                                                                                                var _loc37_:Vector.<§_-ix§> = s_clipPoints1;
                                                                                                                                                var _loc38_:Vector.<§_-ix§> = s_clipPoints2;
                                                                                                                                                if(_loc46_)
                                                                                                                                                {
                                                                                                                                                   §§push(§_-Z4§(_loc37_,_loc21_,_loc30_,_loc35_));
                                                                                                                                                   if(_loc46_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      loop11:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         loop12:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc39_ = §§pop();
                                                                                                                                                            loop13:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(2);
                                                                                                                                                               loop14:
                                                                                                                                                               while(§§pop() >= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  loop15:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§_-Z4§(_loc38_,_loc37_,_loc29_,_loc36_));
                                                                                                                                                                     if(!_loc47_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                        if(!_loc47_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc47_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc47_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc39_ = §§pop();
                                                                                                                                                                                 if(!_loc47_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1016:
                                                                                                                                                                                    if(_loc47_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc46_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(2);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop12;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc47_ && b2Collision)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop14;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc47_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc47_)
                                                                                                                                                                                 {
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop14;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr969:
                                                                                                                                                                                 if(!(_loc47_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          param1.§catch§.SetV(_loc27_);
                                                                                                                                                                                          loop18:
                                                                                                                                                                                          while(!(_loc47_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                param1.m_localPoint.SetV(_loc28_);
                                                                                                                                                                                                if(_loc47_ && b2Collision)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr969);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr978:
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop15;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr978);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1016);
                                                                                                                                                                  }
                                                                                                                                                                  var _loc40_:* = §§pop();
                                                                                                                                                                  var _loc41_:int = 0;
                                                                                                                                                                  loop19:
                                                                                                                                                                  while(_loc41_ < b2Settings.b2_maxManifoldPoints)
                                                                                                                                                                  {
                                                                                                                                                                     _loc6_ = _loc38_[_loc41_];
                                                                                                                                                                     if(_loc46_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc31_.x);
                                                                                                                                                                        if(_loc46_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.v.x);
                                                                                                                                                                           if(_loc46_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc47_ && b2Collision))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc31_.y);
                                                                                                                                                                                 if(_loc46_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc6_.v.y);
                                                                                                                                                                                    if(!(_loc47_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc46_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1108:
                                                                                                                                                                                          §§push(_loc34_);
                                                                                                                                                                                          if(_loc46_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1111:
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(!(_loc47_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1119:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(_loc46_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(!_loc47_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1125:
                                                                                                                                                                                                      _loc42_ = §§pop();
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() <= §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc46_ || param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1135:
                                                                                                                                                                                                      _loc43_ = param1.§_-Eg§[_loc40_];
                                                                                                                                                                                                      _loc20_ = _loc15_.R;
                                                                                                                                                                                                      if(_loc46_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_.v);
                                                                                                                                                                                                         loop20:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                            if(!(_loc47_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc15_.position);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                  addr1344:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1343:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1345:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               addr1346:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc44_ = §§pop();
                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1333:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop25:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_.v);
                                                                                                                                                                                                         if(!(_loc47_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                            if(!(_loc47_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc46_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc15_.position);
                                                                                                                                                                                                                  if(_loc46_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                     if(_loc46_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        if(_loc46_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1311:
                                                                                                                                                                                                                           if(_loc46_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1346);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc45_ = §§pop();
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc43_.m_localPoint);
                                                                                                                                                                                                                           loop27:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc44_);
                                                                                                                                                                                                                              addr1250:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc20_.col1.x);
                                                                                                                                                                                                                                 addr1253:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!_loc47_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc45_);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc20_.col1.y);
                                                                                                                                                                                                                                          addr1260:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             addr1261:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1257:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1262:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                       addr1263:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc46_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1260);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc47_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1163);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1348:
                                                                                                                                                                                                                              _loc41_++;
                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1344);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1346);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1343);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1345);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1311);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1333);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1348);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1125);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1111);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1125);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1119);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1125);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1108);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1135);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc46_)
                                                                                                                                                                  {
                                                                                                                                                                     param1.§_-XO§ = _loc40_;
                                                                                                                                                                  }
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1061);
                                                                                                                                                }
                                                                                                                                                §§goto(addr990);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc46_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr946);
                                                                                                                                 }
                                                                                                                                 §§goto(addr942);
                                                                                                                              }
                                                                                                                              §§goto(addr903);
                                                                                                                           }
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc46_)
                                                                                                                           {
                                                                                                                              §§goto(addr894);
                                                                                                                              §§push(_loc7_);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr903);
                                                                                                                     }
                                                                                                                     §§goto(addr894);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr903);
                                                                                                            }
                                                                                                            §§goto(addr855);
                                                                                                         }
                                                                                                         §§goto(addr844);
                                                                                                      },§§goto(addr855))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr660:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc33_);
                                                                                                               §§push(_loc14_.position.x);
                                                                                                               if(_loc46_ || b2Collision)
                                                                                                               {
                                                                                                                  §§push(_loc20_.col1.x);
                                                                                                                  if(_loc46_)
                                                                                                                  {
                                                                                                                     §§push(_loc25_.x);
                                                                                                                     if(_loc46_ || b2Collision)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc47_)
                                                                                                                        {
                                                                                                                           addr713:
                                                                                                                           §§push(_loc20_.col2.x);
                                                                                                                           if(!(_loc47_ && param2))
                                                                                                                           {
                                                                                                                              addr709:
                                                                                                                              §§push(§§pop() * _loc25_.y);
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                                                           do
                                                                                                                           {
                                                                                                                              §§push(_loc33_);
                                                                                                                              §§push(_loc14_.position.y);
                                                                                                                              if(!_loc46_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push(_loc20_.col1.y);
                                                                                                                              if(!(_loc47_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc25_.x);
                                                                                                                                 if(!_loc47_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc46_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       addr633:
                                                                                                                                       §§push(_loc20_.col2.y);
                                                                                                                                       if(!(_loc47_ && param2))
                                                                                                                                       {
                                                                                                                                          addr643:
                                                                                                                                          §§push(§§pop() * _loc25_.y);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr643);
                                                                                                                              }
                                                                                                                              §§goto(addr633);
                                                                                                                           }
                                                                                                                           while(§§pop().y = §§pop(), _loc47_);
                                                                                                                           
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr713);
                                                                                                                     }
                                                                                                                     §§goto(addr709);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr713);
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr759);
                                                                                                }
                                                                                                §§goto(addr755);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr759);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr805);
                                                                                 }
                                                                                 §§goto(addr797);
                                                                              }
                                                                              §§goto(addr807);
                                                                           }
                                                                           §§goto(addr763);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr539);
                                                                  }
                                                                  §§goto(addr540);
                                                               }
                                                               §§goto(addr505);
                                                            }
                                                            §§goto(addr500);
                                                         }
                                                         §§goto(addr539);
                                                      }
                                                      §§goto(addr472);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                             §§goto(addr472);
                                          }
                                          §§goto(addr379);
                                       }
                                       §§goto(addr346);
                                    }
                                    §§goto(addr242);
                                 }
                              }
                              §§goto(addr255);
                           }
                           else
                           {
                              _loc12_ = param2;
                              _loc13_ = param4;
                              _loc14_ = param3;
                              _loc15_ = param5;
                              if(!_loc47_)
                              {
                                 §§push(_loc8_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop1:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                       loop2:
                                       while(true)
                                       {
                                          addr294:
                                          while(true)
                                          {
                                             param1.§_-1c§ = b2Manifold.§_-f8§;
                                             addr299:
                                             while(true)
                                             {
                                                if(_loc46_)
                                                {
                                                   §§push(0);
                                                   if(_loc46_ || param3)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr292);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr207);
               }
            }
            addr161:
            return;
         }
         §§goto(addr111);
      }
      
      public static function §_-YC§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!(_loc16_ && param1))
         {
            param1.§_-XO§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§_-bq§;
         §§push(param3.position.x);
         if(!_loc16_)
         {
            §§push(_loc6_.col1.x);
            if(_loc17_)
            {
               §§push(_loc7_.x);
               if(_loc17_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_ || b2Collision)
                  {
                     addr63:
                     §§push(_loc6_.col2.x);
                     if(!(_loc16_ && b2Collision))
                     {
                        addr73:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc16_ && param3))
                  {
                     addr86:
                     var _loc8_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc17_ || param2)
                     {
                        §§push(_loc6_.col1.y);
                        if(_loc17_)
                        {
                           §§push(_loc7_.x);
                           if(!_loc16_)
                           {
                              addr118:
                              §§push(§§pop() * §§pop());
                              if(!_loc16_)
                              {
                                 §§push(_loc6_.col2.y);
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop() * _loc7_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_)
                              {
                                 addr121:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§_-bq§;
                              §§push(param5.position.x);
                              if(!(_loc16_ && param3))
                              {
                                 §§push(_loc6_.col1.x);
                                 if(_loc17_)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc17_)
                                       {
                                          addr153:
                                          §§push(_loc6_.col2.x);
                                          if(!(_loc16_ && param2))
                                          {
                                             addr163:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc16_)
                                       {
                                          addr171:
                                          var _loc10_:Number = §§pop();
                                          §§push(param5.position.y);
                                          if(_loc17_ || param3)
                                          {
                                             §§push(_loc6_.col1.y);
                                             if(_loc17_)
                                             {
                                                §§push(_loc7_.x);
                                                if(!(_loc16_ && b2Collision))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc17_ || param1)
                                                   {
                                                      addr214:
                                                      §§push(_loc6_.col2.y);
                                                      if(_loc17_)
                                                      {
                                                         addr219:
                                                         §§push(§§pop() * _loc7_.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc17_)
                                                   {
                                                      addr226:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc10_);
                                                   if(_loc17_ || param1)
                                                   {
                                                      §§push(§§pop() - _loc8_);
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc12_:* = §§pop();
                                                   §§push(_loc11_);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() - _loc9_);
                                                      if(_loc17_)
                                                      {
                                                         addr254:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc13_:* = §§pop();
                                                      §§push(_loc12_);
                                                      if(_loc17_)
                                                      {
                                                         §§push(_loc12_);
                                                         if(!(_loc16_ && b2Collision))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc16_ && param2))
                                                            {
                                                               addr275:
                                                               §§push(_loc13_);
                                                               if(!_loc16_)
                                                               {
                                                                  addr280:
                                                                  §§push(§§pop() + §§pop() * _loc13_);
                                                                  if(_loc17_)
                                                                  {
                                                                     addr283:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc14_:* = §§pop();
                                                                  var _loc15_:Number = param2.§_-0CZ§ + param4.§_-0CZ§;
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     §§push(_loc15_);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(§§pop() * _loc15_);
                                                                     }
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           param1.§_-1c§ = b2Manifold.§_-fd§;
                                                                           loop1:
                                                                           while(!(_loc16_ && param3))
                                                                           {
                                                                              param1.m_localPoint.SetV(param2.§_-bq§);
                                                                              while(true)
                                                                              {
                                                                                 param1.§catch§.§_-el§();
                                                                                 while(!_loc16_)
                                                                                 {
                                                                                    param1.§_-XO§ = 1;
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                param1.§_-Eg§[0].m_localPoint.SetV(param4.§_-bq§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc16_ && param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                             }
                                                                                             return;
                                                                                             addr316:
                                                                                             addr342:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr387:
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       break;
                                                                                       if(!(_loc17_ || param3))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr219);
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr171);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr86);
               }
               §§goto(addr73);
            }
            §§goto(addr63);
         }
         §§goto(addr86);
      }
      
      public static function §_-Wb§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = true;
         var _loc6_:b2ManifoldPoint = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Mat22 = null;
         var _loc17_:Number = NaN;
         var _loc31_:* = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:* = NaN;
         if(_loc35_)
         {
            param1.§_-XO§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§_-bq§;
         §§push(param5.position.x);
         if(_loc35_)
         {
            §§push(_loc12_.col1.x);
            if(_loc35_)
            {
               §§push(_loc11_.x);
               if(_loc35_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc35_ || param1)
                  {
                     addr77:
                     §§push(_loc12_.col2.x);
                     if(_loc35_)
                     {
                        addr85:
                        §§push(§§pop() + §§pop() * _loc11_.y);
                     }
                     §§goto(addr85);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc35_ || b2Collision)
                  {
                     addr94:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(!_loc34_)
                  {
                     §§push(_loc12_.col1.y);
                     if(!_loc34_)
                     {
                        §§push(_loc11_.x);
                        if(!_loc34_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc35_ || b2Collision)
                           {
                              addr118:
                              §§push(_loc12_.col2.y);
                              if(_loc35_)
                              {
                                 addr123:
                                 §§push(§§pop() * _loc11_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc35_ || param1)
                           {
                              addr135:
                              §§push(Number(§§pop()));
                           }
                           var _loc14_:* = §§pop();
                           if(!_loc34_)
                           {
                              §§push(_loc13_);
                              if(!(_loc34_ && param3))
                              {
                                 §§push(param3.position);
                                 if(!(_loc34_ && param3))
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc34_ && param1))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc34_ && param2))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc34_ && b2Collision))
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc35_ || param2)
                                             {
                                                §§push(_loc14_);
                                                if(!_loc34_)
                                                {
                                                   addr194:
                                                   addr193:
                                                   addr191:
                                                   §§push(§§pop() - param3.position.y);
                                                   if(_loc35_)
                                                   {
                                                      addr197:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc8_ = §§pop();
                                                   addr199:
                                                   _loc12_ = param3.R;
                                                   §§push(_loc7_);
                                                   if(!(_loc34_ && b2Collision))
                                                   {
                                                      §§push(_loc12_.col1.x);
                                                      if(_loc35_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc34_ && param1))
                                                         {
                                                            addr224:
                                                            §§push(_loc8_);
                                                            if(!_loc34_)
                                                            {
                                                               addr227:
                                                               §§push(§§pop() * _loc12_.col1.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc34_ && param1))
                                                            {
                                                               addr239:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc15_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(!(_loc34_ && b2Collision))
                                                            {
                                                               §§push(_loc12_.col2.x);
                                                               if(!_loc34_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc34_)
                                                                  {
                                                                     addr257:
                                                                     §§push(_loc8_);
                                                                     if(_loc34_ && param2)
                                                                     {
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               addr269:
                                                               §§push(§§pop() + §§pop() * _loc12_.col2.y);
                                                               if(_loc35_ || param2)
                                                               {
                                                                  addr277:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc16_:* = §§pop();
                                                               var _loc18_:* = 0;
                                                               §§push(-Number.MAX_VALUE);
                                                               if(_loc35_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc19_:* = §§pop();
                                                               var _loc20_:Number = param2.§_-0CZ§ + param4.§_-0CZ§;
                                                               §§push(param2.§_-OS§);
                                                               if(_loc35_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               var _loc21_:* = §§pop();
                                                               var _loc22_:Vector.<b2Vec2> = param2.§_-09U§;
                                                               var _loc23_:Vector.<b2Vec2> = param2.§_-EH§;
                                                               var _loc24_:int = 0;
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(_loc24_);
                                                                  if(!_loc34_)
                                                                  {
                                                                     §§push(_loc21_);
                                                                     if(!(_loc34_ && param2))
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           §§push(_loc18_);
                                                                           if(_loc35_ || param3)
                                                                           {
                                                                              addr519:
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc11_ = _loc22_[_loc24_];
                                                                           if(!(_loc34_ && b2Collision))
                                                                           {
                                                                              §§push(_loc15_);
                                                                              if(_loc35_ || param3)
                                                                              {
                                                                                 §§push(_loc11_.x);
                                                                                 if(_loc35_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc35_ || b2Collision)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc34_ && param2))
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc35_ || param3)
                                                                                          {
                                                                                             addr366:
                                                                                             §§push(_loc16_);
                                                                                             if(!_loc34_)
                                                                                             {
                                                                                                addr371:
                                                                                                §§push(§§pop() - _loc11_.y);
                                                                                                if(!(_loc34_ && param1))
                                                                                                {
                                                                                                   addr380:
                                                                                                   _loc8_ = Number(§§pop());
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                          §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                          if(!(_loc34_ && b2Collision))
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(_loc35_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc34_)
                                                                                                {
                                                                                                   §§push(_loc11_.y);
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc8_);
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc34_ && param1))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc34_ && b2Collision))
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc35_ || param1)
                                                                                                               {
                                                                                                                  _loc31_ = §§pop();
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     §§push(_loc20_);
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        addr444:
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc34_ && param1))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(_loc31_);
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           addr487:
                                                                                                                           if(§§pop() > _loc19_)
                                                                                                                           {
                                                                                                                              loop5:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc31_);
                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                 {
                                                                                                                                    addr496:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr497:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                          loop2:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop3:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc24_);
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                loop4:
                                                                                                                                                while(_loc35_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc24_++;
                                                                                                                                                      if(!(_loc34_ && b2Collision))
                                                                                                                                                      {
                                                                                                                                                         if(_loc35_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(true)
                                                                                                                                                            {
                                                                                                                                                               break loop3;
                                                                                                                                                            }
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         continue loop5;
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr496:
                                                                                                                                 }
                                                                                                                                 §§goto(addr497);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr456);
                                                                                                                        }
                                                                                                                        §§goto(addr496);
                                                                                                                     }
                                                                                                                     §§goto(addr487);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr444);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr497);
                                                                                                      }
                                                                                                      §§goto(addr487);
                                                                                                   }
                                                                                                   §§goto(addr444);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr487);
                                                                                          }
                                                                                          §§goto(addr496);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr380);
                                                                                 }
                                                                                 §§goto(addr371);
                                                                              }
                                                                              §§goto(addr380);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                     }
                                                                     var _loc25_:* = §§pop();
                                                                     if(_loc35_)
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc34_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc35_)
                                                                           {
                                                                              if(§§pop() < _loc21_)
                                                                              {
                                                                                 §§push(_loc25_);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    addr538:
                                                                                    addr537:
                                                                                    §§push(int(§§pop() + 1));
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       addr541:
                                                                                    }
                                                                                    addr546:
                                                                                    var _loc26_:* = §§pop();
                                                                                    var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                    var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                    if(!_loc34_)
                                                                                    {
                                                                                       §§push(_loc19_);
                                                                                       if(!(_loc34_ && param1))
                                                                                       {
                                                                                          if(§§pop() < Number.MIN_VALUE)
                                                                                          {
                                                                                             addr699:
                                                                                             param1.§_-XO§ = 1;
                                                                                             param1.§_-1c§ = b2Manifold.§_-f8§;
                                                                                             addr678:
                                                                                             if(_loc35_ || param3)
                                                                                             {
                                                                                                if(_loc35_)
                                                                                                {
                                                                                                   param1.§catch§.SetV(_loc23_[_loc18_]);
                                                                                                   addr663:
                                                                                                   addr654:
                                                                                                   §§push(param1.m_localPoint);
                                                                                                   §§push(0.5);
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      addr662:
                                                                                                      §§push(§§pop() * (_loc27_.x + _loc28_.x));
                                                                                                   }
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr664:
                                                                                                   §§push(param1.m_localPoint);
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      if(!(_loc34_ && b2Collision))
                                                                                                      {
                                                                                                         §§push(_loc27_.y);
                                                                                                         if(!_loc34_)
                                                                                                         {
                                                                                                            if(!(_loc34_ && param3))
                                                                                                            {
                                                                                                               §§push(_loc28_.y);
                                                                                                               if(!(_loc34_ && b2Collision))
                                                                                                               {
                                                                                                                  addr642:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     addr645:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        addr648:
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           param1.§_-Eg§[0].m_localPoint.SetV(param4.§_-bq§);
                                                                                                                           addr598:
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              if(_loc35_ || b2Collision)
                                                                                                                              {
                                                                                                                                 param1.§_-Eg§[0].m_id.key = 0;
                                                                                                                                 if(_loc34_ && b2Collision)
                                                                                                                                 {
                                                                                                                                    §§goto(addr598);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr678);
                                                                                                                           }
                                                                                                                           §§goto(addr648);
                                                                                                                        }
                                                                                                                        §§goto(addr664);
                                                                                                                     }
                                                                                                                     §§goto(addr663);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr662);
                                                                                                         }
                                                                                                         §§goto(addr642);
                                                                                                      }
                                                                                                      §§goto(addr645);
                                                                                                   }
                                                                                                   §§goto(addr654);
                                                                                                }
                                                                                                §§goto(addr699);
                                                                                             }
                                                                                             addr702:
                                                                                             §§goto(addr702);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc15_);
                                                                                             if(_loc35_ || param3)
                                                                                             {
                                                                                                §§push(_loc27_.x);
                                                                                                if(_loc35_ || param3)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc28_.x);
                                                                                                      if(!(_loc34_ && param3))
                                                                                                      {
                                                                                                         §§push(_loc27_.x);
                                                                                                         if(_loc35_ || b2Collision)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  addr747:
                                                                                                                  §§push(_loc16_);
                                                                                                                  if(_loc35_ || param1)
                                                                                                                  {
                                                                                                                     addr755:
                                                                                                                     §§push(_loc27_.y);
                                                                                                                     if(_loc35_ || param1)
                                                                                                                     {
                                                                                                                        addr764:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!(_loc34_ && param1))
                                                                                                                        {
                                                                                                                           addr772:
                                                                                                                           §§push(_loc28_.y);
                                                                                                                           if(!(_loc34_ && b2Collision))
                                                                                                                           {
                                                                                                                              addr781:
                                                                                                                              §§push(§§pop() - _loc27_.y);
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc34_ && param1))
                                                                                                                        {
                                                                                                                           addr794:
                                                                                                                           var _loc29_:Number = §§pop();
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(!_loc34_)
                                                                                                                           {
                                                                                                                              §§push(_loc28_.x);
                                                                                                                              if(!(_loc34_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!_loc34_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc27_.x);
                                                                                                                                    if(_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc28_.x);
                                                                                                                                       if(_loc35_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc35_)
                                                                                                                                          {
                                                                                                                                             addr821:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc34_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(_loc35_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                   if(!_loc34_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(!(_loc34_ && b2Collision))
                                                                                                                                                      {
                                                                                                                                                         addr854:
                                                                                                                                                         §§push(_loc27_.y);
                                                                                                                                                         if(_loc35_)
                                                                                                                                                         {
                                                                                                                                                            addr861:
                                                                                                                                                            §§push(§§pop() * (§§pop() - _loc28_.y));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr861);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc34_)
                                                                                                                                                      {
                                                                                                                                                         addr866:
                                                                                                                                                         var _loc30_:Number = §§pop();
                                                                                                                                                         if(!_loc34_)
                                                                                                                                                         {
                                                                                                                                                            addr1646:
                                                                                                                                                            §§push(_loc29_);
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr1495:
                                                                                                                                                                  if(_loc30_ > 0)
                                                                                                                                                                  {
                                                                                                                                                                     addr1305:
                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                     §§push(_loc27_.x);
                                                                                                                                                                     §§push(_loc28_.x);
                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1314:
                                                                                                                                                                              §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                              if(!(_loc34_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc34_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1330:
                                                                                                                                                                                    _loc32_ = §§pop();
                                                                                                                                                                                    addr1331:
                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1275:
                                                                                                                                                                                       §§push(0.5);
                                                                                                                                                                                       if(_loc35_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1286:
                                                                                                                                                                                          §§push(_loc27_.y);
                                                                                                                                                                                          §§push(_loc28_.y);
                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1289:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1293:
                                                                                                                                                                                                §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc33_ = §§pop();
                                                                                                                                                                                                   addr1296:
                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc34_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc35_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc35_ || b2Collision)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc32_);
                                                                                                                                                                                                                  if(_loc35_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc35_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           if(_loc35_ || b2Collision)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                                 if(!(_loc34_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                       if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc34_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc33_);
                                                                                                                                                                                                                                                         if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc35_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1178:
                                                                                                                                                                                                                                                                        if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1188:
                                                                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1198:
                                                                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1224:
                                                                                                                                                                                                                                                                                                   if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                         addr1234:
                                                                                                                                                                                                                                                                                                         if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1242:
                                                                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                                                                            if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1250:
                                                                                                                                                                                                                                                                                                                  if(_loc34_ && param3)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1331);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1472:
                                                                                                                                                                                                                                                                                                                     if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1401:
                                                                                                                                                                                                                                                                                                                        §§push(param1.§catch§);
                                                                                                                                                                                                                                                                                                                        if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                                                    if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1430:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr1433:
                                                                                                                                                                                                                                                                                                                                          if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1396:
                                                                                                                                                                                                                                                                                                                                             param1.§catch§.Normalize();
                                                                                                                                                                                                                                                                                                                                             addr1388:
                                                                                                                                                                                                                                                                                                                                             §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                                                                                                                                param1.§_-Eg§[0].m_localPoint.SetV(param4.§_-bq§);
                                                                                                                                                                                                                                                                                                                                                addr1370:
                                                                                                                                                                                                                                                                                                                                                if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      param1.§_-Eg§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                      addr1342:
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc35_ || param2))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1498:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                                                               if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1508:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1521);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1554);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1561);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1630);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1601);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1490);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1485);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1640);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1579);
                                                                                                                                                                                                                                                                                                                                                addr1392:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1595);
                                                                                                                                                                                                                                                                                                                                             addr1397:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1597);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1454);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1463);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1619);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1471);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1430);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1626);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1486);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1397);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1043:
                                                                                                                                                                                                                                                                                                               param1.§_-XO§ = 1;
                                                                                                                                                                                                                                                                                                               if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     param1.§_-1c§ = b2Manifold.§_-f8§;
                                                                                                                                                                                                                                                                                                                     addr1033:
                                                                                                                                                                                                                                                                                                                     if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1022:
                                                                                                                                                                                                                                                                                                                           param1.§catch§.x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                                                                                           addr1027:
                                                                                                                                                                                                                                                                                                                           §§push(param1.§catch§);
                                                                                                                                                                                                                                                                                                                           if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                                                                                    addr1002:
                                                                                                                                                                                                                                                                                                                                    if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(param1.§catch§);
                                                                                                                                                                                                                                                                                                                                             if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§pop().Normalize();
                                                                                                                                                                                                                                                                                                                                                   addr970:
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                                                                                                         addr937:
                                                                                                                                                                                                                                                                                                                                                         if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               param1.§_-Eg§[0].m_localPoint.SetV(param4.§_-bq§);
                                                                                                                                                                                                                                                                                                                                                               addr917:
                                                                                                                                                                                                                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        param1.§_-Eg§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                                        if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc35_ || b2Collision))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1043);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1392);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1601);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1002);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr970);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr917);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1342);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1033);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr937);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1701);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1027);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1388);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1296);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1401);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1027);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1622);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1433);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1250);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1486);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1396);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1022);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1043);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1639);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1602);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1305);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1330);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1701);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1530);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1242);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1646);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1654);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1495);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1293);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1234);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1293);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1198);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1654);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1224);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1561);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1224);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1305);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1286);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1701);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1521);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1567);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1568:
                                                                                                                                                                                                                                             §§goto(addr1565);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1289);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1178);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1565:
                                                                                                                                                                                                                                    if(§§pop() + §§pop() <= _loc20_ * _loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1486:
                                                                                                                                                                                                                                       param1.§_-XO§ = 1;
                                                                                                                                                                                                                                       param1.§_-1c§ = b2Manifold.§_-f8§;
                                                                                                                                                                                                                                       §§push(param1.§catch§);
                                                                                                                                                                                                                                       if(!(_loc34_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1454:
                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                             if(!(_loc34_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1463:
                                                                                                                                                                                                                                                §§push(_loc28_.x);
                                                                                                                                                                                                                                                if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1471:
                                                                                                                                                                                                                                                   §§pop().x = §§pop() - §§pop();
                                                                                                                                                                                                                                                   §§goto(addr1472);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1616:
                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1619:
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      addr1601:
                                                                                                                                                                                                                                                      param1.§catch§.Normalize();
                                                                                                                                                                                                                                                      addr1595:
                                                                                                                                                                                                                                                      param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                                                                      param1.§_-Eg§[0].m_localPoint.SetV(param4.§_-bq§);
                                                                                                                                                                                                                                                      addr1589:
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1654:
                                                                                                                                                                                                                                                         §§push(_loc15_ - _loc27_.x);
                                                                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                                                                         §§push(_loc27_.x);
                                                                                                                                                                                                                                                         if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            if(_loc35_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1684:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               §§push(_loc16_ - _loc27_.y);
                                                                                                                                                                                                                                                               if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1701);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1701:
                                                                                                                                                                                                                                                               §§goto(addr1699);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1699:
                                                                                                                                                                                                                                                            §§goto(addr1698);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1698:
                                                                                                                                                                                                                                                         addr1703:
                                                                                                                                                                                                                                                         addr1697:
                                                                                                                                                                                                                                                         §§goto(addr1695);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      param1.§_-Eg§[0].m_id.key = 0;
                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                      addr1579:
                                                                                                                                                                                                                                                      addr1597:
                                                                                                                                                                                                                                                      addr1622:
                                                                                                                                                                                                                                                      addr1602:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1630);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1629);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1627);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1606);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1601);
                                                                                                                                                                                                                                       addr1490:
                                                                                                                                                                                                                                       addr1485:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1198);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1508);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1188);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1314);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1286);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1224);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1654);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1305);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1275);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1234);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1370);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1521:
                                                                                                                                                                                                §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                if(!(_loc34_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1530:
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc35_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1554:
                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                  §§push(_loc28_.y);
                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1561:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1567);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1703);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1567:
                                                                                                                                                                                                                     §§goto(addr1566);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1697);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1684);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1566:
                                                                                                                                                                                                            §§goto(addr1568);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1695:
                                                                                                                                                                                                         §§goto(addr1700);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1701);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1561);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1700:
                                                                                                                                                                                                §§goto(addr1702);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1654);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1567);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1498);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1589);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1684);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1330);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1684);
                                                                                                                                                                        }
                                                                                                                                                                        addr1702:
                                                                                                                                                                        if(§§pop() + §§pop() * (_loc16_ - _loc27_.y) <= _loc20_ * _loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1640:
                                                                                                                                                                           param1.§_-XO§ = 1;
                                                                                                                                                                           param1.§_-1c§ = b2Manifold.§_-f8§;
                                                                                                                                                                           addr1630:
                                                                                                                                                                           param1.§catch§.x = _loc15_ - _loc27_.x;
                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1606:
                                                                                                                                                                              §§push(param1.§catch§);
                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                              if(!(_loc34_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1616);
                                                                                                                                                                                 §§push(_loc27_.y);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1619);
                                                                                                                                                                           }
                                                                                                                                                                           addr1644:
                                                                                                                                                                           §§goto(addr1644);
                                                                                                                                                                           addr1629:
                                                                                                                                                                           addr1627:
                                                                                                                                                                           addr1626:
                                                                                                                                                                           addr1639:
                                                                                                                                                                        }
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1554);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1498);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1654);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1701);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1486);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr866);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr854);
                                                                                                                                             }
                                                                                                                                             §§goto(addr866);
                                                                                                                                          }
                                                                                                                                          §§goto(addr854);
                                                                                                                                       }
                                                                                                                                       §§goto(addr861);
                                                                                                                                    }
                                                                                                                                    §§goto(addr821);
                                                                                                                                 }
                                                                                                                                 §§goto(addr866);
                                                                                                                              }
                                                                                                                              §§goto(addr854);
                                                                                                                           }
                                                                                                                           §§goto(addr866);
                                                                                                                        }
                                                                                                                        §§goto(addr794);
                                                                                                                     }
                                                                                                                     §§goto(addr781);
                                                                                                                  }
                                                                                                                  §§goto(addr772);
                                                                                                               }
                                                                                                               §§goto(addr794);
                                                                                                            }
                                                                                                            §§goto(addr755);
                                                                                                         }
                                                                                                         §§goto(addr764);
                                                                                                      }
                                                                                                      §§goto(addr772);
                                                                                                   }
                                                                                                   §§goto(addr747);
                                                                                                }
                                                                                                §§goto(addr755);
                                                                                             }
                                                                                             §§goto(addr794);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr747);
                                                                                    }
                                                                                    §§goto(addr663);
                                                                                 }
                                                                                 addr545:
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    §§goto(addr545);
                                                                                 }
                                                                              }
                                                                              §§goto(addr546);
                                                                           }
                                                                           §§goto(addr538);
                                                                        }
                                                                        §§goto(addr537);
                                                                     }
                                                                     §§goto(addr541);
                                                                  }
                                                                  §§goto(addr519);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr224);
                                                }
                                             }
                                             §§goto(addr199);
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr135);
               }
               §§goto(addr85);
            }
            §§goto(addr77);
         }
         §§goto(addr94);
      }
      
      public static function §_-Rd§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§_-Bv§;
         var _loc4_:b2Vec2 = param1.§_-MB§;
         §§push(_loc3_.x);
         if(_loc10_ || param2)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.y);
         if(!(_loc9_ && param2))
         {
            §§push(§§pop() - _loc4_.y);
            if(_loc10_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         _loc3_ = param1.§_-Bv§;
         _loc4_ = param2.§_-MB§;
         §§push(_loc3_.x);
         if(_loc10_ || b2Collision)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc9_ && param2))
            {
               addr89:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc10_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_ || _loc3_)
               {
                  addr105:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               if(_loc10_ || _loc3_)
               {
                  §§push(_loc5_);
                  loop0:
                  while(true)
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() > §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             return false;
                                          }
                                          else
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                addr195:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   loop11:
                                                   while(!_loc9_)
                                                   {
                                                      §§push(0);
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                            addr203:
                                                         }
                                                         §§push(§§pop() > §§pop());
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop3;
                                                         addr145:
                                                         §§push(0);
                                                         if(!(_loc10_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc10_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(_loc10_)
                                                                           {
                                                                              addr179:
                                                                              §§push(false);
                                                                              if(_loc10_ || b2Collision)
                                                                              {
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              addr256:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              break loop11;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr238:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!(_loc10_ || param2))
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr145);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           addr227:
                                                                           addr238:
                                                                        }
                                                                     }
                                                                     §§goto(addr179);
                                                                  }
                                                                  §§push(true);
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr216:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr227);
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr203);
                                                               addr158:
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             addr250:
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr195);
                                    }
                                 }
                              }
                              §§goto(addr256);
                           }
                        }
                     }
                  }
               }
               §§goto(addr250);
            }
            §§goto(addr105);
         }
         §§goto(addr89);
      }
   }
}
