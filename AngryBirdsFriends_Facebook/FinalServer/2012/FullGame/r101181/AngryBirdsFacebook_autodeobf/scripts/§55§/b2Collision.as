package §55§
{
   import §#]§.*;
   import §4!!§.*;
   import §<!`§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §5Z§:Vector.<§6"1§>;
      
      private static var s_clipPoints1:Vector.<§6"1§>;
      
      private static var s_clipPoints2:Vector.<§6"1§>;
      
      private static var §%L§:Vector.<int>;
      
      private static var §]@§:Vector.<int>;
      
      private static var §@"!§:b2Vec2;
      
      private static var §+c§:b2Vec2;
      
      private static var §8I§:b2Vec2;
      
      private static var §1!x§:b2Vec2;
      
      private static var §57§:b2Vec2;
      
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
            loop0:
            while(true)
            {
               §5Z§ = §&!`§();
               while(true)
               {
                  s_clipPoints1 = §&!`§();
                  loop2:
                  while(true)
                  {
                     s_clipPoints2 = §&!`§();
                     while(true)
                     {
                        §%L§ = new Vector.<int>(1);
                        while(true)
                        {
                           §]@§ = new Vector.<int>(1);
                           loop5:
                           while(true)
                           {
                              §@"!§ = new b2Vec2();
                              while(true)
                              {
                                 §+c§ = new b2Vec2();
                                 addr139:
                                 addr60:
                                 while(true)
                                 {
                                    §8I§ = new b2Vec2();
                                    addr131:
                                    while(!_loc1_)
                                    {
                                    }
                                    continue loop2;
                                 }
                                 loop13:
                                 while(!(_loc1_ && b2Collision))
                                 {
                                    s_v12 = new b2Vec2();
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       continue loop13;
                                    }
                                    §§goto(addr131);
                                 }
                              }
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           s_tangent2 = new b2Vec2();
                           §§goto(addr73);
                        }
                        if(_loc2_ || _loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §1!x§ = new b2Vec2();
            §§goto(addr125);
         }
         §§goto(addr42);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §"q§(param1:Vector.<§6"1§>, param2:Vector.<§6"1§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§6"1§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§6"1§ = null;
         if(_loc14_ || b2Collision)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc14_ || param2)
         {
            §§push(param3.x);
            if(_loc14_)
            {
               §§push(_loc7_.x);
               if(_loc14_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc14_)
                  {
                     §§push(param3.y);
                     if(!(_loc15_ && param3))
                     {
                        addr88:
                        §§push(_loc7_.y);
                        if(_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc14_ || b2Collision)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc14_ || param1)
                              {
                                 §§push(param4);
                                 if(_loc14_ || param2)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc15_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_ || param3)
                                       {
                                          addr132:
                                          _loc9_ = §§pop();
                                          addr133:
                                          §§push(param3.x);
                                          if(!_loc15_)
                                          {
                                             addr137:
                                             §§push(_loc8_.x);
                                             if(_loc14_ || param3)
                                             {
                                                addr146:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc15_)
                                                {
                                                   addr149:
                                                   §§push(param3.y);
                                                   if(_loc14_ || b2Collision)
                                                   {
                                                      addr160:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc14_ || param3)
                                                      {
                                                         addr176:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc14_)
                                                         {
                                                            §§push(param4);
                                                         }
                                                         var _loc10_:* = §§pop();
                                                         if(!_loc15_)
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
                                                                     if(!(_loc15_ && param2))
                                                                     {
                                                                        param1[_loc6_++].Set(param2[0]);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr305:
                                                                  }
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 param1[_loc6_++].Set(param2[1]);
                                                                                 addr282:
                                                                                 while(!_loc15_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              addr272:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(_loc15_ && param3)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc10_);
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(_loc14_ || b2Collision)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       if(_loc14_ || param1)
                                                                                       {
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr258:
                                                                                                if(!(_loc14_ || b2Collision))
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                _loc11_ = §§pop();
                                                                                                addr266:
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                                §§push(_loc7_.x);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   if(!(_loc15_ && param3))
                                                                                                   {
                                                                                                      §§push(_loc8_.x);
                                                                                                      if(_loc14_ || param3)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc7_.x);
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().x = §§pop();
                                                                                                if(!(_loc15_ && param2))
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   §§push(_loc7_.y);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc14_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc8_.y);
                                                                                                         if(_loc14_)
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
                                                                                                      addr383:
                                                                                                      _loc13_ = param2[0];
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         _loc5_.id = _loc13_.id;
                                                                                                         if(_loc15_ && param2)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr429);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc13_ = param2[1];
                                                                                                      if(_loc14_ || param1)
                                                                                                      {
                                                                                                         _loc5_.id = _loc13_.id;
                                                                                                      }
                                                                                                   }
                                                                                                   _loc6_++;
                                                                                                   §§goto(addr429);
                                                                                                }
                                                                                                §§goto(addr383);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                    addr429:
                                                                                    return _loc6_;
                                                                                 }
                                                                                 addr249:
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(_loc14_ || b2Collision)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr258);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr247:
                                                                                 §§push(§§pop() - _loc10_);
                                                                              }
                                                                              §§goto(addr249);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc14_)
                                                      {
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr176);
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr137);
               }
               §§goto(addr88);
            }
            §§goto(addr149);
         }
         §§goto(addr133);
      }
      
      public static function §`"&§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§0y§);
         if(!_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§@"2§;
         var _loc8_:Vector.<b2Vec2> = param1.§6"!§;
         §§push(param4.§0y§);
         if(!(_loc27_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§@"2§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!(_loc27_ && b2Collision))
         {
            §§push(_loc12_.x);
            if(!_loc27_)
            {
               §§push(§§pop() * §§pop());
               if(_loc26_ || param1)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc26_ || param2)
                  {
                     addr94:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc27_ && param1))
                  {
                     addr105:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(!_loc27_)
               {
                  §§push(_loc12_.x);
                  if(_loc26_ || b2Collision)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc26_ || param1)
                     {
                        addr129:
                        §§push(_loc11_.col2.y);
                        if(_loc26_ || param2)
                        {
                           addr142:
                           §§push(§§pop() + §§pop() * _loc12_.y);
                           if(_loc26_)
                           {
                              addr145:
                              §§push(Number(§§pop()));
                           }
                           var _loc14_:* = §§pop();
                           §§push((_loc11_ = param5.R).col1.x);
                           if(!(_loc27_ && b2Collision))
                           {
                              §§push(_loc13_);
                              if(_loc26_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc26_ || param1)
                                 {
                                    addr177:
                                    §§push(_loc11_.col1.y);
                                    if(_loc26_ || b2Collision)
                                    {
                                       addr189:
                                       §§push(§§pop() + §§pop() * _loc14_);
                                       if(!_loc27_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 var _loc15_:* = §§pop();
                                 §§push(_loc11_.col2.x);
                                 if(_loc26_ || param2)
                                 {
                                    §§push(_loc13_);
                                    if(_loc26_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc26_)
                                       {
                                          §§push(_loc11_.col2.y);
                                          if(_loc26_)
                                          {
                                             addr215:
                                             §§push(§§pop() * _loc14_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc27_)
                                          {
                                             addr220:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc16_:* = §§pop();
                                          var _loc17_:* = 0;
                                          var _loc18_:Number = Number.MAX_VALUE;
                                          var _loc19_:int = 0;
                                          while(_loc19_ < _loc9_)
                                          {
                                             §§push((_loc12_ = _loc10_[_loc19_]).x);
                                             if(_loc26_ || param3)
                                             {
                                                §§push(_loc15_);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc27_)
                                                   {
                                                      §§push(_loc12_.y);
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         addr261:
                                                         §§push(§§pop() * _loc16_);
                                                         if(!(_loc27_ && param1))
                                                         {
                                                            addr270:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc26_)
                                                            {
                                                               addr273:
                                                               §§push(Number(§§pop()));
                                                               if(_loc26_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc26_)
                                                                  {
                                                                     addr279:
                                                                     _loc25_ = §§pop();
                                                                     addr294:
                                                                     addr295:
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        §§push(_loc18_);
                                                                     }
                                                                     _loc18_ = §§pop();
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        §§push(_loc19_);
                                                                        if(_loc26_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc17_ = §§pop();
                                                                        if(!_loc26_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     _loc19_++;
                                                                     continue;
                                                                  }
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(_loc25_);
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§goto(addr294);
                                                                        }
                                                                        §§goto(addr295);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr294);
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr279);
                                                }
                                                §§goto(addr261);
                                             }
                                             §§goto(addr273);
                                          }
                                          _loc12_ = _loc7_[param3];
                                          _loc11_ = param2.R;
                                          §§push(param2.position.x);
                                          if(_loc26_)
                                          {
                                             §§push(_loc11_.col1.x);
                                             if(!_loc27_)
                                             {
                                                §§push(_loc12_.x);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc27_ && param3))
                                                   {
                                                      addr355:
                                                      §§push(_loc11_.col2.x);
                                                      if(!_loc27_)
                                                      {
                                                         addr360:
                                                         §§push(§§pop() * _loc12_.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc27_)
                                                   {
                                                      addr367:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc20_:* = §§pop();
                                                   §§push(param2.position.y);
                                                   if(!(_loc27_ && param2))
                                                   {
                                                      §§push(_loc11_.col1.y);
                                                      if(_loc26_)
                                                      {
                                                         §§push(_loc12_.x);
                                                         if(_loc26_ || param3)
                                                         {
                                                            addr415:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc27_ && param3))
                                                            {
                                                               §§push(_loc11_.col2.y);
                                                               if(!(_loc27_ && param2))
                                                               {
                                                                  §§push(§§pop() * _loc12_.y);
                                                               }
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc27_ && b2Collision))
                                                            {
                                                               addr423:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            _loc12_ = _loc10_[_loc17_];
                                                            _loc11_ = param5.R;
                                                            §§push(param5.position.x);
                                                            if(_loc26_)
                                                            {
                                                               §§push(_loc11_.col1.x);
                                                               if(!(_loc27_ && param1))
                                                               {
                                                                  §§push(_loc12_.x);
                                                                  if(_loc26_ || b2Collision)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc27_ && param2))
                                                                     {
                                                                        addr480:
                                                                        §§push(_loc11_.col2.x);
                                                                        if(_loc26_ || param3)
                                                                        {
                                                                           addr476:
                                                                           §§push(§§pop() * _loc12_.y);
                                                                        }
                                                                        §§push(§§pop() + (§§pop() + §§pop()));
                                                                        if(_loc26_ || param1)
                                                                        {
                                                                           addr488:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc22_:* = §§pop();
                                                                        §§push(param5.position.y);
                                                                        if(!(_loc27_ && param3))
                                                                        {
                                                                           §§push(_loc11_.col1.y);
                                                                           if(_loc26_)
                                                                           {
                                                                              §§push(_loc12_.x);
                                                                              if(_loc26_ || param3)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc26_ || b2Collision)
                                                                                 {
                                                                                    addr531:
                                                                                    §§push(_loc11_.col2.y);
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       addr527:
                                                                                       §§push(§§pop() * _loc12_.y);
                                                                                    }
                                                                                    §§push(§§pop() + (§§pop() + §§pop()));
                                                                                    if(!(_loc27_ && param3))
                                                                                    {
                                                                                       addr539:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc23_:* = §§pop();
                                                                                    if(!(_loc27_ && param2))
                                                                                    {
                                                                                       §§push(_loc22_);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(_loc20_);
                                                                                          if(_loc26_ || b2Collision)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc27_ && param3))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc27_ && param1))
                                                                                                {
                                                                                                   _loc22_ = §§pop();
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      addr578:
                                                                                                      §§push(_loc23_);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(_loc21_);
                                                                                                         if(!(_loc27_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc27_ && param3))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc26_ || b2Collision)
                                                                                                               {
                                                                                                                  addr605:
                                                                                                                  _loc23_ = §§pop();
                                                                                                                  addr606:
                                                                                                                  §§push(_loc22_);
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr630);
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(_loc13_);
                                                                                                            if(!(_loc27_ && param3))
                                                                                                            {
                                                                                                               addr627:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  addr630:
                                                                                                                  §§push(_loc23_);
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     addr633:
                                                                                                                     §§push(§§pop() * _loc14_);
                                                                                                                     if(!(_loc27_ && b2Collision))
                                                                                                                     {
                                                                                                                        addr642:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc26_ || b2Collision)
                                                                                                                        {
                                                                                                                           addr651:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr651);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc24_:* = §§pop();
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               §§goto(addr651);
                                                                                                            }
                                                                                                            §§goto(addr633);
                                                                                                         }
                                                                                                         §§goto(addr627);
                                                                                                      }
                                                                                                      §§goto(addr605);
                                                                                                   }
                                                                                                   §§goto(addr606);
                                                                                                }
                                                                                                §§goto(addr651);
                                                                                             }
                                                                                             §§goto(addr605);
                                                                                          }
                                                                                          §§goto(addr642);
                                                                                       }
                                                                                       §§goto(addr651);
                                                                                    }
                                                                                    §§goto(addr578);
                                                                                 }
                                                                                 §§goto(addr531);
                                                                              }
                                                                              §§goto(addr527);
                                                                           }
                                                                           §§goto(addr531);
                                                                        }
                                                                        §§goto(addr539);
                                                                     }
                                                                     §§goto(addr480);
                                                                  }
                                                                  §§goto(addr476);
                                                               }
                                                               §§goto(addr480);
                                                            }
                                                            §§goto(addr488);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                   §§goto(addr423);
                                                }
                                                §§goto(addr360);
                                             }
                                             §§goto(addr355);
                                          }
                                          §§goto(addr367);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr215);
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr142);
               }
               §§goto(addr129);
            }
            §§goto(addr94);
         }
         §§goto(addr105);
      }
      
      public static function §%!d§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§0y§);
         if(!(_loc26_ && b2Collision))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§6"!§;
         _loc9_ = param5.R;
         _loc8_ = param4.§&!3§;
         §§push(param5.position.x);
         if(!_loc26_)
         {
            §§push(_loc9_.col1.x);
            if(_loc27_ || param2)
            {
               §§push(_loc8_.x);
               if(_loc27_ || b2Collision)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_)
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
                  if(!_loc26_)
                  {
                     addr98:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(_loc27_ || param3)
                  {
                     §§push(_loc9_.col1.y);
                     if(_loc27_)
                     {
                        §§push(_loc8_.x);
                        if(_loc27_ || param2)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc27_ || param1)
                           {
                              addr132:
                              §§push(_loc9_.col2.y);
                              if(_loc27_ || param2)
                              {
                                 addr142:
                                 §§push(§§pop() * _loc8_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc26_ && b2Collision))
                           {
                              addr155:
                              var _loc11_:* = Number(§§pop());
                              _loc9_ = param3.R;
                              _loc8_ = param2.§&!3§;
                              if(_loc27_ || b2Collision)
                              {
                                 §§push(_loc10_);
                                 if(!_loc26_)
                                 {
                                    §§push(param3.position);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc26_)
                                       {
                                          §§push(_loc9_.col1);
                                          if(!(_loc26_ && param2))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc27_ || param1)
                                             {
                                                §§push(_loc8_.x);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc26_)
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(_loc27_ || param1)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc27_ || b2Collision)
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(_loc27_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc26_ && b2Collision))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc26_)
                                                                        {
                                                                           addr243:
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc26_)
                                                                           {
                                                                              addr246:
                                                                              _loc10_ = §§pop();
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr249:
                                                                                 §§push(_loc11_);
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    addr254:
                                                                                    §§push(param3.position.y);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(_loc9_.col1);
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          addr261:
                                                                                          §§push(§§pop().y);
                                                                                          if(!(_loc26_ && b2Collision))
                                                                                          {
                                                                                             addr269:
                                                                                             §§push(_loc8_.x);
                                                                                             if(!(_loc26_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc27_ || param2)
                                                                                                {
                                                                                                   addr288:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(!(_loc26_ && param2))
                                                                                                   {
                                                                                                      addr296:
                                                                                                      §§push(§§pop() * _loc8_.y);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      addr302:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr308:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               addr312:
                                                                                                               §§push(_loc10_);
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(param3.R.col1.x);
                                                                                                                  if(_loc27_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr326:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           addr337:
                                                                                                                           addr336:
                                                                                                                           addr335:
                                                                                                                           addr332:
                                                                                                                           §§push(§§pop() + §§pop() * param3.R.col1.y);
                                                                                                                           if(_loc26_ && param3)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(_loc27_ || param3)
                                                                                                                           {
                                                                                                                              §§push(param3.R.col2.x);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       addr367:
                                                                                                                                       §§push(§§pop() * param3.R.col2.y);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr376:
                                                                                                                                       var _loc13_:Number = §§pop();
                                                                                                                                       var _loc14_:* = 0;
                                                                                                                                       §§push(-Number.MAX_VALUE);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc15_:* = §§pop();
                                                                                                                                       var _loc16_:int = 0;
                                                                                                                                       while(_loc16_ < _loc6_)
                                                                                                                                       {
                                                                                                                                          §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_);
                                                                                                                                             if(_loc27_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_.y);
                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc13_);
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr423:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc26_ && param3))
                                                                                                                                                         {
                                                                                                                                                            addr431:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  addr437:
                                                                                                                                                                  _loc25_ = §§pop();
                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr446:
                                                                                                                                                                     addr445:
                                                                                                                                                                     if(§§pop() > _loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc25_);
                                                                                                                                                                        if(_loc27_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           addr458:
                                                                                                                                                                           _loc15_ = Number(§§pop());
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           if(_loc27_ || b2Collision)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr458);
                                                                                                                                                                     }
                                                                                                                                                                     _loc16_++;
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr446);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr458);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr445);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr446);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr423);
                                                                                                                                                }
                                                                                                                                                §§goto(addr431);
                                                                                                                                             }
                                                                                                                                             §§goto(addr437);
                                                                                                                                          }
                                                                                                                                          §§goto(addr458);
                                                                                                                                       }
                                                                                                                                       §§push(§`"&§(param2,param3,_loc14_,param4,param5));
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc17_:* = §§pop();
                                                                                                                                       if(_loc27_ || b2Collision)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(_loc27_ || b2Collision)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                             if(!(_loc26_ && param3))
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= 0)
                                                                                                                                                {
                                                                                                                                                   addr514:
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                      if(!(_loc26_ && param3))
                                                                                                                                                      {
                                                                                                                                                         addr525:
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                         if(!(_loc26_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr556:
                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                            addr533:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr538:
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                         if(_loc27_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr556);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      var _loc18_:* = §§pop();
                                                                                                                                                      §§push(§`"&§(param2,param3,_loc18_,param4,param5));
                                                                                                                                                      if(!(_loc26_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc19_:* = §§pop();
                                                                                                                                                      if(_loc27_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc27_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(!(_loc26_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < _loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr608:
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(_loc27_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        addr618:
                                                                                                                                                                        §§push(int(§§pop() + 1));
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           addr625:
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr625);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  var _loc20_:* = §§pop();
                                                                                                                                                                  §§push(§`"&§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                                  if(!(_loc26_ && b2Collision))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc21_:* = §§pop();
                                                                                                                                                                  if(!_loc26_)
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
                                                                                                                                                                           loop3:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop4:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    loop5:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                          addr1109:
                                                                                                                                                                                          while(!(_loc26_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          addr841:
                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                          if(_loc26_ && b2Collision)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc27_ || param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop3;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         loop44:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                               loop43:
                                                                                                                                                                                                               while(!(_loc26_ && b2Collision))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  loop42:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc27_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop31:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                                                                 addr922:
                                                                                                                                                                                                                                 loop32:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc26_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc26_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                                                                                                                   loop20:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop21:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§`"&§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                               loop22:
                                                                                                                                                                                                                                                               while(_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  loop23:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop42;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        if(_loc27_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                                                                                                                    addr754:
                                                                                                                                                                                                                                                                                    loop25:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1081:
                                                                                                                                                                                                                                                                                             if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr699:
                                                                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop25;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                                                                                                                            addr699:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop20;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop14:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               addr1099:
                                                                                                                                                                                                                                                                                                               addr1105:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                  break loop20;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1105:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop14;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1060:
                                                                                                                                                                                                                                                                                                         loop50:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            addr1061:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr1062:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr973:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                        if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break loop43;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1026:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                           addr1027:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                              addr1028:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1032:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                    addr1033:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr724:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     loop49:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1066:
                                                                                                                                                                                                                                                                                                                        addr1067:
                                                                                                                                                                                                                                                                                                                        _loc22_ = int(§§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                           continue loop50;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1083:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break loop49;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop49;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1119:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(-1);
                                                                                                                                                                                                                                                                                                                        addr1120:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr1121:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                              addr1103:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                 break loop32;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      return §§pop();
                                                                                                                                                                                                                                                                                                      addr802:
                                                                                                                                                                                                                                                                                                      addr1037:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                      addr1031:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1032);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break loop25;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop31;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr996:
                                                                                                                                                                                                                                                                                                   while(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1066);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr917:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop25;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1081:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc26_ && param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                                                                if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      return §§pop();
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr699);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1062);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1027);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr802);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop5;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr724);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1105);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr996);
                                                                                                                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1042:
                                                                                                                                                                                                                                                                                             if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr973);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1037);
                                                                                                                                                                                                                                                                                                §§goto(addr1042);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1057:
                                                                                                                                                                                                                                                                                             addr711:
                                                                                                                                                                                                                                                                                             addr993:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr699);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr802);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                       §§goto(addr1083);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1109);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1119);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1081);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 param1[0] = _loc14_;
                                                                                                                                                                                                                                                                                 §§goto(addr1057);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1080:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr754);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1099);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop42;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1079:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1080);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1023:
                                                                                                                                                                                                                                                      while(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1026);
                                                                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1121);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr973);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr958:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1120);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1103);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1032);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1033);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc22_ = §§pop();
                                                                                                                                                                                                                                    §§goto(addr1105);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1026);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr922);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1031);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     if(_loc26_ && b2Collision)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop44;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(1);
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(!(_loc26_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr841);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop1;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr893);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr993);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr885:
                                                                                                                                                                                                               §§goto(addr1061);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1028);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1067);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr958);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr917);
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                             }
                                                                                                                                                                                             loop37:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1030);
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1023);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1118:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1079);
                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1119);
                                                                                                                                                                                                   continue loop37;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop5;
                                                                                                                                                                                             addr1013:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1013);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1118);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1081);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr618);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr625);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr608);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr538);
                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr556);
                                                                                                                                             }
                                                                                                                                             §§goto(addr525);
                                                                                                                                          }
                                                                                                                                          §§goto(addr533);
                                                                                                                                       }
                                                                                                                                       §§goto(addr514);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr376);
                                                                                                                              }
                                                                                                                              §§goto(addr367);
                                                                                                                           }
                                                                                                                           §§goto(addr376);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr337);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr337);
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr337);
                                                                                                   }
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                                §§goto(addr302);
                                                                                             }
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr302);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr337);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr337);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr243);
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr155);
               }
               §§goto(addr91);
            }
            §§goto(addr81);
         }
         §§goto(addr98);
      }
      
      public static function §^!e§(param1:Vector.<§6"1§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§6"1§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§0y§);
         if(!(_loc25_ && b2Collision))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§6"!§;
         §§push(param5.§0y§);
         if(_loc24_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§@"2§;
         var _loc11_:Vector.<b2Vec2> = param5.§6"!§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!_loc25_)
         {
            §§push(_loc13_.x);
            if(_loc24_ || b2Collision)
            {
               addr108:
               §§push(§§pop() * §§pop());
               if(_loc24_ || param2)
               {
                  §§push(_loc12_.col2.x);
                  if(!(_loc25_ && param2))
                  {
                     §§push(§§pop() * _loc13_.y);
                  }
               }
               var _loc14_:Number = §§pop();
               §§push(_loc12_.col1.y);
               if(_loc24_ || param2)
               {
                  §§push(_loc13_.x);
                  if(!(_loc25_ && b2Collision))
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc25_ && param2))
                     {
                        §§push(_loc12_.col2.y);
                        if(!(_loc25_ && param2))
                        {
                           addr147:
                           §§push(§§pop() * _loc13_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc25_)
                        {
                           addr153:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc15_:* = §§pop();
                     §§push((_loc12_ = param6.R).col1.x);
                     if(!(_loc25_ && b2Collision))
                     {
                        §§push(_loc14_);
                        if(!_loc25_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc24_)
                           {
                              §§push(_loc12_.col1.y);
                              if(_loc24_ || param1)
                              {
                                 addr187:
                                 §§push(§§pop() + §§pop() * _loc15_);
                                 if(!(_loc25_ && param2))
                                 {
                                    addr195:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr187);
                           }
                           var _loc16_:* = §§pop();
                           if(_loc24_ || param1)
                           {
                              §§push(_loc12_.col2.x);
                              if(_loc24_ || param3)
                              {
                                 §§push(_loc14_);
                                 if(_loc24_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc25_)
                                    {
                                       §§push(_loc12_.col2.y);
                                       if(_loc24_ || param1)
                                       {
                                          addr230:
                                          §§push(§§pop() * _loc15_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc25_ && b2Collision))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc25_ && param2)
                                          {
                                          }
                                          addr255:
                                          _loc14_ = §§pop();
                                          addr256:
                                          var _loc17_:* = 0;
                                          var _loc18_:Number = Number.MAX_VALUE;
                                          var _loc19_:int = 0;
                                          while(true)
                                          {
                                             §§push(_loc19_);
                                             if(!(_loc25_ && param1))
                                             {
                                                §§push(_loc9_);
                                                if(!_loc25_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(_loc17_);
                                                      if(_loc24_)
                                                      {
                                                         break;
                                                      }
                                                      addr370:
                                                      §§push(§§pop());
                                                   }
                                                   else
                                                   {
                                                      _loc13_ = _loc11_[_loc19_];
                                                      if(!_loc25_)
                                                      {
                                                         §§push(_loc14_);
                                                         if(!_loc25_)
                                                         {
                                                            §§push(_loc13_.x);
                                                            if(_loc24_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc25_ && param2))
                                                               {
                                                                  §§push(_loc15_);
                                                                  if(!_loc25_)
                                                                  {
                                                                     addr312:
                                                                     §§push(§§pop() * _loc13_.y);
                                                                     if(!_loc25_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc25_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc24_ || param3)
                                                                           {
                                                                              addr328:
                                                                              §§push(§§pop());
                                                                              if(!(_loc25_ && b2Collision))
                                                                              {
                                                                                 addr336:
                                                                                 _loc23_ = §§pop();
                                                                                 if(!(_loc25_ && param2))
                                                                                 {
                                                                                    addr345:
                                                                                    if(§§pop() < _loc18_)
                                                                                    {
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             addr352:
                                                                                             _loc18_ = §§pop();
                                                                                          }
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          addr287:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc19_);
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                             _loc17_ = §§pop();
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                addr274:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc19_++;
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      break loop3;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                              §§goto(addr345);
                                                                           }
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr345);
                                                                  }
                                                                  §§goto(addr336);
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr345);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                }
                                                var _loc21_:* = §§pop();
                                                if(_loc24_ || b2Collision)
                                                {
                                                   §§push(1);
                                                   if(!(_loc25_ && param3))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc25_)
                                                      {
                                                         if(§§pop() < _loc9_)
                                                         {
                                                            §§push(_loc21_);
                                                            if(_loc24_)
                                                            {
                                                               addr398:
                                                               addr397:
                                                               §§push(int(§§pop() + 1));
                                                               if(!(_loc25_ && param1))
                                                               {
                                                                  addr406:
                                                               }
                                                               addr425:
                                                               §§push(int(§§pop()));
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            if(_loc24_ || param1)
                                                            {
                                                               §§goto(addr425);
                                                            }
                                                         }
                                                         var _loc22_:* = §§pop();
                                                         _loc20_ = param1[0];
                                                         _loc13_ = _loc10_[_loc21_];
                                                         _loc12_ = param6.R;
                                                         if(_loc24_)
                                                         {
                                                            §§push(_loc20_.v);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(param6.position);
                                                               addr602:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc25_)
                                                                  {
                                                                     §§push(_loc12_.col1);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc24_)
                                                                        {
                                                                           §§push(_loc13_.x);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr613:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc12_.col2);
                                                                                 addr615:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc25_ && b2Collision))
                                                                                    {
                                                                                       §§push(_loc13_.y);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr561:
                                                                                          §§push(_loc13_.y);
                                                                                          if(_loc25_ && param3)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr627:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr628:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr626:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr626);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr627);
                                                                        addr528:
                                                                        §§push(_loc12_.col1);
                                                                        if(_loc25_ && param3)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        if(!_loc25_)
                                                                        {
                                                                           §§push(_loc13_.x);
                                                                           if(!(_loc25_ && param1))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc24_)
                                                                              {
                                                                                 addr552:
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(_loc12_.col2);
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          §§goto(addr561);
                                                                                       }
                                                                                       §§goto(addr571);
                                                                                    }
                                                                                    §§goto(addr615);
                                                                                 }
                                                                                 §§goto(addr627);
                                                                              }
                                                                              §§goto(addr581);
                                                                           }
                                                                           §§goto(addr561);
                                                                        }
                                                                        §§goto(addr552);
                                                                     }
                                                                  }
                                                                  §§goto(addr628);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr510);
                                                      }
                                                      §§goto(addr398);
                                                   }
                                                   §§goto(addr397);
                                                }
                                                §§goto(addr406);
                                             }
                                             break;
                                          }
                                          §§goto(addr370);
                                          §§push(int(§§pop()));
                                          addr254:
                                       }
                                       _loc15_ = §§pop();
                                       if(!_loc25_)
                                       {
                                          addr251:
                                          §§push(_loc16_);
                                          if(_loc24_)
                                          {
                                             §§goto(addr254);
                                          }
                                          §§goto(addr255);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr255);
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr147);
               }
               §§goto(addr153);
            }
            §§push(§§pop() + §§pop());
            if(!_loc24_)
            {
            }
         }
         §§goto(addr108);
      }
      
      private static function §&!`§() : Vector.<§6"1§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§6"1§> = new Vector.<§6"1§>(2);
         if(_loc3_)
         {
            _loc1_[0] = new §6"1§();
         }
         do
         {
            _loc1_[1] = new §6"1§();
         }
         while(!(_loc3_ || b2Collision));
         
         return _loc1_;
      }
      
      public static function §]!1§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§6"1§ = null;
         var _loc12_:b2PolygonShape = null;
         var _loc13_:b2PolygonShape = null;
         var _loc14_:b2Transform = null;
         var _loc15_:b2Transform = null;
         var _loc16_:* = 0;
         var _loc17_:uint = 0;
         var _loc20_:b2Mat22 = null;
         var _loc25_:b2Vec2 = null;
         var _loc39_:int = 0;
         var _loc42_:Number = NaN;
         var _loc43_:b2ManifoldPoint = null;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         if(!(_loc46_ && param1))
         {
            param1.§^M§ = 0;
         }
         var _loc7_:Number = param2.§%I§ + param4.§%I§;
         var _loc8_:* = 0;
         if(_loc47_)
         {
            §%L§[0] = _loc8_;
         }
         §§push(§%!d§(§%L§,param2,param3,param4,param5));
         if(_loc47_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc47_ || param1)
         {
            §§push(int(§%L§[0]));
            if(!(_loc46_ && param1))
            {
               _loc8_ = §§pop();
               if(_loc47_)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(!_loc46_)
                     {
                        §§goto(addr121);
                     }
                  }
               }
               §§push(0);
            }
            var _loc10_:* = §§pop();
            if(_loc47_)
            {
               §]@§[0] = _loc10_;
            }
            §§push(§%!d§(§]@§,param4,param5,param2,param3));
            if(!(_loc46_ && param3))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc47_)
            {
               _loc10_ = int(§]@§[0]);
               if(_loc47_ || param2)
               {
                  §§push(_loc11_);
                  if(!_loc46_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(_loc47_ || param1)
                        {
                           return;
                        }
                        addr173:
                        §§push(0.98);
                        if(!(_loc46_ && param3))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr173);
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!_loc46_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(!(_loc46_ && param1))
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(_loc47_ || b2Collision)
                     {
                        §§push(_loc9_);
                        if(!(_loc46_ && param3))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc46_ && b2Collision))
                           {
                              addr221:
                              §§push(§§pop() + _loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr223:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(_loc47_ || param1)
                              {
                                 §§push(_loc10_);
                                 loop18:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop19:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                       addr281:
                                       while(true)
                                       {
                                          addr272:
                                          while(true)
                                          {
                                             param1.§<";§ = b2Manifold.§#[§;
                                             addr277:
                                             while(true)
                                             {
                                                §§push(1);
                                                if(_loc46_ && param2)
                                                {
                                                   break;
                                                }
                                                continue loop18;
                                             }
                                             continue loop19;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr270);
                           }
                           else
                           {
                              _loc12_ = param2;
                              _loc13_ = param4;
                              _loc14_ = param3;
                              _loc15_ = param5;
                              if(_loc47_ || param1)
                              {
                                 §§push(_loc8_);
                                 if(!(_loc46_ && param1))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    addr336:
                                    while(true)
                                    {
                                       addr320:
                                       while(true)
                                       {
                                          param1.§<";§ = b2Manifold.§;1§;
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr318);
                           }
                        }
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr223);
               }
            }
            §§goto(addr173);
         }
         addr121:
      }
      
      public static function §[!l§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc16_)
         {
            param1.§^M§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§ m§;
         §§push(param3.position.x);
         if(_loc17_)
         {
            §§push(_loc6_.col1.x);
            if(_loc17_)
            {
               §§push(_loc7_.x);
               if(_loc17_)
               {
                  addr67:
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     §§push(_loc6_.col2.x);
                     if(_loc17_ || param1)
                     {
                        §§push(§§pop() * _loc7_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_)
                  {
                     addr70:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc17_)
                  {
                     §§push(_loc6_.col1.y);
                     if(!(_loc16_ && b2Collision))
                     {
                        §§push(_loc7_.x);
                        if(_loc17_ || b2Collision)
                        {
                           addr108:
                           §§push(§§pop() * §§pop());
                           if(_loc17_)
                           {
                              §§push(_loc6_.col2.y);
                              if(_loc17_)
                              {
                                 §§push(§§pop() * _loc7_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc16_ && b2Collision))
                           {
                              addr117:
                              var _loc9_:Number = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§ m§;
                              §§push(param5.position.x);
                              if(!(_loc16_ && param1))
                              {
                                 §§push(_loc6_.col1.x);
                                 if(!_loc16_)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc17_)
                                    {
                                       addr162:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc16_ && param3))
                                       {
                                          §§push(_loc6_.col2.x);
                                          if(_loc17_)
                                          {
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc16_)
                                       {
                                          addr165:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(param5.position.y);
                                       if(_loc17_ || b2Collision)
                                       {
                                          §§push(_loc6_.col1.y);
                                          if(_loc17_)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc17_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc17_)
                                                {
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr209);
                                          }
                                          addr213:
                                          §§push(_loc6_.col2.y);
                                          if(_loc17_ || param2)
                                          {
                                             addr209:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(!_loc16_)
                                          {
                                             addr216:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc11_:* = §§pop();
                                          §§push(_loc10_);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop() - _loc8_);
                                             if(_loc17_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc12_:* = §§pop();
                                          §§push(_loc11_);
                                          if(!_loc16_)
                                          {
                                             §§push(§§pop() - _loc9_);
                                             if(!(_loc16_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc13_:* = §§pop();
                                          §§push(_loc12_);
                                          if(!(_loc16_ && param2))
                                          {
                                             §§push(_loc12_);
                                             if(!(_loc16_ && param3))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc13_);
                                                   if(!(_loc16_ && b2Collision))
                                                   {
                                                      addr273:
                                                      §§push(§§pop() * _loc13_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc17_ || param1)
                                                   {
                                                   }
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr273);
                                          }
                                          addr284:
                                          var _loc14_:Number = §§pop();
                                          var _loc15_:Number = param2.§%I§ + param4.§%I§;
                                          if(!_loc16_)
                                          {
                                             §§push(_loc14_);
                                             §§push(_loc15_);
                                             if(_loc17_)
                                             {
                                                §§push(§§pop() * _loc15_);
                                             }
                                             if(§§pop() <= §§pop())
                                             {
                                                loop0:
                                                while(true)
                                                {
                                                   param1.§<";§ = b2Manifold.§9M§;
                                                   loop1:
                                                   while(true)
                                                   {
                                                      param1.m_localPoint.SetV(param2.§ m§);
                                                      loop2:
                                                      do
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         param1.§%C§.§;v§();
                                                         while(true)
                                                         {
                                                            param1.§^M§ = 1;
                                                            for(; _loc17_; while(_loc17_ || param1)
                                                            {
                                                               if(_loc17_ || b2Collision)
                                                               {
                                                                  param1.§1!d§[0].m_id.key = 0;
                                                                  if(_loc17_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  continue;
                                                                  continue;
                                                               }
                                                               continue loop0;
                                                            })
                                                            {
                                                               if(_loc17_)
                                                               {
                                                                  param1.§1!d§[0].m_localPoint.SetV(param4.§ m§);
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(_loc16_ && param2);
                                                      
                                                      §§goto(addr316);
                                                   }
                                                }
                                             }
                                             return;
                                          }
                                          addr316:
                                          return;
                                       }
                                       §§goto(addr216);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr117);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr117);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr67);
         }
         §§goto(addr70);
      }
      
      public static function §>!2§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
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
         var _loc33_:Number = NaN;
         if(!(_loc35_ && b2Collision))
         {
            param1.§^M§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§ m§;
         §§push(param5.position.x);
         if(_loc34_)
         {
            §§push(_loc12_.col1.x);
            if(!_loc35_)
            {
               §§push(_loc11_.x);
               if(!_loc35_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc35_)
                  {
                     addr76:
                     §§push(_loc12_.col2.x);
                     if(_loc34_ || param3)
                     {
                        addr86:
                        §§push(§§pop() * _loc11_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc35_)
                  {
                     addr94:
                     var _loc13_:Number = §§pop();
                     §§push(param5.position.y);
                     if(!(_loc35_ && param3))
                     {
                        §§push(_loc12_.col1.y);
                        if(_loc34_ || param1)
                        {
                           §§push(_loc11_.x);
                           if(!(_loc35_ && param1))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc35_)
                              {
                                 addr127:
                                 §§push(_loc12_.col2.y);
                                 if(_loc34_)
                                 {
                                    addr135:
                                    §§push(§§pop() + §§pop() * _loc11_.y);
                                 }
                                 §§goto(addr135);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc34_ || param2)
                              {
                                 addr144:
                                 §§push(Number(§§pop()));
                              }
                              var _loc14_:* = §§pop();
                              if(!_loc35_)
                              {
                                 §§push(_loc13_);
                                 if(!_loc35_)
                                 {
                                    §§push(param3.position);
                                    if(_loc34_ || param1)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc34_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc35_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc34_)
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc34_)
                                                {
                                                   §§push(_loc14_);
                                                   if(!_loc35_)
                                                   {
                                                      addr183:
                                                      §§push(§§pop() - param3.position.y);
                                                      if(_loc34_ || param1)
                                                      {
                                                         addr191:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr191);
                                                }
                                                addr193:
                                                _loc12_ = param3.R;
                                                §§push(_loc7_);
                                                if(!_loc35_)
                                                {
                                                   §§push(_loc12_.col1.x);
                                                   if(_loc34_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc35_ && param3))
                                                      {
                                                         addr213:
                                                         §§push(_loc8_);
                                                         if(_loc34_ || param1)
                                                         {
                                                            addr221:
                                                            §§push(§§pop() * _loc12_.col1.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc35_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc15_:* = §§pop();
                                                      §§push(_loc7_);
                                                      if(_loc34_ || param1)
                                                      {
                                                         §§push(_loc12_.col2.x);
                                                         if(!(_loc35_ && param3))
                                                         {
                                                            §§goto(addr267);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc34_ || param3)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      addr267:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc34_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(_loc34_)
                                                         {
                                                            §§push(§§pop() * _loc12_.col2.y);
                                                         }
                                                      }
                                                      var _loc16_:* = §§pop();
                                                      var _loc18_:* = 0;
                                                      §§push(-Number.MAX_VALUE);
                                                      if(!(_loc35_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc19_:* = §§pop();
                                                      var _loc20_:Number = param2.§%I§ + param4.§%I§;
                                                      §§push(param2.§0y§);
                                                      if(!_loc35_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      var _loc21_:* = §§pop();
                                                      var _loc22_:Vector.<b2Vec2> = param2.§@"2§;
                                                      var _loc23_:Vector.<b2Vec2> = param2.§6"!§;
                                                      var _loc24_:int = 0;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(_loc24_);
                                                         if(_loc34_ || param3)
                                                         {
                                                            §§push(_loc21_);
                                                            if(_loc34_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §§push(_loc18_);
                                                                  if(!(_loc35_ && param1))
                                                                  {
                                                                     addr513:
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  §§push(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  _loc11_ = _loc22_[_loc24_];
                                                                  if(!_loc35_)
                                                                  {
                                                                     §§push(_loc15_);
                                                                     if(_loc34_)
                                                                     {
                                                                        §§push(_loc11_.x);
                                                                        if(_loc34_ || param1)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc34_ || param3)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc34_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    addr340:
                                                                                    §§push(_loc16_);
                                                                                    if(_loc34_ || param1)
                                                                                    {
                                                                                       addr350:
                                                                                       §§push(§§pop() - _loc11_.y);
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                       }
                                                                                       addr354:
                                                                                       _loc8_ = §§pop();
                                                                                       §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                       if(_loc34_ || param3)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc35_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc34_ || param3)
                                                                                             {
                                                                                                §§push(_loc11_.y);
                                                                                                if(!(_loc35_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop() * _loc8_);
                                                                                                   if(!(_loc35_ && param2))
                                                                                                   {
                                                                                                      addr398:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc35_ && param2))
                                                                                                         {
                                                                                                            addr409:
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc34_ || param3)
                                                                                                            {
                                                                                                               addr417:
                                                                                                               _loc31_ = §§pop();
                                                                                                               if(_loc34_ || param1)
                                                                                                               {
                                                                                                                  addr425:
                                                                                                                  §§push(_loc20_);
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        if(_loc34_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr482:
                                                                                                                        §§push(_loc31_);
                                                                                                                        if(_loc34_ || param2)
                                                                                                                        {
                                                                                                                           addr490:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        _loc19_ = §§pop();
                                                                                                                        loop1:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr458:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc24_);
                                                                                                                              if(_loc34_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              loop3:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr440:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc24_++;
                                                                                                                                    if(!(_loc35_ && param2))
                                                                                                                                    {
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr492:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc31_);
                                                                                                                        if(_loc34_ || param2)
                                                                                                                        {
                                                                                                                           addr479:
                                                                                                                           if(§§pop() > _loc19_)
                                                                                                                           {
                                                                                                                              if(!_loc35_)
                                                                                                                              {
                                                                                                                                 §§goto(addr482);
                                                                                                                              }
                                                                                                                              §§goto(addr492);
                                                                                                                           }
                                                                                                                           §§goto(addr440);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr490);
                                                                                                                  }
                                                                                                                  §§goto(addr479);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr479);
                                                                                                         }
                                                                                                         §§goto(addr425);
                                                                                                      }
                                                                                                      §§goto(addr479);
                                                                                                   }
                                                                                                   §§goto(addr417);
                                                                                                }
                                                                                                §§goto(addr479);
                                                                                             }
                                                                                             §§goto(addr409);
                                                                                          }
                                                                                          §§goto(addr398);
                                                                                       }
                                                                                       §§goto(addr425);
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr354);
                                                                        }
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr340);
                                                               }
                                                            }
                                                            var _loc25_:* = §§pop();
                                                            if(_loc34_)
                                                            {
                                                               §§push(1);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc34_ || param1)
                                                                  {
                                                                     if(§§pop() < _loc21_)
                                                                     {
                                                                        addr545:
                                                                        §§push(_loc25_);
                                                                        if(!_loc35_)
                                                                        {
                                                                           addr536:
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        var _loc26_:* = §§pop();
                                                                        var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                        var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                        if(_loc34_ || param1)
                                                                        {
                                                                           §§push(_loc19_);
                                                                           if(!_loc35_)
                                                                           {
                                                                              if(§§pop() < Number.MIN_VALUE)
                                                                              {
                                                                                 addr698:
                                                                                 param1.§^M§ = 1;
                                                                                 param1.§<";§ = b2Manifold.§;1§;
                                                                                 addr689:
                                                                                 if(!_loc35_)
                                                                                 {
                                                                                    param1.§%C§.SetV(_loc23_[_loc18_]);
                                                                                    addr681:
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       addr672:
                                                                                       param1.m_localPoint.x = 0.5 * (_loc27_.x + _loc28_.x);
                                                                                       addr673:
                                                                                       addr671:
                                                                                       addr670:
                                                                                       addr668:
                                                                                       addr666:
                                                                                       §§push(param1.m_localPoint);
                                                                                       if(!(_loc35_ && param3))
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          if(_loc34_ || param1)
                                                                                          {
                                                                                             if(!_loc35_)
                                                                                             {
                                                                                                §§push(_loc27_.y);
                                                                                                if(_loc34_ || param1)
                                                                                                {
                                                                                                   if(!_loc35_)
                                                                                                   {
                                                                                                      §§push(_loc28_.y);
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         addr650:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            addr653:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc35_ && param3))
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               param1.§1!d§[0].m_localPoint.SetV(param4.§ m§);
                                                                                                               addr661:
                                                                                                               if(!(_loc35_ && param3))
                                                                                                               {
                                                                                                                  addr577:
                                                                                                                  param1.§1!d§[0].m_id.key = 0;
                                                                                                                  if(_loc34_)
                                                                                                                  {
                                                                                                                     if(!(_loc35_ && param3))
                                                                                                                     {
                                                                                                                        if(!_loc34_)
                                                                                                                        {
                                                                                                                           §§goto(addr681);
                                                                                                                        }
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§goto(addr673);
                                                                                                                  }
                                                                                                                  §§goto(addr661);
                                                                                                               }
                                                                                                               §§goto(addr689);
                                                                                                            }
                                                                                                            §§goto(addr672);
                                                                                                         }
                                                                                                         §§goto(addr671);
                                                                                                      }
                                                                                                      §§goto(addr670);
                                                                                                   }
                                                                                                   §§goto(addr668);
                                                                                                }
                                                                                                §§goto(addr650);
                                                                                             }
                                                                                             §§goto(addr666);
                                                                                          }
                                                                                          §§goto(addr653);
                                                                                       }
                                                                                       addr665:
                                                                                       §§goto(addr665);
                                                                                    }
                                                                                    §§goto(addr698);
                                                                                 }
                                                                                 addr701:
                                                                                 §§goto(addr701);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr702:
                                                                                 §§push(_loc15_);
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    §§push(_loc27_.x);
                                                                                    if(_loc34_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          §§push(_loc28_.x);
                                                                                          if(!(_loc35_ && param1))
                                                                                          {
                                                                                             §§push(_loc27_.x);
                                                                                             if(_loc34_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc35_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc34_ || b2Collision)
                                                                                                   {
                                                                                                      addr746:
                                                                                                      §§push(_loc16_);
                                                                                                      if(!(_loc35_ && param2))
                                                                                                      {
                                                                                                         addr754:
                                                                                                         §§push(_loc27_.y);
                                                                                                         if(!(_loc35_ && b2Collision))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc34_)
                                                                                                            {
                                                                                                               §§push(_loc28_.y);
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr774:
                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                               if(_loc34_ || param1)
                                                                                                               {
                                                                                                                  addr783:
                                                                                                                  var _loc29_:Number = §§pop();
                                                                                                                  §§push(_loc15_);
                                                                                                                  if(_loc34_)
                                                                                                                  {
                                                                                                                     §§push(_loc28_.x);
                                                                                                                     if(_loc34_ || b2Collision)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc34_)
                                                                                                                        {
                                                                                                                           §§push(_loc27_.x);
                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc28_.x);
                                                                                                                              if(_loc34_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc34_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(!_loc34_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr856:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc35_)
                                                                                                                                       {
                                                                                                                                          addr859:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc30_:* = §§pop();
                                                                                                                                       if(_loc34_)
                                                                                                                                       {
                                                                                                                                          addr1609:
                                                                                                                                          if(_loc29_ > 0)
                                                                                                                                          {
                                                                                                                                             §§push(_loc30_);
                                                                                                                                             if(_loc34_ || param1)
                                                                                                                                             {
                                                                                                                                                if(§§pop() > 0)
                                                                                                                                                {
                                                                                                                                                   addr1314:
                                                                                                                                                   §§push(0.5);
                                                                                                                                                   §§push(_loc27_.x);
                                                                                                                                                   §§push(_loc28_.x);
                                                                                                                                                   if(_loc34_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(_loc34_)
                                                                                                                                                      {
                                                                                                                                                         addr1328:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc34_ || b2Collision)
                                                                                                                                                         {
                                                                                                                                                            addr1336:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc35_)
                                                                                                                                                            {
                                                                                                                                                               addr1339:
                                                                                                                                                               _loc32_ = §§pop();
                                                                                                                                                               addr1340:
                                                                                                                                                               §§push(0.5);
                                                                                                                                                               §§push(_loc27_.y);
                                                                                                                                                               if(_loc34_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc35_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc34_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr1267:
                                                                                                                                                                           §§push(_loc28_.y);
                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc34_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc34_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1293:
                                                                                                                                                                                          §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc35_ && b2Collision))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1304:
                                                                                                                                                                                                _loc33_ = §§pop();
                                                                                                                                                                                                addr1305:
                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                      if(_loc34_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc35_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc34_ || b2Collision)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc34_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc32_);
                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc34_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              if(_loc34_ || b2Collision)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1113:
                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                                    if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc35_ && param3))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc34_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc33_);
                                                                                                                                                                                                                                                      if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1159:
                                                                                                                                                                                                                                                            if(_loc34_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc34_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1182:
                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1187:
                                                                                                                                                                                                                                                                              if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1209:
                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                addr1212:
                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1219:
                                                                                                                                                                                                                                                                                                         if(§§pop() <= _loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1049:
                                                                                                                                                                                                                                                                                                            param1.§^M§ = 1;
                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               param1.§<";§ = b2Manifold.§;1§;
                                                                                                                                                                                                                                                                                                               addr1044:
                                                                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1011:
                                                                                                                                                                                                                                                                                                                     §§push(param1.§%C§);
                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                                                                                              addr1027:
                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr986:
                                                                                                                                                                                                                                                                                                                                       §§push(param1.§%C§);
                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                                                                                          addr993:
                                                                                                                                                                                                                                                                                                                                          if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(param1.§%C§);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§pop().Normalize();
                                                                                                                                                                                                                                                                                                                                                         addr967:
                                                                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                                                                                                                              addr925:
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       param1.§1!d§[0].m_localPoint.SetV(param4.§ m§);
                                                                                                                                                                                                                                                                                                                                                                                       addr900:
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             param1.§1!d§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc34_ || b2Collision))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr900);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr864);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1531);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr993);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr925);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    param1.§1!d§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                                                    addr864:
                                                                                                                                                                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                                                                                                                                                                    addr1558:
                                                                                                                                                                                                                                                                                                                                                                                    addr1548:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1044);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr967);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1562:
                                                                                                                                                                                                                                                                                                                                                                           §§pop().SetV(_loc27_);
                                                                                                                                                                                                                                                                                                                                                                           param1.§1!d§[0].m_localPoint.SetV(param4.§ m§);
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1558);
                                                                                                                                                                                                                                                                                                                                                                           addr1564:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        addr1365:
                                                                                                                                                                                                                                                                                                                                                                        §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           param1.§1!d§[0].m_localPoint.SetV(param4.§ m§);
                                                                                                                                                                                                                                                                                                                                                                           param1.§1!d§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                                           addr1349:
                                                                                                                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1485:
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc15_ - _loc28_.x);
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1500:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1503:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1508:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - _loc28_.y);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1648:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr1518:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1529);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr1642:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc27_.y);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   if(§§pop() + §§pop() * (§§pop() - §§pop()) > _loc20_ * _loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1653);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1603);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr1635:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1640:
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1642);
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc27_.y);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1640);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1529);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1648);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr1612:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1632:
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1635);
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc27_.x);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1640);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1529);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr864);
                                                                                                                                                                                                                                                                                                                                                                           addr1361:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        if(_loc34_ || param2)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1587);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1596);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1548);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1305);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1049);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1365);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1027);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1435);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1453);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr986);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1568);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1220:
                                                                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1611:
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1612);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1361);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1562);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1011);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1653:
                                                                                                                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1466);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1376);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1591);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1582);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1340);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1049);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1420);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1220);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1648);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1314);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1304);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1642);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1219);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1640);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1336);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1212);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1529);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1212);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1314);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1209);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1485);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1508);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1529);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1209);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1267);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1648);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1529);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1293);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1182);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1632);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1187);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1339);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1212);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1648);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1485);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1503);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1159);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1485);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1339);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1293);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1113);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1607);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1349);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1609);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1485);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1642);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1648);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1508);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1529);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1314);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1632);
                                                                                                                                                                     }
                                                                                                                                                                     addr1529:
                                                                                                                                                                     if(§§pop() + §§pop() * §§pop() <= _loc20_ * _loc20_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1462:
                                                                                                                                                                        param1.§^M§ = 1;
                                                                                                                                                                        param1.§<";§ = b2Manifold.§;1§;
                                                                                                                                                                        addr1459:
                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1435:
                                                                                                                                                                           §§push(param1.§%C§);
                                                                                                                                                                           §§push(_loc15_ - _loc28_.x);
                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc35_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    addr1453:
                                                                                                                                                                                    §§push(param1.§%C§);
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc35_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc34_ || b2Collision)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc28_.y);
                                                                                                                                                                                                if(!(_loc35_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc35_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1420:
                                                                                                                                                                                                         §§pop().y = §§pop() - §§pop();
                                                                                                                                                                                                         if(!(_loc35_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1373:
                                                                                                                                                                                                            §§push(param1.§%C§);
                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().Normalize();
                                                                                                                                                                                                               addr1376:
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1365);
                                                                                                                                                                                                                  §§push(param1.m_localPoint);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1453);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1568:
                                                                                                                                                                                                            §§pop().Normalize();
                                                                                                                                                                                                            if(_loc34_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1603:
                                                                                                                                                                                                                  param1.§^M§ = 1;
                                                                                                                                                                                                                  param1.§<";§ = b2Manifold.§;1§;
                                                                                                                                                                                                                  addr1595:
                                                                                                                                                                                                                  param1.§%C§.x = _loc15_ - _loc27_.x;
                                                                                                                                                                                                                  addr1586:
                                                                                                                                                                                                                  param1.§%C§.y = _loc16_ - _loc27_.y;
                                                                                                                                                                                                                  §§goto(addr1568);
                                                                                                                                                                                                                  §§push(param1.§%C§);
                                                                                                                                                                                                                  addr1602:
                                                                                                                                                                                                                  addr1594:
                                                                                                                                                                                                                  addr1585:
                                                                                                                                                                                                                  addr1592:
                                                                                                                                                                                                                  addr1583:
                                                                                                                                                                                                                  addr1587:
                                                                                                                                                                                                                  addr1596:
                                                                                                                                                                                                                  addr1591:
                                                                                                                                                                                                                  addr1582:
                                                                                                                                                                                                                  addr1607:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1562);
                                                                                                                                                                                                               §§push(param1.m_localPoint);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1602);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1459);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1594);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1585);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1435);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1595);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1435);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1420);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1592);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1583);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1586);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1564);
                                                                                                                                                                        addr1466:
                                                                                                                                                                     }
                                                                                                                                                                     addr1531:
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1328);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1293);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1500);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1609);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1648);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1518);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1485);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1611);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1603);
                                                                                                                                    }
                                                                                                                                    §§goto(addr859);
                                                                                                                                 }
                                                                                                                                 §§push(_loc28_.y);
                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc27_.y);
                                                                                                                                       if(_loc35_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr855:
                                                                                                                                       §§goto(addr856);
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr856);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() - _loc28_.y);
                                                                                                                              }
                                                                                                                              §§goto(addr855);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr859);
                                                                                                                     }
                                                                                                                     §§goto(addr856);
                                                                                                                  }
                                                                                                                  §§goto(addr859);
                                                                                                               }
                                                                                                               §§goto(addr783);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr774);
                                                                                                         §§push(§§pop() - _loc27_.y);
                                                                                                      }
                                                                                                      §§goto(addr774);
                                                                                                   }
                                                                                                   §§goto(addr783);
                                                                                                }
                                                                                                §§goto(addr754);
                                                                                             }
                                                                                             §§goto(addr774);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr746);
                                                                                    }
                                                                                    §§goto(addr754);
                                                                                 }
                                                                                 §§goto(addr783);
                                                                              }
                                                                           }
                                                                           §§goto(addr746);
                                                                        }
                                                                        else if(false)
                                                                        {
                                                                           §§goto(addr577);
                                                                        }
                                                                        §§goto(addr702);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc34_)
                                                                        {
                                                                           addr544:
                                                                           §§goto(addr545);
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        §§goto(addr545);
                                                                     }
                                                                  }
                                                                  §§push(int(§§pop()));
                                                                  if(_loc34_)
                                                                  {
                                                                     §§goto(addr544);
                                                                  }
                                                                  §§goto(addr545);
                                                               }
                                                               §§goto(addr536);
                                                            }
                                                            §§goto(addr545);
                                                         }
                                                         §§goto(addr513);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr213);
                                             }
                                             _loc8_ = §§pop();
                                             §§goto(addr193);
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr94);
               }
               §§goto(addr86);
            }
            §§goto(addr76);
         }
         §§goto(addr94);
      }
      
      public static function §3§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = param2.§!8§;
         var _loc4_:b2Vec2 = param1.§,f§;
         §§push(_loc3_.x);
         if(!_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc10_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc9_)
         {
            §§push(§§pop() - _loc4_.y);
            if(!_loc10_)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§!8§;
            _loc4_ = param2.§,f§;
            §§push(_loc3_.x);
            if(!(_loc10_ && param1))
            {
               §§push(§§pop() - _loc4_.x);
               if(_loc9_)
               {
                  addr73:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(_loc3_.y);
               if(!_loc10_)
               {
                  §§push(§§pop() - _loc4_.y);
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               if(!(_loc10_ && param2))
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
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr221:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr199:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr200:
                                          while(true)
                                          {
                                             if(!(_loc9_ || param2))
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() > §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr220:
                              }
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(false);
                                       }
                                       else
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             addr159:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                loop9:
                                                for(; !(_loc10_ && param2); §§push(_loc8_),if(!_loc9_)
                                                {
                                                   continue;
                                                },§§push(0),if(_loc9_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr125);
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                   §§goto(addr200);
                                                },§§goto(addr171))
                                                {
                                                   if(_loc10_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(0);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      while(true)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc10_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(false);
                                                                        break;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     addr104:
                                                                     §§push(true);
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!(_loc9_ || b2Collision))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           addr178:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                           }
                                                                        }
                                                                        continue loop2;
                                                                        addr125:
                                                                     }
                                                                     if(!_loc10_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr220);
                                                                     §§goto(addr221);
                                                                  }
                                                                  while(!(_loc10_ && b2Collision))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               §§goto(addr104);
                                                            }
                                                            if(_loc9_ || param1)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                §§goto(addr199);
                                             }
                                          }
                                       }
                                       addr213:
                                       return §§pop();
                                    }
                                    §§goto(addr159);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr221);
            }
            §§goto(addr73);
         }
         §§goto(addr49);
      }
   }
}
