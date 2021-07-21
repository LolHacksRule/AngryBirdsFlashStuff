package §5!o§
{
   import §"!9§.*;
   import §2"=§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §<!§:Vector.<§<!2§>;
      
      private static var s_clipPoints1:Vector.<§<!2§>;
      
      private static var s_clipPoints2:Vector.<§<!2§>;
      
      private static var §-s§:Vector.<int>;
      
      private static var §;![§:Vector.<int>;
      
      private static var §8;§:b2Vec2;
      
      private static var §0"&§:b2Vec2;
      
      private static var §]"'§:b2Vec2;
      
      private static var §7",§:b2Vec2;
      
      private static var §#!h§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            b2_nullFeature = 255;
         }
         loop0:
         while(true)
         {
            §<!§ = §+"=§();
            loop1:
            while(true)
            {
               s_clipPoints1 = §+"=§();
               while(true)
               {
                  s_clipPoints2 = §+"=§();
                  loop3:
                  for(; _loc2_ || _loc2_; loop5:
                  while(!(_loc1_ && _loc1_))
                  {
                     §8;§ = new b2Vec2();
                     loop6:
                     while(true)
                     {
                        §0"&§ = new b2Vec2();
                        while(_loc2_)
                        {
                           §]"'§ = new b2Vec2();
                           continue loop0;
                           loop11:
                           while(!(_loc1_ && b2Collision))
                           {
                              s_v11 = new b2Vec2();
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop6;
                                 }
                                 addr112:
                                 while(_loc2_ || _loc2_)
                                 {
                                    s_tangent2 = new b2Vec2();
                                    continue loop11;
                                 }
                                 while(!_loc1_)
                                 {
                                    §#!h§ = new b2Vec2();
                                    §§goto(addr89);
                                 }
                                 addr89:
                                 continue loop5;
                                 addr46:
                                 while(_loc2_ || _loc1_)
                                 {
                                    b2CollidePolyTempVec = new b2Vec2();
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          addr33:
                                          if(_loc2_ || b2Collision)
                                          {
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       continue loop11;
                                    }
                                 }
                              }
                              §§goto(addr166);
                           }
                        }
                        continue loop1;
                     }
                  })
                  {
                     §-s§ = new Vector.<int>(1);
                     while(true)
                     {
                        §;![§ = new Vector.<int>(1);
                        continue loop3;
                     }
                  }
               }
            }
            while(_loc2_ || _loc1_)
            {
               §7",§ = new b2Vec2();
               §§goto(addr112);
               §§goto(addr33);
            }
         }
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §-!o§(param1:Vector.<§<!2§>, param2:Vector.<§<!2§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§<!2§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§<!2§ = null;
         if(!_loc15_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(!_loc15_)
         {
            §§push(param3.x);
            if(_loc14_)
            {
               §§push(_loc7_.x);
               if(!_loc15_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc15_)
                  {
                     §§push(param3.y);
                     if(!(_loc15_ && param3))
                     {
                        §§push(_loc7_.y);
                        if(!_loc15_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc15_ && param3))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc15_)
                              {
                                 §§push(param4);
                                 if(_loc14_ || param2)
                                 {
                                    addr101:
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_)
                                    {
                                       addr104:
                                       §§push(Number(§§pop()));
                                       if(_loc14_)
                                       {
                                          _loc9_ = §§pop();
                                          addr108:
                                          §§push(param3.x);
                                          if(!(_loc15_ && b2Collision))
                                          {
                                             addr117:
                                             §§push(_loc8_.x);
                                             if(!_loc15_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc14_ || param2)
                                                {
                                                   addr129:
                                                   §§push(param3.y);
                                                   if(_loc14_ || param1)
                                                   {
                                                      addr140:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc14_)
                                                      {
                                                         addr143:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc14_ || param3)
                                                         {
                                                            addr152:
                                                            addr151:
                                                            §§push(§§pop() - param4);
                                                            if(_loc15_)
                                                            {
                                                            }
                                                            addr156:
                                                            var _loc10_:* = §§pop();
                                                            if(_loc14_ || param3)
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
                                                                           addr280:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr270:
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
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 addr256:
                                                                                 while(true)
                                                                                 {
                                                                                    param1[_loc6_++].Set(param2[1]);
                                                                                    addr266:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr256:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(_loc10_);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr179:
                                                                                          §§push(0);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   if(!(_loc15_ && b2Collision))
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         break loop6;
                                                                                                      }
                                                                                                      §§push(_loc9_);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr207:
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc14_ || b2Collision)
                                                                                                         {
                                                                                                            addr215:
                                                                                                            §§push(§§pop() - _loc10_);
                                                                                                         }
                                                                                                         if(!(_loc14_ || param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr236:
                                                                                                   if(!(_loc15_ && param2))
                                                                                                   {
                                                                                                      if(_loc14_ || param3)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                                         §§push(_loc7_.x);
                                                                                                         if(!(_loc15_ && b2Collision))
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(_loc8_.x);
                                                                                                               if(!(_loc15_ && b2Collision))
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc7_.x);
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§pop().x = §§pop();
                                                                                                         if(_loc14_ || param3)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            §§push(_loc7_.y);
                                                                                                            if(_loc14_ || param3)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(_loc8_.y);
                                                                                                                  if(!(_loc15_ && param2))
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
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            if(_loc9_ > 0)
                                                                                                            {
                                                                                                               addr363:
                                                                                                               _loc13_ = param2[0];
                                                                                                               if(_loc14_ || param2)
                                                                                                               {
                                                                                                                  _loc5_.id = _loc13_.id;
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr409);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc13_ = param2[1];
                                                                                                               if(_loc14_ || param3)
                                                                                                               {
                                                                                                                  _loc5_.id = _loc13_.id;
                                                                                                               }
                                                                                                            }
                                                                                                            _loc6_++;
                                                                                                            §§goto(addr409);
                                                                                                         }
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr270);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr256);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr266);
                                                                                             }
                                                                                             addr409:
                                                                                             return _loc6_;
                                                                                          }
                                                                                          §§goto(addr215);
                                                                                       }
                                                                                       §§goto(addr207);
                                                                                    }
                                                                                    §§goto(addr215);
                                                                                 }
                                                                                 §§goto(addr179);
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr156);
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr143);
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr104);
               }
               §§goto(addr101);
            }
            §§goto(addr129);
         }
         §§goto(addr108);
      }
      
      public static function §9!Y§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§2!7§);
         if(!_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§"!@§;
         var _loc8_:Vector.<b2Vec2> = param1.§8!o§;
         §§push(param4.§2!7§);
         if(_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§"!@§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!(_loc27_ && b2Collision))
         {
            §§push(_loc12_.x);
            if(_loc26_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!_loc27_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc26_ || param1)
                  {
                     addr92:
                     §§push(§§pop() + §§pop() * _loc12_.y);
                     if(!_loc27_)
                     {
                        addr95:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr92);
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(_loc26_)
               {
                  §§push(_loc12_.x);
                  if(_loc26_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc26_ || param3)
                     {
                        §§push(_loc11_.col2.y);
                        if(!_loc27_)
                        {
                           addr119:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc27_ && param2))
                        {
                           addr130:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc14_:* = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(_loc26_ || param1)
                     {
                        §§push(_loc13_);
                        if(!_loc27_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc26_ || b2Collision)
                           {
                              §§push(_loc11_.col1.y);
                              if(_loc26_ || b2Collision)
                              {
                                 addr167:
                                 §§push(§§pop() * _loc14_);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc27_ && b2Collision)
                              {
                              }
                              addr178:
                              var _loc15_:* = §§pop();
                              §§push(_loc11_.col2.x);
                              if(_loc26_)
                              {
                                 §§push(_loc13_);
                                 if(_loc26_ || param1)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc26_)
                                    {
                                       §§push(_loc11_.col2.y);
                                       if(!_loc27_)
                                       {
                                          addr202:
                                          §§push(§§pop() + §§pop() * _loc14_);
                                          if(_loc27_ && b2Collision)
                                          {
                                          }
                                          addr211:
                                          var _loc16_:* = §§pop();
                                          var _loc17_:* = 0;
                                          var _loc18_:Number = Number.MAX_VALUE;
                                          var _loc19_:int = 0;
                                          while(_loc19_ < _loc9_)
                                          {
                                             §§push((_loc12_ = _loc10_[_loc19_]).x);
                                             if(!_loc27_)
                                             {
                                                §§push(_loc15_);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc27_)
                                                   {
                                                      §§push(_loc12_.y);
                                                      if(_loc26_ || param2)
                                                      {
                                                         §§push(§§pop() * _loc16_);
                                                         if(!_loc27_)
                                                         {
                                                            addr250:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc26_ || param2)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc26_)
                                                                  {
                                                                     addr264:
                                                                     _loc25_ = §§pop();
                                                                     if(_loc26_ || param2)
                                                                     {
                                                                        addr273:
                                                                        addr272:
                                                                        if(§§pop() < _loc18_)
                                                                        {
                                                                           if(!(_loc27_ && param3))
                                                                           {
                                                                              §§push(_loc25_);
                                                                              if(!(_loc27_ && param1))
                                                                              {
                                                                                 addr290:
                                                                                 _loc18_ = §§pop();
                                                                                 if(!(_loc26_ || param3))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc19_);
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 _loc17_ = §§pop();
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              §§goto(addr290);
                                                                           }
                                                                        }
                                                                        _loc19_++;
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr273);
                                          }
                                          _loc12_ = _loc7_[param3];
                                          _loc11_ = param2.R;
                                          §§push(param2.position.x);
                                          if(_loc26_ || b2Collision)
                                          {
                                             §§push(_loc11_.col1.x);
                                             if(_loc26_)
                                             {
                                                §§push(_loc12_.x);
                                                if(!_loc27_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc27_ && b2Collision))
                                                   {
                                                      addr369:
                                                      §§push(_loc11_.col2.x);
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         addr365:
                                                         §§push(§§pop() * _loc12_.y);
                                                      }
                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                      if(_loc26_)
                                                      {
                                                         addr373:
                                                         var _loc20_:Number = §§pop();
                                                         §§push(param2.position.y);
                                                         if(_loc26_ || b2Collision)
                                                         {
                                                            §§push(_loc11_.col1.y);
                                                            if(_loc26_)
                                                            {
                                                               §§push(_loc12_.x);
                                                               if(_loc26_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr396:
                                                                     §§push(_loc11_.col2.y);
                                                                     if(!(_loc27_ && param1))
                                                                     {
                                                                        addr409:
                                                                        §§push(§§pop() + §§pop() * _loc12_.y);
                                                                     }
                                                                     §§goto(addr409);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc27_ && param2))
                                                                  {
                                                                     addr418:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc21_:* = §§pop();
                                                                  _loc12_ = _loc10_[_loc17_];
                                                                  _loc11_ = param5.R;
                                                                  §§push(param5.position.x);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(_loc11_.col1.x);
                                                                     if(!(_loc27_ && b2Collision))
                                                                     {
                                                                        §§push(_loc12_.x);
                                                                        if(_loc26_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc26_ || param2)
                                                                           {
                                                                              addr456:
                                                                              §§push(_loc11_.col2.x);
                                                                              if(_loc26_)
                                                                              {
                                                                                 addr464:
                                                                                 §§push(§§pop() + §§pop() * _loc12_.y);
                                                                              }
                                                                              §§goto(addr464);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc26_)
                                                                           {
                                                                              addr468:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc22_:* = §§pop();
                                                                           §§push(param5.position.y);
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§push(_loc11_.col1.y);
                                                                              if(_loc26_ || param1)
                                                                              {
                                                                                 §§push(_loc12_.x);
                                                                                 if(!(_loc27_ && param3))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       addr497:
                                                                                       §§push(_loc11_.col2.y);
                                                                                       if(!(_loc27_ && param1))
                                                                                       {
                                                                                          addr507:
                                                                                          §§push(§§pop() * _loc12_.y);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       addr515:
                                                                                       var _loc23_:* = Number(§§pop());
                                                                                       if(_loc26_ || param3)
                                                                                       {
                                                                                          §§push(_loc22_);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc27_ && param3))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      addr540:
                                                                                                      _loc22_ = §§pop();
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(_loc23_);
                                                                                                         if(!(_loc27_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc21_);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc26_ || param3)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     _loc23_ = §§pop();
                                                                                                                     addr566:
                                                                                                                     §§push(_loc22_);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        addr569:
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              addr575:
                                                                                                                              §§push(_loc23_);
                                                                                                                              if(_loc26_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * _loc14_);
                                                                                                                                 if(_loc27_ && param1)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr607);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr605:
                                                                                                                           addr607:
                                                                                                                           var _loc24_:* = §§pop();
                                                                                                                           return §§pop();
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr605);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr605);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr607);
                                                                                                         }
                                                                                                         §§goto(addr569);
                                                                                                      }
                                                                                                      §§goto(addr566);
                                                                                                   }
                                                                                                   §§goto(addr575);
                                                                                                }
                                                                                                §§goto(addr540);
                                                                                             }
                                                                                             §§goto(addr607);
                                                                                          }
                                                                                          §§goto(addr540);
                                                                                       }
                                                                                       §§goto(addr566);
                                                                                    }
                                                                                    §§goto(addr515);
                                                                                 }
                                                                                 §§goto(addr507);
                                                                              }
                                                                              §§goto(addr497);
                                                                           }
                                                                           §§goto(addr515);
                                                                        }
                                                                        §§goto(addr464);
                                                                     }
                                                                     §§goto(addr456);
                                                                  }
                                                                  §§goto(addr468);
                                                               }
                                                               §§goto(addr409);
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         §§goto(addr418);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                   §§goto(addr369);
                                                }
                                                §§goto(addr365);
                                             }
                                             §§goto(addr369);
                                          }
                                          §§goto(addr373);
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr211);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr178);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr119);
               }
               §§goto(addr130);
            }
            §§goto(addr92);
         }
         §§goto(addr95);
      }
      
      public static function §42§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§2!7§);
         if(!(_loc27_ && b2Collision))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§8!o§;
         _loc9_ = param5.R;
         _loc8_ = param4.§@"0§;
         §§push(param5.position.x);
         if(_loc26_ || param2)
         {
            §§push(_loc9_.col1.x);
            if(!_loc27_)
            {
               §§push(_loc8_.x);
               if(!_loc27_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc26_ || param1)
                  {
                     addr80:
                     §§push(_loc9_.col2.x);
                     if(_loc26_ || param1)
                     {
                        addr90:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc26_ || param2)
                  {
                     addr102:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(!(_loc27_ && param1))
                  {
                     §§push(_loc9_.col1.y);
                     if(_loc26_)
                     {
                        §§push(_loc8_.x);
                        if(!(_loc27_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc26_)
                           {
                              addr145:
                              §§push(_loc9_.col2.y);
                              if(_loc26_ || b2Collision)
                              {
                                 addr141:
                                 §§push(§§pop() * _loc8_.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(_loc26_)
                              {
                                 addr149:
                                 var _loc11_:* = Number(§§pop());
                                 _loc9_ = param3.R;
                                 _loc8_ = param2.§@"0§;
                                 if(!(_loc27_ && param1))
                                 {
                                    §§push(_loc10_);
                                    if(_loc26_)
                                    {
                                       §§push(param3.position);
                                       if(_loc26_ || param3)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc26_)
                                          {
                                             §§push(_loc9_.col1);
                                             if(_loc26_ || b2Collision)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc27_ && b2Collision))
                                                {
                                                   §§push(_loc8_.x);
                                                   if(_loc26_ || b2Collision)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc26_ || b2Collision)
                                                      {
                                                         §§push(_loc9_.col2);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc27_)
                                                            {
                                                               addr221:
                                                               §§push(_loc8_.y);
                                                               if(_loc26_ || param3)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc26_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc26_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc26_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc26_)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    addr253:
                                                                                    §§push(_loc11_);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       addr258:
                                                                                       §§push(param3.position.y);
                                                                                       if(_loc26_ || b2Collision)
                                                                                       {
                                                                                          §§push(_loc9_.col1);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             addr270:
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc26_ || param3)
                                                                                             {
                                                                                                addr278:
                                                                                                §§push(_loc8_.x);
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   addr282:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      addr287:
                                                                                                      addr285:
                                                                                                      §§push(_loc9_.col2.y);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr293:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc26_ || param1)
                                                                                                      {
                                                                                                         addr301:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            addr304:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc26_ || param3)
                                                                                                            {
                                                                                                               addr312:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc26_ || b2Collision)
                                                                                                               {
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  addr321:
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     addr324:
                                                                                                                     §§push(param3.R.col1.x);
                                                                                                                     if(!(_loc27_ && b2Collision))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           addr338:
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc27_ && b2Collision))
                                                                                                                           {
                                                                                                                              addr355:
                                                                                                                              var _loc12_:Number = §§pop();
                                                                                                                              §§push(_loc10_);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(param3.R.col2.x);
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          addr381:
                                                                                                                                          §§push(§§pop() + §§pop() * param3.R.col2.y);
                                                                                                                                          if(_loc26_ || param3)
                                                                                                                                          {
                                                                                                                                             addr389:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr381);
                                                                                                                                    }
                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                    var _loc14_:* = 0;
                                                                                                                                    §§push(-Number.MAX_VALUE);
                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc15_:* = §§pop();
                                                                                                                                    var _loc16_:int = 0;
                                                                                                                                    while(_loc16_ < _loc6_)
                                                                                                                                    {
                                                                                                                                       §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                                       if(_loc26_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          if(!(_loc27_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_.y);
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * _loc13_);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      addr442:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc26_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr450:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc26_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                            {
                                                                                                                                                               _loc25_ = §§pop();
                                                                                                                                                               if(_loc26_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  addr475:
                                                                                                                                                                  addr474:
                                                                                                                                                                  if(§§pop() > _loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc25_);
                                                                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr487:
                                                                                                                                                                        _loc15_ = Number(§§pop());
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        if(_loc26_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr487);
                                                                                                                                                                  }
                                                                                                                                                                  _loc16_++;
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr475);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr487);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr474);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr475);
                                                                                                                                             }
                                                                                                                                             §§goto(addr450);
                                                                                                                                          }
                                                                                                                                          §§goto(addr442);
                                                                                                                                       }
                                                                                                                                       §§goto(addr475);
                                                                                                                                    }
                                                                                                                                    §§push(§9!Y§(param2,param3,_loc14_,param4,param5));
                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc17_:* = §§pop();
                                                                                                                                    if(!(_loc27_ && b2Collision))
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                          if(!(_loc27_ && b2Collision))
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= 0)
                                                                                                                                             {
                                                                                                                                                addr553:
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         addr562:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr567:
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr571:
                                                                                                                                                      var _loc18_:* = §§pop();
                                                                                                                                                      §§push(§9!Y§(param2,param3,_loc18_,param4,param5));
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc19_:* = §§pop();
                                                                                                                                                      if(!(_loc27_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(_loc26_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < _loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr607:
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(_loc26_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        addr617:
                                                                                                                                                                        addr616:
                                                                                                                                                                        §§push(int(§§pop() + 1));
                                                                                                                                                                        if(!(_loc27_ && b2Collision))
                                                                                                                                                                        {
                                                                                                                                                                           addr625:
                                                                                                                                                                        }
                                                                                                                                                                        addr630:
                                                                                                                                                                        var _loc20_:* = §§pop();
                                                                                                                                                                        §§push(§9!Y§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                                        if(!(_loc27_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        var _loc21_:* = §§pop();
                                                                                                                                                                        if(!_loc27_)
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
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr1102:
                                                                                                                                                                                          loop57:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                             addr1073:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                addr1074:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   addr1075:
                                                                                                                                                                                                   while(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1101:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                          loop4:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                             loop5:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   param1[0] = _loc14_;
                                                                                                                                                                                                   loop6:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                         loop7:
                                                                                                                                                                                                         for(; _loc27_ && param2; while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                            if(_loc26_ || b2Collision)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc26_ || b2Collision)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr934);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1059);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1043);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr996);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr935);
                                                                                                                                                                                                         },continue loop4)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop8:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               loop9:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc23_ = §§pop();
                                                                                                                                                                                                                  loop10:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop11:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop12:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc24_);
                                                                                                                                                                                                                           if(_loc26_ || b2Collision)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(-1);
                                                                                                                                                                                                                              loop13:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                          if(_loc26_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             loop14:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            loop37:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                     addr935:
                                                                                                                                                                                                                                                                     loop28:
                                                                                                                                                                                                                                                                     while(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                                                                                                                        loop29:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              loop30:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§9!Y§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                                 loop31:
                                                                                                                                                                                                                                                                                 while(_loc26_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_ && b2Collision)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    loop32:
                                                                                                                                                                                                                                                                                    for(; _loc26_; while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                          §§goto(addr727);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1073);
                                                                                                                                                                                                                                                                                    })
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                loop33:
                                                                                                                                                                                                                                                                                                for(; _loc26_ || param3; while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop31;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                                                                })
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                                                                   loop34:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break loop30;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop11;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop28;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr817:
                                                                                                                                                                                                                                                                                                                        if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                                                                                                                 while(!_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop13;
                                                                                                                                                                                                                                                                                                                                 addr894:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1007:
                                                                                                                                                                                                                                                                                                                              addr1007:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                 addr1008:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr1009:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop30;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr817);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr891:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(_loc27_ && param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop37;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr835:
                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                              continue loop33;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                    break loop31;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr1083:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                       addr1068:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                          addr1069:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             continue loop8;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1082:
                                                                                                                                                                                                                                                                                                                                 addr962:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              break loop34;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr959:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1083);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                        break loop33;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr983:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr983);
                                                                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                                                                                                                           break loop28;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1060:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop10;
                                                                                                                                                                                                                                                                                                                  addr973:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr835);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                                            if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                        if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop14;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop7;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop32;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                                                                                                                     addr694:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1009);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr835);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               loop64:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr876:
                                                                                                                                                                                                                                                                                                                  loop15:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop8;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr891);
                                                                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break loop15;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(-1);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1079:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop64;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1102);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr727:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1082);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1074);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                      break loop32;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(!_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                   if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1007);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr996);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop1;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr786);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    loop20:
                                                                                                                                                                                                                                                                                    while(_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1007);
                                                                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             break loop20;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1037:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                       break loop30;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                    addr971:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                       addr972:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr973);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr996);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop11;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                                                                 addr1059:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1058:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1060);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                                                                        addr1043:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc22_ = §§pop();
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1037);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1051:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1069);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr934:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1068);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr932:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr876);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr972);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr971);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1075);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr894);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1008);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr932);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr959);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr962);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1051);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1058);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1079);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1101);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr694);
                                                                                                                                                                     }
                                                                                                                                                                     addr629:
                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr629);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr630);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr617);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr616);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr625);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr607);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr571);
                                                                                                                                                }
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr567);
                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr567);
                                                                                                                                       }
                                                                                                                                       §§goto(addr562);
                                                                                                                                    }
                                                                                                                                    §§goto(addr553);
                                                                                                                                 }
                                                                                                                                 §§goto(addr381);
                                                                                                                              }
                                                                                                                              §§goto(addr389);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr355);
                                                                                                                     }
                                                                                                                     addr345:
                                                                                                                     §§push(§§pop() * param3.R.col1.y);
                                                                                                                  }
                                                                                                                  §§goto(addr355);
                                                                                                               }
                                                                                                               §§goto(addr338);
                                                                                                            }
                                                                                                            §§goto(addr355);
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      §§goto(addr345);
                                                                                                   }
                                                                                                   §§goto(addr301);
                                                                                                }
                                                                                                §§goto(addr293);
                                                                                                §§push(§§pop() * _loc8_.y);
                                                                                             }
                                                                                             §§goto(addr301);
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    §§goto(addr312);
                                                                                 }
                                                                                 §§goto(addr321);
                                                                              }
                                                                              §§goto(addr324);
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         §§goto(addr287);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr270);
                                          }
                                          §§goto(addr304);
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr355);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr149);
               }
               §§goto(addr90);
            }
            §§goto(addr80);
         }
         §§goto(addr102);
      }
      
      public static function §4"1§(param1:Vector.<§<!2§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§<!2§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§2!7§);
         if(!_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§8!o§;
         §§push(param5.§2!7§);
         if(_loc25_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§"!@§;
         var _loc11_:Vector.<b2Vec2> = param5.§8!o§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc25_)
         {
            §§push(_loc13_.x);
            if(_loc25_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc24_ && param3))
               {
                  §§push(_loc12_.col2.x);
                  if(!_loc24_)
                  {
                     addr88:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc24_)
                  {
                     addr94:
                     §§push(Number(§§pop()));
                  }
                  var _loc14_:* = §§pop();
                  §§push(_loc12_.col1.y);
                  if(_loc25_ || b2Collision)
                  {
                     §§push(_loc13_.x);
                     if(!_loc24_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc24_ && param1))
                        {
                           §§push(_loc12_.col2.y);
                           if(_loc25_)
                           {
                              addr123:
                              §§push(§§pop() * _loc13_.y);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc25_)
                           {
                              addr129:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc15_:* = §§pop();
                        §§push((_loc12_ = param6.R).col1.x);
                        if(_loc25_ || param2)
                        {
                           §§push(_loc14_);
                           if(!_loc24_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc25_)
                              {
                                 §§push(_loc12_.col1.y);
                                 if(!(_loc24_ && param3))
                                 {
                                    addr161:
                                    §§push(§§pop() * _loc15_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc24_ && b2Collision))
                                 {
                                    addr172:
                                    var _loc16_:Number = §§pop();
                                    if(_loc25_)
                                    {
                                       §§push(_loc12_.col2.x);
                                       if(_loc25_)
                                       {
                                          §§push(_loc14_);
                                          if(!(_loc24_ && b2Collision))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc25_ || b2Collision)
                                             {
                                                §§push(_loc12_.col2.y);
                                                if(_loc25_)
                                                {
                                                   addr203:
                                                   §§push(§§pop() + §§pop() * _loc15_);
                                                   if(!_loc25_)
                                                   {
                                                   }
                                                   addr231:
                                                   _loc14_ = Number(§§pop());
                                                   addr232:
                                                   var _loc17_:* = 0;
                                                   var _loc18_:Number = Number.MAX_VALUE;
                                                   var _loc19_:int = 0;
                                                   while(true)
                                                   {
                                                      §§push(_loc19_);
                                                      if(_loc25_ || param2)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!_loc24_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(_loc17_);
                                                               if(_loc25_ || param2)
                                                               {
                                                                  break;
                                                               }
                                                               addr371:
                                                               §§push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               _loc13_ = _loc11_[_loc19_];
                                                               if(!(_loc24_ && param3))
                                                               {
                                                                  §§push(_loc14_);
                                                                  if(!_loc24_)
                                                                  {
                                                                     §§push(_loc13_.x);
                                                                     if(!(_loc24_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc24_ && param3))
                                                                        {
                                                                           §§push(_loc15_);
                                                                           if(_loc25_ || param3)
                                                                           {
                                                                              addr303:
                                                                              §§push(§§pop() * _loc13_.y);
                                                                              if(_loc25_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc24_ && param3))
                                                                                 {
                                                                                    addr316:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc25_ || b2Collision)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc25_)
                                                                                       {
                                                                                          addr327:
                                                                                          _loc23_ = §§pop();
                                                                                          if(_loc25_)
                                                                                          {
                                                                                             addr331:
                                                                                             if(§§pop() < _loc18_)
                                                                                             {
                                                                                                if(!(_loc24_ && param3))
                                                                                                {
                                                                                                   §§push(_loc23_);
                                                                                                   if(!(_loc24_ && param2))
                                                                                                   {
                                                                                                      addr348:
                                                                                                      _loc18_ = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                loop1:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr261:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(!(_loc24_ && b2Collision))
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      _loc17_ = §§pop();
                                                                                                      addr272:
                                                                                                      while(_loc25_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc19_++;
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr261);
                                                                                                }
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr348);
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                           §§goto(addr331);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                         }
                                                         var _loc21_:* = §§pop();
                                                         if(_loc25_)
                                                         {
                                                            §§push(1);
                                                            if(_loc25_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc25_ || b2Collision)
                                                               {
                                                                  if(§§pop() < _loc9_)
                                                                  {
                                                                     §§push(_loc21_);
                                                                     if(!_loc24_)
                                                                     {
                                                                        addr394:
                                                                        §§push(int(§§pop() + 1));
                                                                        if(!_loc24_)
                                                                        {
                                                                           addr401:
                                                                           §§push(int(§§pop()));
                                                                           addr397:
                                                                        }
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc25_)
                                                                     {
                                                                        §§goto(addr401);
                                                                     }
                                                                  }
                                                                  var _loc22_:* = §§pop();
                                                                  _loc20_ = param1[0];
                                                                  _loc13_ = _loc10_[_loc21_];
                                                                  _loc12_ = param6.R;
                                                                  if(_loc25_)
                                                                  {
                                                                     §§push(_loc20_.v);
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(param6.position);
                                                                        addr600:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr601:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc12_.col1);
                                                                              addr603:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr604:
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_.x);
                                                                                    if(_loc25_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(_loc12_.col2);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr619:
                                                                                             addr554:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc13_.y);
                                                                                                addr621:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr622:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§push(_loc12_.col2);
                                                                                             if(!(_loc25_ || param2))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc25_)
                                                                                             {
                                                                                                if(!(_loc24_ && param1))
                                                                                                {
                                                                                                   §§push(_loc13_.y);
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      addr578:
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(!(_loc25_ || b2Collision))
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc24_ && b2Collision))
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc20_.id);
                                                                                                            loop19:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§+!x§);
                                                                                                               addr482:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param4);
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§5"'§ = §§pop();
                                                                                                                     addr484:
                                                                                                                     while(!(_loc24_ && param3))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc20_.id);
                                                                                                                           loop24:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§+!x§);
                                                                                                                              addr473:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc21_);
                                                                                                                                 addr474:
                                                                                                                                 while(!_loc24_)
                                                                                                                                 {
                                                                                                                                    §§pop().§#"3§ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc20_.id);
                                                                                                                                       if(!(_loc24_ && param2))
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr621);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   addr624:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr619);
                                                                                                }
                                                                                                §§goto(addr621);
                                                                                             }
                                                                                             §§goto(addr578);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr624);
                                                                                       }
                                                                                       addr623:
                                                                                    }
                                                                                    §§goto(addr619);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr598:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc20_.v);
                                                                     if(!_loc24_)
                                                                     {
                                                                        §§push(param6.position);
                                                                        if(!(_loc24_ && param3))
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc25_ || b2Collision)
                                                                           {
                                                                              if(_loc25_ || param1)
                                                                              {
                                                                                 §§push(_loc12_.col1);
                                                                                 if(!(_loc24_ && param3))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc25_)
                                                                                    {
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(!(_loc24_ && b2Collision))
                                                                                          {
                                                                                             if(!(_loc24_ && b2Collision))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc25_)
                                                                                                {
                                                                                                   §§goto(addr554);
                                                                                                }
                                                                                                §§goto(addr578);
                                                                                             }
                                                                                             §§goto(addr622);
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                       §§goto(addr623);
                                                                                    }
                                                                                    §§goto(addr578);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr603);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr601);
                                                                              }
                                                                              §§goto(addr603);
                                                                           }
                                                                           §§goto(addr587);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr600);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr598);
                                                                     }
                                                                     §§goto(addr600);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr394);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr371);
                                                   §§push(int(§§pop()));
                                                   addr230:
                                                }
                                                §§goto(addr203);
                                             }
                                             §§push(Number(§§pop()));
                                             if(_loc25_ || b2Collision)
                                             {
                                                _loc15_ = §§pop();
                                                if(!(_loc24_ && param1))
                                                {
                                                   §§push(_loc16_);
                                                   if(!(_loc24_ && param2))
                                                   {
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr232);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr203);
                                 }
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr129);
               }
               §§goto(addr94);
            }
            §§goto(addr88);
         }
         §§goto(addr94);
      }
      
      private static function §+"=§() : Vector.<§<!2§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§<!2§> = new Vector.<§<!2§>(2);
         if(_loc3_ || _loc2_)
         {
            _loc1_[0] = new §<!2§();
         }
         do
         {
            _loc1_[1] = new §<!2§();
         }
         while(_loc2_ && _loc2_);
         
         return _loc1_;
      }
      
      public static function §>"8§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §9""§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!(_loc17_ && b2Collision))
         {
            param1.§<!c§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§6!B§;
         §§push(param3.position.x);
         if(_loc16_)
         {
            §§push(_loc6_.col1.x);
            if(_loc16_ || param1)
            {
               §§push(_loc7_.x);
               if(!(_loc17_ && param3))
               {
                  addr81:
                  §§push(§§pop() * §§pop());
                  if(_loc16_)
                  {
                     §§push(_loc6_.col2.x);
                     if(_loc16_ || param2)
                     {
                        §§push(§§pop() * _loc7_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc17_ && b2Collision))
                  {
                     addr89:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param3.position.y);
                  if(!(_loc17_ && param2))
                  {
                     §§push(_loc6_.col1.y);
                     if(_loc16_)
                     {
                        §§push(_loc7_.x);
                        if(!_loc17_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc17_ && b2Collision))
                           {
                              addr118:
                              §§push(_loc6_.col2.y);
                              if(_loc16_ || b2Collision)
                              {
                                 addr131:
                                 §§push(§§pop() + §§pop() * _loc7_.y);
                              }
                              §§goto(addr131);
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc17_ && param1))
                           {
                              addr140:
                              §§push(Number(§§pop()));
                           }
                           var _loc9_:* = §§pop();
                           _loc6_ = param5.R;
                           _loc7_ = param4.§6!B§;
                           §§push(param5.position.x);
                           if(_loc16_ || param3)
                           {
                              §§push(_loc6_.col1.x);
                              if(!(_loc17_ && param1))
                              {
                                 §§push(_loc7_.x);
                                 if(_loc16_ || param1)
                                 {
                                    addr206:
                                    §§push(§§pop() * §§pop());
                                    if(_loc16_ || param1)
                                    {
                                       §§push(_loc6_.col2.x);
                                       if(!_loc17_)
                                       {
                                          §§push(§§pop() * _loc7_.y);
                                       }
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc16_)
                                    {
                                       addr209:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(param5.position.y);
                                    if(!(_loc17_ && param2))
                                    {
                                       §§push(_loc6_.col1.y);
                                       if(!_loc17_)
                                       {
                                          §§push(_loc7_.x);
                                          if(_loc16_)
                                          {
                                             addr247:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc17_ && b2Collision))
                                             {
                                                §§push(_loc6_.col2.y);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() * _loc7_.y);
                                                }
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc16_ || b2Collision)
                                             {
                                                addr256:
                                                var _loc11_:Number = §§pop();
                                                §§push(_loc10_);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() - _loc8_);
                                                   if(_loc16_ || b2Collision)
                                                   {
                                                      addr269:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc12_:* = §§pop();
                                                   §§push(_loc11_);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop() - _loc9_);
                                                      if(_loc16_ || param1)
                                                      {
                                                         addr283:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc13_:* = §§pop();
                                                      §§push(_loc12_);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(_loc12_);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc17_)
                                                            {
                                                               §§push(_loc13_);
                                                               if(_loc16_ || param3)
                                                               {
                                                                  addr302:
                                                                  §§push(§§pop() * _loc13_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc16_ || param1)
                                                               {
                                                                  addr312:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc14_:* = §§pop();
                                                            var _loc15_:Number = param2.§;$§ + param4.§;$§;
                                                            if(_loc16_)
                                                            {
                                                               §§push(_loc14_);
                                                               §§push(_loc15_);
                                                               if(_loc16_ || param3)
                                                               {
                                                                  §§push(§§pop() * _loc15_);
                                                               }
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     param1.§="1§ = b2Manifold.§>§;
                                                                     while(true)
                                                                     {
                                                                        param1.m_localPoint.SetV(param2.§6!B§);
                                                                        loop2:
                                                                        while(_loc16_ || param1)
                                                                        {
                                                                           param1.§,"'§.§@!s§();
                                                                           loop3:
                                                                           do
                                                                           {
                                                                              if(!_loc16_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              if(!_loc17_)
                                                                              {
                                                                                 param1.§<!c§ = 1;
                                                                                 while(!_loc17_)
                                                                                 {
                                                                                    param1.§5!'§[0].m_localPoint.SetV(param4.§6!B§);
                                                                                    while(!_loc17_)
                                                                                    {
                                                                                       param1.§5!'§[0].m_id.key = 0;
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                           while(_loc17_ && param2);
                                                                           
                                                                           return;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                      §§goto(addr312);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr269);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr256);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr140);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr81);
         }
         §§goto(addr89);
      }
      
      public static function §5!%§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §;c§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§8! §;
         var _loc4_:b2Vec2 = param1.§;R§;
         §§push(_loc3_.x);
         if(_loc10_ || _loc3_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc9_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop() - _loc4_.y);
               if(!(_loc9_ && b2Collision))
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§8! §;
               _loc4_ = param2.§;R§;
               §§push(_loc3_.x);
               if(!(_loc9_ && param1))
               {
                  §§push(§§pop() - _loc4_.x);
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc7_:* = §§pop();
               §§push(_loc3_.y);
               if(!(_loc9_ && b2Collision))
               {
                  §§push(§§pop() - _loc4_.y);
                  if(!(_loc9_ && param1))
                  {
                     addr105:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  if(!(_loc9_ && b2Collision))
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        §§push(0);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() > §§pop());
                           while(true)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr261:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                if(!(_loc10_ || b2Collision))
                                                {
                                                   continue loop6;
                                                }
                                                §§push(0);
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc10_ || b2Collision))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         do
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(false);
                                                                     break;
                                                                  }
                                                                  addr248:
                                                                  addr212:
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     addr115:
                                                                     §§push(true);
                                                                     if(!(_loc10_ || b2Collision))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr290:
                                                                     while(true)
                                                                     {
                                                                        addr220:
                                                                        while(true)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     §§goto(addr212);
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr115);
                                                            }
                                                         }
                                                         while(_loc9_);
                                                         
                                                         if(_loc10_ || param2)
                                                         {
                                                            return §§pop();
                                                         }
                                                         continue;
                                                         addr197:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§pop();
                                                            §§goto(addr248);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr272);
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§push(0);
                                                   addr174:
                                                   continue loop3;
                                                   if(_loc9_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc10_ || param1)
                                                   {
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr197);
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr261);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr263);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr262);
                              }
                           }
                        }
                        if(!(_loc10_ || param2))
                        {
                           continue;
                        }
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr271);
               }
               §§goto(addr105);
            }
            §§goto(addr60);
         }
         §§goto(addr39);
      }
   }
}
